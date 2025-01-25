using UnityEngine;

public class BodyController : MonoBehaviour
{
    public Transform[] bones; // 1D array of bone transforms
    public int[] groupStartIndices; // Start index of each group in the bones array
    private Vector3[] originalPositions; // Store original local positions
    private float tiltAngle; // Current tilt angle
    public float maxOffset = 0.5f; // Maximum offset for sway
    public float resetSpeed = 2.0f; // Speed to reset to base position
    private bool isVertical = false; // Track vertical state

    // Capture original positions at start
    void Start()
    {
        originalPositions = new Vector3[bones.Length];
        for (int i = 0; i < bones.Length; i++)
        {
            originalPositions[i] = bones[i].localPosition;
        }
    }

    // Set the tilt angle from PlayerController
    public void SetTiltAngle(float angle)
    {
        tiltAngle = angle;
    }

    // Toggle vertical pose for bones
    public void SetVerticalPose(bool vertical)
    {
        isVertical = vertical;
    }

    // Update is called once per frame
    void Update()
    {
        Vector3 movementDirection = CalculateMovementDirection(); // Calculate movement direction
        RotateModelTowards(movementDirection); // Rotate model to face movement direction

        for (int groupIndex = 0; groupIndex < groupStartIndices.Length; groupIndex++)
        {
            int start = groupStartIndices[groupIndex];
            int end = (groupIndex < groupStartIndices.Length - 1) ? groupStartIndices[groupIndex + 1] : bones.Length;

            for (int i = start; i < end; i++)
            {
                float delayFactor = Mathf.Pow(groupIndex, 2) * 0.075f; // Exponential delay factor
                float adjustedAngle = tiltAngle + 90; // Adjust for 90-degree offset
                Vector3 localOffset = new Vector3(
                    Mathf.Sin(adjustedAngle * Mathf.Deg2Rad) * maxOffset,
                    0,
                    Mathf.Cos(adjustedAngle * Mathf.Deg2Rad) * maxOffset // Invert Z component
                ) * delayFactor;

                // Calculate target position relative to original position and player's forward direction
                Vector3 targetPosition = originalPositions[i] + transform.TransformDirection(localOffset);
                Vector3 newPosition = bones[i].localPosition;

                if (isVertical)
                {
                    // Reset to original position
                    newPosition.x = Mathf.Lerp(newPosition.x, originalPositions[i].x, Time.deltaTime * resetSpeed);
                    newPosition.z = Mathf.Lerp(newPosition.z, originalPositions[i].z, Time.deltaTime * resetSpeed);
                }
                else
                {
                    // Move towards target position relative to original
                    newPosition.x = Mathf.Lerp(newPosition.x, targetPosition.x, Time.deltaTime * resetSpeed);
                    newPosition.z = Mathf.Lerp(newPosition.z, targetPosition.z, Time.deltaTime * resetSpeed);
                }

                bones[i].localPosition = newPosition;
            }
        }
    }

    // Calculate the movement direction based on input or other logic
    private Vector3 CalculateMovementDirection()
    {
        // Example: Use input to determine direction
        float horizontal = Input.GetAxis("Horizontal");
        float vertical = Input.GetAxis("Vertical");
        return new Vector3(horizontal, 0, vertical).normalized;
    }

    // Rotate the model to face the given direction
    private void RotateModelTowards(Vector3 direction)
    {
        if (direction.sqrMagnitude > 0.01f) // Check if there's significant movement
        {
            Quaternion targetRotation = Quaternion.LookRotation(direction);
            transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, Time.deltaTime * resetSpeed);
        }
    }
} 