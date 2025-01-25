using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LaserOrigin : MonoBehaviour
{
    public Transform laserOrigin; // Start position of the primary laser
    public float maxLaserDistance = 50f; // Maximum distance of the laser
    public LayerMask hitLayerMask; // Layers the laser can hit
    public ParticleSystem impactParticles; // Particle system for laser impact

    private LineRenderer lineRenderer;

    void Start()
    {
        // Get the LineRenderer component
        lineRenderer = GetComponent<LineRenderer>();
        if (lineRenderer == null)
        {
            Debug.LogError("LineRenderer component not found!");
        }

        // Ensure the particle system is initially disabled
        if (impactParticles != null)
        {
            impactParticles.Stop();
        }
    }

    void Update()
    {
        // Update the primary laser visuals
        UpdateLaser();
    }

    void UpdateLaser()
    {
        // Set the starting point of the laser
        lineRenderer.SetPosition(0, laserOrigin.position);

        // Perform a raycast to detect what the laser hits
        RaycastHit hit;
        Vector3 direction = laserOrigin.forward;

        if (Physics.Raycast(laserOrigin.position, direction, out hit, maxLaserDistance, hitLayerMask))
        {
            // If the laser hits something, set the endpoint to the hit point
            lineRenderer.SetPosition(1, hit.point);

            // Activate and position the particle system at the hit point
            if (impactParticles != null)
            {
                impactParticles.transform.position = hit.point;
                impactParticles.transform.forward = hit.normal; // Orient the particles to the surface normal
                if (!impactParticles.isPlaying)
                {
                    impactParticles.Play();
                }
            }

            // Check if the object hit is in the "Bubble" layer
            if (hit.collider.gameObject.layer == LayerMask.NameToLayer("Bubble"))
            {
                // Activate the LaserOrigin script on the Bubble object (if it exists)
                LaserOrigin bubbleLaser = hit.collider.GetComponent<LaserOrigin>();
                if (bubbleLaser != null)
                {
                    bubbleLaser.enabled = true;
                }
            }
        }
        else
        {
            // If the laser doesn't hit anything, set the endpoint to the maximum distance
            lineRenderer.SetPosition(1, laserOrigin.position + direction * maxLaserDistance);

            // Deactivate the particle system
            if (impactParticles != null && impactParticles.isPlaying)
            {
                impactParticles.Stop();
            }
        }
    }
}
