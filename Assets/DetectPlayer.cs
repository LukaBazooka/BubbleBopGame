using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.SceneManagement;

public class DetectPlayer : MonoBehaviour
{
    public float visionRange = 10f; 
    public Transform rayOrigin;  

    private PlayerController playerControls;

    public SpotlightScript spotlight;

    private GameObject player;
    private BodyController playerBody;
    public float duration = 2f;
    public RandomMovement randomMovt;
    public GameObject popEffect;

    private Animator animator;
    private NavMeshAgent navAgent; 
    private bool canSeePlayer = false;

    public GameObject exclamationMark;
    public GameObject questionMark;

    public GameObject deathUI;

    public AudioSource deathAudio;

    private void Start()
    {
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

      //  if (canSeePlayer)
      //  {
      //      questionMark.SetActive(true);
      //  }
      //  else
      //  {
      //      questionMark.SetActive(false);
      //  }
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
                questionMark.SetActive(false);
                exclamationMark.SetActive(true);

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

    public void StartDeathStuff()
    {
        player.SetActive(false);
        Instantiate(popEffect, player.transform);
        deathUI.SetActive(true);
        deathAudio.Play();
    }

    public void RetryScene()
    {
        // Get the currently active scene
        Scene currentScene = SceneManager.GetActiveScene();

        // Reload the current scene
        SceneManager.LoadScene(currentScene.name);
    }

    public void QuitToMenu()
    {
        SceneManager.LoadScene("MainMenu");
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
