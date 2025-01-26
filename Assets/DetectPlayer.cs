using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI; // Ensure you have this namespace for NavMeshAgent

public class DetectPlayer : MonoBehaviour
{
    public float visionRange = 10f; // How far the enemy can see
    public Transform rayOrigin;    // The starting point for the raycast (e.g., enemy's eyes)

    private PlayerController playerControls;

    public SpotlightScript spotlight;

    private GameObject player;
    private BodyController playerBody;
    public float duration = 2f;
    public RandomMovement randomMovt;

    private Animator animator; // Reference to the Animator component
    private NavMeshAgent navAgent; // Reference to the NavMeshAgent component
    private bool canSeePlayer = false; // This determines if the player is in the enemy's vision

    private void Start()
    {
        // Get the Animator component attached to this GameObject
        animator = GetComponent<Animator>();
        if (animator == null)
        {
            Debug.LogWarning("No Animator component found on this GameObject.");
        }

        navAgent = GetComponent<NavMeshAgent>();
        if (navAgent == null)
        {
            Debug.LogWarning("No NavMeshAgent component found on this GameObject.");
        }

        // Find the player object by tag
        player = GameObject.FindWithTag("Player");
        if (player == null)
        {
            Debug.LogWarning("No GameObject with tag 'Player' found in the scene.");
        }

        playerBody = player.GetComponent<BodyController>();
        playerControls = player.transform.parent.GetComponent<PlayerController>();
    }

    private void Update()
    {
        if (spotlight.playerDetected)
        {
            canSeePlayer = true;
        }
        else {
            canSeePlayer = false;
        }
    }

    // Move towards the player if they are not hidden
    private void FixedUpdate() {
        if (!playerBody.hidden && Vector3.Distance(transform.position, player.transform.position) < 40f) {
            navAgent.SetDestination(player.transform.position);
        }
    }

    private void KillPlayer()
    {
        if (!playerBody.dead) {
            Debug.Log("Player has been killed!");
            playerBody.dead = true;
            playerControls.enabled = false;
            playerBody.enabled = false;
            randomMovt.enabled = false;
            // StartCoroutine(MoveTowardsPlayer());
        }
    }

    // private IEnumerator MoveTowardsPlayer()
    // {
    //     Vector3 startPosition = transform.position;
    //     Vector3 targetPosition = player.transform.position;

    //     float elapsedTime = 0f;

    //     while (elapsedTime < duration)
    //     {
    //         transform.position = Vector3.Lerp(startPosition, targetPosition, elapsedTime / duration);
    //         elapsedTime += Time.deltaTime;
    //         yield return null;
    //     }

    //     transform.position = targetPosition;
    // }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            Debug.Log("Player entered trigger!");

            // If the player is in the enemy's vision and within range, kill the player
            if (animator != null && canSeePlayer)
            {
                if (navAgent != null)
                {
                    navAgent.velocity = Vector3.zero; // Stop movement
                }

                // Rotate to face the player
                transform.LookAt(player.transform.position);

                KillPlayer();
                animator.SetTrigger("Attack");

                if (navAgent != null)
                {
                    navAgent.enabled = true; // Re-enable NavMeshAgent if needed
                }
            }
            else
            {
                Debug.LogWarning("Animator component is missing. Cannot trigger animation.");
            }
        }
    }

    private void OnDrawGizmosSelected()
    {
        if (rayOrigin != null)
        {
            Gizmos.color = Color.red;
            Gizmos.DrawRay(rayOrigin.position, rayOrigin.forward * visionRange);
        }
    }
}
