using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Door : MonoBehaviour
{
    private Animator animator;

    private void Start()
    {
        animator = GetComponent<Animator>();
        if (animator == null)
        {
            Debug.LogError("No Animator component found on the door!");
        }
    }

    public void OpenDoor()
    {
        if (animator != null)
        {
            animator.SetTrigger("OpenDoor");
            Debug.Log("OpenDoor trigger set in Animator.");
        }
    }
}
