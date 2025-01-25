using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LaserOrigin : MonoBehaviour
{
    public Transform laserOrigin; // Start position of the laser
    public float maxLaserDistance = 50f; // Maximum distance of the laser
    public LayerMask hitLayerMask; // Layers the laser can hit
    public LayerMask bubbleLayerMask; // Layer mask for bubbles
    public GameObject impactParticles; // GameObject for laser impact particles

    private LineRenderer lineRenderer;
    private GameObject lastHitBubble = null; // Keep track of the last bubble hit by the laser

    void Start()
    {
        // Get the LineRenderer component
        lineRenderer = GetComponent<LineRenderer>();
        if (lineRenderer == null)
        {
            Debug.LogError("LineRenderer component not found!");
        }

        // Ensure the particle system GameObject is initially disabled
        if (impactParticles != null)
        {
            impactParticles.SetActive(false);
        }
    }

    void Update()
    {
        // Update the laser visuals
        UpdateLaser();
    }

    void UpdateLaser()
    {
        // Set the starting point of the laser
        lineRenderer.SetPosition(0, laserOrigin.position);

        // Perform a raycast to detect what the laser hits
        RaycastHit hit;
        Vector3 direction = laserOrigin.forward;

        bool hitSomething = false;

        // Check for collisions with objects in the main hitLayerMask
        if (Physics.Raycast(laserOrigin.position, direction, out hit, maxLaserDistance, hitLayerMask))
        {
            hitSomething = true;
        }

        // Check for collisions with objects in the bubbleLayerMask
        RaycastHit bubbleHit;
        if (Physics.Raycast(laserOrigin.position, direction, out bubbleHit, maxLaserDistance, bubbleLayerMask))
        {
            if (!hitSomething || bubbleHit.distance < hit.distance)
            {
                hit = bubbleHit;
                hitSomething = true;

                // Enable the LaserOrigin, LineRenderer, impact particles, and bubble light on the bubble
                EnableBubbleLaser(bubbleHit.collider.gameObject);
            }
        }
        else
        {
            // If no bubble is hit, disable the last active bubble laser and its components
            DisableLastBubbleLaser();
        }

        if (hitSomething)
        {
            // If the laser hits something, set the endpoint to the hit point
            lineRenderer.SetPosition(1, hit.point);

            // Activate and position the particle system GameObject at the hit point
            if (impactParticles != null)
            {
                impactParticles.transform.position = hit.point;
                impactParticles.transform.forward = hit.normal; // Orient the particles to the surface normal
                if (!impactParticles.activeSelf)
                {
                    impactParticles.SetActive(true);
                }
            }
        }
        else
        {
            // If the laser doesn't hit anything, set the endpoint to the maximum distance
            lineRenderer.SetPosition(1, laserOrigin.position + direction * maxLaserDistance);

            // Deactivate the particle system GameObject
            if (impactParticles != null && impactParticles.activeSelf)
            {
                impactParticles.SetActive(false);
            }

            // Ensure the last bubble laser is disabled
            DisableLastBubbleLaser();
        }
    }

    void EnableBubbleLaser(GameObject bubble)
    {
        // If this is a new bubble, enable it and deactivate the last one
        if (lastHitBubble != bubble)
        {
            DisableLastBubbleLaser(); // Disable the previously hit bubble

            // Get the LaserOrigin, LineRenderer, BubbleLight, and ParticleSystem GameObject on the bubble
            LaserOrigin bubbleLaserOrigin = bubble.GetComponent<LaserOrigin>();
            LineRenderer bubbleLineRenderer = bubble.GetComponent<LineRenderer>();
            GameObject bubbleParticles = bubble.GetComponentInChildren<ParticleSystem>()?.gameObject;
            GameObject bubbleLight = bubble.transform.Find("BubbleLight")?.gameObject; // Find BubbleLight in the bubble hierarchy

            if (bubbleLaserOrigin != null && bubbleLineRenderer != null)
            {
                // Enable the LaserOrigin and LineRenderer
                bubbleLaserOrigin.enabled = true;
                bubbleLineRenderer.enabled = true;

                // Enable the particle system GameObject on the bubble
                if (bubbleParticles != null)
                {
                    bubbleParticles.SetActive(true);
                }

                // Enable the BubbleLight GameObject
                if (bubbleLight != null)
                {
                    bubbleLight.SetActive(true);
                }

                // Update the last hit bubble
                lastHitBubble = bubble;
            }
        }
    }

    void DisableLastBubbleLaser()
    {
        if (lastHitBubble != null)
        {
            // Get the LaserOrigin, LineRenderer, BubbleLight, and ParticleSystem GameObject on the last hit bubble
            LaserOrigin bubbleLaserOrigin = lastHitBubble.GetComponent<LaserOrigin>();
            LineRenderer bubbleLineRenderer = lastHitBubble.GetComponent<LineRenderer>();
            GameObject bubbleParticles = lastHitBubble.GetComponentInChildren<ParticleSystem>()?.gameObject;
            GameObject bubbleLight = lastHitBubble.transform.Find("BubbleLight")?.gameObject; // Find BubbleLight in the bubble hierarchy

            if (bubbleLaserOrigin != null && bubbleLineRenderer != null)
            {
                // Disable the LaserOrigin and LineRenderer
                bubbleLaserOrigin.enabled = false;
                bubbleLineRenderer.enabled = false;
            }

            // Disable the particle system GameObject on the bubble
            if (bubbleParticles != null)
            {
                bubbleParticles.SetActive(false);
            }

            // Disable the BubbleLight GameObject
            if (bubbleLight != null)
            {
                bubbleLight.SetActive(false);
            }

            // Clear the last hit bubble reference
            lastHitBubble = null;
        }
    }
}
