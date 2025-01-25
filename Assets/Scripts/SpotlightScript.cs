using UnityEngine;
using System.Collections;

public class SpotlightScript : MonoBehaviour
{
    private Light spotlight; // Reference to the spotlight
    public float detectionRange = 200f; // Range of the light detection
    public int numberOfRays = 50; // Total number of rays
    public float angleOffset = 15f; // Maximum angle offset for side rays

    void Start()
    {
        // Get the Light component attached to the same GameObject
        spotlight = GetComponent<Light>();
        StartCoroutine(CastRays());
    }

    void Update()
    {
        // Calculate the angle step between each ray
        float angleStep = (angleOffset * 2) / (numberOfRays - 1);

        for (int i = 0; i < numberOfRays; i++)
        {
            // Calculate the current angle for this ray
            float currentAngle = -angleOffset + (angleStep * i);
            Vector3 direction = Quaternion.Euler(0, currentAngle, 0) * spotlight.transform.forward;

            // Cast the ray
            CastRay(direction);
        }
    }

    void CastRay(Vector3 direction)
    {
        RaycastHit hit;
        Vector3 startPosition = spotlight.transform.position;

        if (Physics.Raycast(startPosition, direction, out hit, detectionRange))
        {
            // Check if the ray hit the player
            if (hit.collider.CompareTag("Player"))
            {
                BodyController player = hit.collider.GetComponent<BodyController>();
                if (player != null)
                {
                    player.hidden = false;
                }
            }

            // Visualise the ray up to the collision point
            Debug.DrawRay(startPosition, direction * hit.distance, Color.red);
        }
        else
        {
            // Visualise the full ray length if no collision
            Debug.DrawRay(startPosition, direction * detectionRange, Color.red);
        }
    }

    IEnumerator CastRays()
    {
        while (true)
        {
            // Cast your rays here
            // ...

            yield return new WaitForSeconds(0.1f); // Adjust the delay as needed
        }
    }
}
