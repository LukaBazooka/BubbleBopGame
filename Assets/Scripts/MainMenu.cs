using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenu : MonoBehaviour
{
    public float walkSpeed = 5.0f; // Speed at which the character walks
    public Vector3 targetPosition; // Target position for the character to walk to
    public Animator animator; // Reference to the Animator component

    private bool isWalking = false; // Track whether the character is walking

    public GameObject targetObject;

    public void ShowTarget()
    {
        if (targetObject != null)
        {
            targetObject.SetActive(true);
        }
    }

    public void HideTarget()
    {
        if (targetObject != null)
        {
            targetObject.SetActive(false); // Enable the GameObject
        }
    }

    public void Quit()
    {
        // Quit the application
        Application.Quit();
    }

        void Start()
    {
        // Ensure the character starts with the idle animation
        if (animator != null)
        {
            animator.Play("breathing"); // Replace "Idle" with the actual idle animation state name
        }
    }

    public void OnPlayButtonPressed()
    {
        // Set the target position and start walking
        targetPosition = new Vector3(Screen.width, transform.position.y, transform.position.z); // Modify as needed
        isWalking = true;

        // Play the walk animation
        if (animator != null)
        {
            animator.Play("walking"); // Replace "Walk" with the actual walk animation state name
        }
    }

    public void LoadSceneByName()
    {
        StartCoroutine(LoadSceneAfterDelay());
    }

    private IEnumerator LoadSceneAfterDelay()
    {
        yield return new WaitForSeconds(3); // Wait for the specified delay
        SceneManager.LoadScene("Level__2");
    }



    void Update()
    {
        if (isWalking)
        {
            // Move the character towards the target position
            transform.position = Vector3.MoveTowards(transform.position, targetPosition, walkSpeed * Time.deltaTime);

            // Stop walking if the character reaches the target position
            if (Vector3.Distance(transform.position, targetPosition) < 0.1f)
            {
                isWalking = false;

                // Optionally, return to idle animation
                if (animator != null)
                {
                    animator.Play("Idle");
                }
            }
        }
    }
}
