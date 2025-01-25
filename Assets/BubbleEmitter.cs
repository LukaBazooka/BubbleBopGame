using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BubbleEmitter : MonoBehaviour
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

        // Calculate the direction from the launcher to the mouse position
        Vector3 mousePosition = Input.mousePosition;
        mousePosition.z = Camera.main.WorldToScreenPoint(shootPoint.position).z; // Match depth of the shootPoint
        Vector3 worldMousePosition = Camera.main.ScreenToWorldPoint(mousePosition);

        // Calculate the direction vector
        Vector3 direction = (worldMousePosition - shootPoint.position);
        direction.y = 0; // Ignore the Y-axis
        direction = direction.normalized; // Normalize the direction to ensure consistent force

        // Calculate rotation to face the direction
        Quaternion rotation = Quaternion.LookRotation(direction);

        // Instantiate the bubble at the shootPoint's position with the calculated rotation
        GameObject bubble = Instantiate(bubblePrefab, shootPoint.position, rotation);

        // Get the Rigidbody of the bubble and add force in the direction of the mouse
        Rigidbody bubbleRb = bubble.GetComponent<Rigidbody>();
        if (bubbleRb != null)
        {
            bubbleRb.AddForce(direction * shootForce);
        }
        else
        {
            Debug.LogWarning("BubblePrefab does not have a Rigidbody component!");
        }
    }
}
