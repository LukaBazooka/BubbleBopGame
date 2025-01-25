using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BubbleBob : MonoBehaviour
{
    [Header("Bobbing Settings")]
    public float bobbingSpeed = 1f; // Speed of the bobbing motion
    public float bobbingHeight = 0.5f; // Height range of the bobbing motion

    private float initialY;

    void Start()
    {
        // Store the initial Y position
        initialY = transform.position.y;

        // Ensure the Rigidbody is not affected by gravity
        Rigidbody rb = GetComponent<Rigidbody>();
        if (rb != null)
        {
            rb.useGravity = false;
        }
    }

    void Update()
    {
        // Bobbing motion relative to the current position
        float newY = initialY + Mathf.Sin(Time.time * bobbingSpeed) * bobbingHeight;
        transform.position = new Vector3(transform.position.x, newY, transform.position.z);
    }

    private void OnCollisionEnter(Collision collision)
    {
        // Update the initialY to the current Y position if the bubble moves
        initialY = transform.position.y;
    }
}
