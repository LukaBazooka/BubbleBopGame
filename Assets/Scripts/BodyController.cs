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
    public float noiseScale = 0.01f; // Scale of the noise effect
    public float noiseSpeed = 0.5f; // Speed of the noise effect
    public float wobbleAmplitude = 0.02f; // Amplitude of the wobble
    public float wobbleFrequency = 2.0f; // Frequency of the wobble
    public float wobbleDecay = 0.98f; // Decay factor for the wobble
    private bool isMoving = false; // Track if the player is moving
    private float stopTime; // Time when movement stopped

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
        bool currentlyMoving = movementDirection.sqrMagnitude > 0.01f;

        if (currentlyMoving)
        {
            if (!isMoving)
            {
                isMoving = true;
                isVertical = false; // Disable vertical state when moving
            }
        }
        else if (isMoving)
        {
            isMoving = false;
            stopTime = Time.time; // Record the time when movement stopped
            isVertical = true; // Immediately transition to idle wobble
        }

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
                    Mathf.Cos(adjustedAngle * Mathf.Deg2Rad) * maxOffset
                ) * delayFactor;

                // Calculate target position relative to original position and player's forward direction
                Vector3 targetPosition = originalPositions[i] + transform.TransformDirection(localOffset);

                // Add Perlin noise for subtle wiggly effect
                float noiseX = (Mathf.PerlinNoise(Time.time * noiseSpeed + i, 0) - 0.5f) * noiseScale;
                float noiseZ = (Mathf.PerlinNoise(0, Time.time * noiseSpeed + i) - 0.5f) * noiseScale;
                targetPosition.x += noiseX;
                targetPosition.z += noiseZ;

                Vector3 newPosition = bones[i].localPosition;

                if (isVertical)
                {
                    // Overshoot and recovery with exponential easing
                    float elapsedTime = Time.time - stopTime;
                    float overshoot = Mathf.Sin(elapsedTime * wobbleFrequency + i) * wobbleAmplitude * Mathf.Exp(-elapsedTime * (1 - wobbleDecay));
                    float easingFactor = 1 - Mathf.Exp(-resetSpeed * Time.deltaTime); // Exponential easing
                    newPosition.x = Mathf.Lerp(newPosition.x, originalPositions[i].x + overshoot, easingFactor);
                    newPosition.z = Mathf.Lerp(newPosition.z, originalPositions[i].z + overshoot, easingFactor);
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