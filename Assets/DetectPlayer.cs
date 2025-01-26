using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DetectPlayer : MonoBehaviour
{
    public float visionRange = 10f; // How far the enemy can see
    public Transform rayOrigin;    // The starting point for the raycast (e.g., enemy's eyes)

    public PlayerController playerControls;

    private void Update()
    {
        DetectPlayerDeath();
    }

    private void DetectPlayerDeath()
    {
        // Raycast from the enemy's position forward
        RaycastHit hit;
        if (Physics.Raycast(rayOrigin.position, rayOrigin.forward, out hit, visionRange))
        {
            // Check if the ray hit the player
            if (hit.collider.gameObject.layer == LayerMask.NameToLayer("Player"))
            {
                // Player detected, call KillPlayer
                KillPlayer();
            }
            else if (hit.collider.gameObject.layer == LayerMask.NameToLayer("Walls"))
            {
                // Ray hits a wall, player is not detected
                Debug.Log("Player hidden behind a wall!");
            }
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
