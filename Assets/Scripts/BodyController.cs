using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BodyController : MonoBehaviour
{
    public Transform[] spheres; // Array of sphere transforms
    private float tiltAngle; // Current tilt angle
    public float maxOffset = 0.5f; // Maximum offset for sway
    public float resetSpeed = 2.0f; // Speed to reset to base position
    private bool isVertical = false; // Track vertical state

    // Set the tilt angle from PlayerController
    public void SetTiltAngle(float angle)
    {
        tiltAngle = angle;
    }

    // Toggle vertical pose for spheres
    public void SetVerticalPose(bool vertical)
    {
        isVertical = vertical;
    }

    // Update is called once per frame
    void Update()
    {
        for (int i = 0; i < spheres.Length; i++)
        {
            float delayFactor = Mathf.Pow(i, 2) * 0.075f; // Exponential delay factor
            float adjustedAngle = tiltAngle + 90; // Adjust for 90-degree offset
            float targetOffsetX = Mathf.Sin(adjustedAngle * Mathf.Deg2Rad) * maxOffset;
            float targetOffsetZ = -Mathf.Cos(adjustedAngle * Mathf.Deg2Rad) * maxOffset;
            Vector3 newPosition = spheres[i].localPosition;

            if (isVertical)
            {
                // Immediately start resetting to vertical
                newPosition.x = Mathf.Lerp(newPosition.x, 0, Time.deltaTime * resetSpeed);
                newPosition.z = Mathf.Lerp(newPosition.z, 0, Time.deltaTime * resetSpeed);
            }
            else
            {
                // Move towards target offset with delay
                newPosition.x = Mathf.Lerp(newPosition.x, targetOffsetX * delayFactor, Time.deltaTime * resetSpeed);
                newPosition.z = Mathf.Lerp(newPosition.z, targetOffsetZ * delayFactor, Time.deltaTime * resetSpeed);
            }

            spheres[i].localPosition = newPosition;
        }
    }

    // Draw gizmos to visualise tilt and direction
    void OnDrawGizmos()
    {
        if (spheres == null) return;

        Gizmos.color = Color.red;
        foreach (var sphere in spheres)
        {
            // Draw a line representing the tilt direction
            Vector3 direction = Quaternion.Euler(0, tiltAngle, 0) * Vector3.right;
            Gizmos.DrawLine(sphere.position, sphere.position + direction * maxOffset);
        }
    }
}
