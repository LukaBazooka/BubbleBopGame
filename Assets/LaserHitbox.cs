using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LaserHitbox : MonoBehaviour
{
    public LineRenderer lineRenderer; // Assign in the Inspector or dynamically
    public LayerMask playerLayer;    // Define what layers the laser can hit

    private BoxCollider laserCollider;

    void Start()
    {
        // Create a BoxCollider if one doesn’t exist
        laserCollider = gameObject.AddComponent<BoxCollider>();
        laserCollider.isTrigger = true; // Set to trigger so it doesn't physically interact
    }

    void Update()
    {
        UpdateCollider();
    }

    void UpdateCollider()
    {
        if (lineRenderer.positionCount < 2) return;

        // Get start and end points from LineRenderer
        Vector3 startPos = lineRenderer.GetPosition(0);
        Vector3 endPos = lineRenderer.GetPosition(1);

        // Calculate center and direction
        Vector3 direction = endPos - startPos;
        Vector3 center = (startPos + endPos) / 2;

        // Update the BoxCollider
        laserCollider.transform.position = center;
        laserCollider.transform.rotation = Quaternion.LookRotation(direction);
        laserCollider.size = new Vector3(0.1f, 0.1f, direction.magnitude); // Adjust width/thickness
    }

    void OnTriggerEnter(Collider other)
    {
        if ((playerLayer.value & 1 << other.gameObject.layer) != 0)
        {
            // Apply damage or effects to the player
            Debug.Log("Player hit by laser!");
        }
    }
}
