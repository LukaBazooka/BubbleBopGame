using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DetectPlayer : MonoBehaviour
{
    public float visionRange = 10f; // How far the enemy can see
    public Transform rayOrigin;    // The starting point for the raycast (e.g., enemy's eyes)

    public PlayerController playerControls;

    public SpotlightScript spotlight;

    private void Update()
    {
        if (spotlight.playerDetected) {
            KillPlayer();
        }
    }

    private void KillPlayer()
    {
        // Add your player-kill logic here
        Debug.Log("Player has been killed!");
        playerControls.enabled = false;
    }

    private void OnDrawGizmosSelected()
    {
        // Visualize the raycast in the scene view for debugging
        if (rayOrigin != null)
        {
            Gizmos.color = Color.red;
            Gizmos.DrawRay(rayOrigin.position, rayOrigin.forward * visionRange);
        }
    }
}
