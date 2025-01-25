using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BubbleLauncher : MonoBehaviour
{
    public GameObject bubblePrefab; // Assign your bubble prefab in the Inspector
    public Transform shootPoint;   // Assign the shootPoint GameObject in the Inspector
    public float shootForce = 500f; // Adjust this for how fast the bubble shoots

    void Update()
    {
        // Check for left mouse button press
        if (Input.GetMouseButtonDown(0))
        {
            LaunchBubble();
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

        // Get the Rigidbody of the bubble and add force to it
        Rigidbody bubbleRb = bubble.GetComponent<Rigidbody>();
        if (bubbleRb != null)
        {
            bubbleRb.AddForce(shootPoint.forward * shootForce);
        }
        else
        {
            Debug.LogWarning("BubblePrefab does not have a Rigidbody component!");
        }
    }
}
