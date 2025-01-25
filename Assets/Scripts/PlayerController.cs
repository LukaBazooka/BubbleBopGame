using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    public float speed = 5.0f; // Speed of the player
    public BodyController bodyController; // Reference to BodyController

    private float lastAngle = 0f; // Store the last movement angle

    // Update is called once per frame
    void Update()
    {
        // Get input from WASD keys
        float moveHorizontal = Input.GetAxis("Horizontal");
        float moveVertical = Input.GetAxis("Vertical");

        // Create a movement vector
        Vector3 movement = new Vector3(moveHorizontal, 0.0f, moveVertical);

        // Apply movement to the player
        transform.Translate(movement * speed * Time.deltaTime, Space.World);

        // Calculate movement angle
        if (movement.magnitude > 0.1f) // Check if movement is significant
        {
            lastAngle = Mathf.Atan2(moveVertical, moveHorizontal) * Mathf.Rad2Deg;
            bodyController.SetTiltAngle(lastAngle);
            bodyController.SetVerticalPose(false); // Disable vertical pose
        }
        else
        {
            bodyController.SetVerticalPose(true); // Enable vertical pose
        }
    }
}
