using UnityEngine;
using System;
using System.Collections;

public class BodyController : MonoBehaviour
{
    private Animator animator; // Reference to the Animator component
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
    public bool hidden = true;
    public bool forceShown = false;
    private Renderer bubbleGuyRenderer;
    private Material bubbleGuyMaterial;
    private Coroutine fadeCoroutine;
    private bool isHitByRay = false; // Flag to track ray hits

    // Capture original positions at start
    void Start()
    {
        // Find the "T-Pose" child first
        Transform tPoseChild = transform.Find("T-Pose");
        if (tPoseChild != null)
        {
            animator = tPoseChild.GetComponent<Animator>();

            // Now find "bubbleGuy_geo" under "T-Pose"
            Transform bubbleGuyGeo = tPoseChild.Find("bubbleGuy_geo");
            if (bubbleGuyGeo != null)
            {
                bubbleGuyRenderer = bubbleGuyGeo.GetComponent<Renderer>();
                if (bubbleGuyRenderer != null)
                {
                    bubbleGuyMaterial = bubbleGuyRenderer.material;
                }
            }
        }

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
        Transform bubbleGuyGeo = transform.Find("T-Pose/bubbleGuy_geo");
        if (bubbleGuyGeo != null)
        {
            bubbleGuyGeo.gameObject.SetActive(!hidden);
        }

        if (!isHitByRay && !forceShown)
        {
            hidden = true;
        }

        if (hidden)
        {
            bubbleGuyRenderer.material.SetFloat("_Add_Alpha", -0.6f);
        }
        else
        {
            bubbleGuyRenderer.material.SetFloat("_Add_Alpha", 0.2f);
        }

        Vector3 movementDirection = CalculateMovementDirection(); // Calculate movement direction
        bool currentlyMoving = movementDirection.sqrMagnitude > 0.01f;

        if (currentlyMoving)
        {
            if (!isMoving)
            {
                isMoving = true;
                isVertical = false; // Disable vertical state when moving
            }
            animator.SetBool("Walking", true); // Set Walking to true
        }
        else if (isMoving)
        {
            isMoving = false;
            stopTime = Time.time; // Record the time when movement stopped
            isVertical = true; // Immediately transition to idle wobble
            animator.SetBool("Walking", false); // Set Walking to false
        }

        RotateModelTowards(movementDirection); // Rotate model to face movement direction

        // Apply procedural effects only when idle
        if (isVertical)
        {
            ApplyProceduralEffects();
        }
        else
        {
            ApplyMovementEffects(movementDirection);
        }

        // Reset the flag for the next frame
        isHitByRay = false;
    }

    private void ApplyProceduralEffects()
    {
        for (int groupIndex = 0; groupIndex < groupStartIndices.Length; groupIndex++)
        {
            int start = groupStartIndices[groupIndex];
            int end = (groupIndex < groupStartIndices.Length - 1) ? groupStartIndices[groupIndex + 1] : bones.Length;

            for (int i = start; i < end; i++)
            {
                // Store current animated state
                Vector3 currentLocalPosition = bones[i].localPosition;

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

                Vector3 newPosition = currentLocalPosition; // Start with current animated position

                if (isVertical)
                {
                    // Overshoot and recovery with exponential decay
                    float elapsedTime = Time.time - stopTime;
                    float overshoot = Mathf.Sin(elapsedTime * wobbleFrequency + i) * wobbleAmplitude * Mathf.Exp(-elapsedTime * (1 - wobbleDecay));
                    float easingFactor = 1 - Mathf.Exp(-resetSpeed * Time.deltaTime); // Exponential easing
                    newPosition.x += Mathf.Lerp(0, originalPositions[i].x + overshoot - currentLocalPosition.x, easingFactor);
                    newPosition.z += Mathf.Lerp(0, originalPositions[i].z + overshoot - currentLocalPosition.z, easingFactor);
                }
                else
                {
                    // Move towards target position relative to original
                    newPosition.x += Mathf.Lerp(0, targetPosition.x - currentLocalPosition.x, Time.deltaTime * resetSpeed);
                    newPosition.z += Mathf.Lerp(0, targetPosition.z - currentLocalPosition.z, Time.deltaTime * resetSpeed);
                }

                // Apply additive transformation
                bones[i].localPosition = currentLocalPosition + (newPosition - currentLocalPosition);
            }
        }
    }

    private void ApplyMovementEffects(Vector3 movementDirection)
    {
        for (int groupIndex = 0; groupIndex < groupStartIndices.Length; groupIndex++)
        {
            int start = groupStartIndices[groupIndex];
            int end = (groupIndex < groupStartIndices.Length - 1) ? groupStartIndices[groupIndex + 1] : bones.Length;

            for (int i = start; i < end; i++)
            {
                // Store current animated state
                Vector3 currentLocalPosition = bones[i].localPosition;

                float delayFactor = Mathf.Pow(groupIndex, 2) * 0.075f; // Exponential delay factor
                float adjustedAngle = tiltAngle + 90; // Adjust for 90-degree offset
                Vector3 localOffset = new Vector3(
                    Mathf.Sin(adjustedAngle * Mathf.Deg2Rad) * maxOffset,
                    0,
                    Mathf.Cos(adjustedAngle * Mathf.Deg2Rad) * maxOffset
                ) * delayFactor;

                // Calculate target position relative to original position and player's forward direction
                Vector3 targetPosition = originalPositions[i] + transform.TransformDirection(localOffset);

                // Apply movement offset
                Vector3 newPosition = currentLocalPosition + (targetPosition - currentLocalPosition) * Time.deltaTime * resetSpeed;

                // Apply additive transformation
                bones[i].localPosition = currentLocalPosition + (newPosition - currentLocalPosition);
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

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("SpotlightRay")) // Ensure the rays have this tag
        {
            hidden = false;
            isHitByRay = true;
        }
    }

    public void SetHidden(bool state)
    {
        hidden = state;
        isHitByRay = !state; // Update the flag based on ray hit
    }
} 