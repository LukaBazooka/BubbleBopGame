using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    public float speed = 5.0f; // Speed of the player
    public BodyController bodyController; // Reference to BodyController
    public AudioSource movementSound; // Reference to the AudioSource for the movement sound

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

        // Check if the player is moving
        if (movement.magnitude > 0.1f) // Check if movement is significant
        {
            lastAngle = Mathf.Atan2(moveVertical, moveHorizontal) * Mathf.Rad2Deg;
            bodyController.SetTiltAngle(lastAngle);
            bodyController.SetVerticalPose(false); // Disable vertical pose

            // Play movement sound if not already playing
            if (!movementSound.isPlaying)
            {
                movementSound.Play();
            }
        }
        else
        {
            bodyController.SetVerticalPose(true); // Enable vertical pose

            // Stop movement sound if it is playing
            if (movementSound.isPlaying)
            {
                movementSound.Stop();
            }
        }
    }
}
