using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bubble : MonoBehaviour
{
    [Header("Bobbing Settings")]
    public float bobbingSpeed = 1f; // Speed of the bobbing motion
    public float bobbingHeight = 0.5f; // Height range of the bobbing motion

    [Header("Pop Settings")]
    public float popTime = 15f; // Time in seconds before the bubble pops
    public GameObject popEffect; // Particle effect prefab for the pop

    [Header("Collision Settings")]
    public LayerMask wallsLayer; // LayerMask for walls (set this to the Walls layer in the inspector)

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

        // Schedule the pop
        Invoke("PopBubble", popTime);
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

        // Check if the collided object is on the "Walls" layer
        if (((1 << collision.gameObject.layer) & wallsLayer) != 0)
        {
            PopBubble(); // Pop prematurely
        }
    }

    void PopBubble()
    {
        // Instantiate the particle effect at the bubble's position
        if (popEffect != null)
        {
            Instantiate(popEffect, transform.position, Quaternion.identity);
        }

        // Destroy the bubble GameObject
        Destroy(gameObject);
    }
}
