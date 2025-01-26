using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BubbleEmitter : MonoBehaviour
{
    public GameObject bubblePrefab; // Assign your bubble prefab in the Inspector
    public Transform shootPoint;   // Assign the shootPoint GameObject in the Inspector
    public float shootForce = 500f; // Adjust this for how fast the bubble shoots
    public GameObject arrowPointer; // Assign the arrow pointer GameObject in the Inspector
    private float cooldown = 3f; // Cooldown duration in seconds
    private float lastBubbleTime; // Tracks when the last bubble was launched

    void Update()
    {
        // Check if the left mouse button is being held
        if (Input.GetMouseButton(0))
        {
            ShowArrowPointer();
        }

        // Check for left mouse button release
        if (Input.GetMouseButtonUp(0))
        {
            HideArrowPointer();

            // Check if cooldown has elapsed
            if (Time.time - lastBubbleTime >= cooldown)
            {
                LaunchBubble();
                lastBubbleTime = Time.time; // Update the last bubble time
            }
            else
            {
                Debug.Log("On cooldown! Please wait.");
            }
        }
    }

    void ShowArrowPointer()
    {
        if (arrowPointer != null && !arrowPointer.activeSelf)
        {
            arrowPointer.SetActive(true);
        }
    }

    void HideArrowPointer()
    {
        if (arrowPointer != null && arrowPointer.activeSelf)
        {
            arrowPointer.SetActive(false);
        }
    }

    void LaunchBubble()
    {
        if (bubblePrefab == null || shootPoint == null)
        {
            Debug.LogWarning("BubblePrefab or ShootPoint is not assigned!");
            return;
        }

        // Instantiate the bubble at the shootPoint's position and rotation
        GameObject bubble = Instantiate(bubblePrefab, shootPoint.position, shootPoint.rotation);

        // Get the Rigidbody of the bubble and add force in the direction the shootPoint is facing
        Rigidbody bubbleRb = bubble.GetComponent<Rigidbody>();
        if (bubbleRb != null)
        {
            // Use the shootPoint's forward direction to determine the force direction
            bubbleRb.AddForce(shootPoint.forward * shootForce);
        }
        else
        {
            Debug.LogWarning("BubblePrefab does not have a Rigidbody component!");
        }
    }
}
