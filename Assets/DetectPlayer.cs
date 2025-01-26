using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DetectPlayer : MonoBehaviour
{
    public float visionRange = 10f; // How far the enemy can see
    public Transform rayOrigin;    // The starting point for the raycast (e.g., enemy's eyes)

    public PlayerController playerControls;
    public BodyController bodyControls;

    public SpotlightScript spotlight;

    public GameObject player;
    public float duration = 2f;
    public RandomMovement randomMovt;

    private Animator animator; // Reference to the Animator component

    private void Start()
    {
        // Get the Animator component attached to this GameObject
        animator = GetComponent<Animator>();
        if (animator == null)
        {
            Debug.LogWarning("No Animator component found on this GameObject.");
        }
    }

    private void Update()
    {
        if (spotlight.playerDetected)
        {
            KillPlayer();
        }
    }

    private void KillPlayer()
    {
        Debug.Log("Player has been killed!");
        playerControls.enabled = false;
        bodyControls.enabled = false;
        randomMovt.enabled = false;
        StartCoroutine(MoveTowardsPlayer());
    }

    private IEnumerator MoveTowardsPlayer()
    {
        Vector3 startPosition = transform.position;
        Vector3 targetPosition = player.transform.position;

        float elapsedTime = 0f;

        while (elapsedTime < duration)
        {
            transform.position = Vector3.Lerp(startPosition, targetPosition, elapsedTime / duration);
            elapsedTime += Time.deltaTime;
            yield return null;
        }

        transform.position = targetPosition;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            Debug.Log("Player entered trigger!");

            if (animator != null)
            {
                animator.SetTrigger("Attack");
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
