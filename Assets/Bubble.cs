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

    [Header("Scaling Settings")]
    public float scaleDuration = 1f; // Duration of the scaling animation in seconds

    private float initialY;
    private bool isScaling = true;
    private Transform meshTransform;

    public GameObject bubblePopSFX;

    void Start()
    {
        // Get the transform of the mesh (assumes the mesh is a child or the same GameObject)
        MeshRenderer meshRenderer = GetComponentInChildren<MeshRenderer>();
        if (meshRenderer != null)
        {
            meshTransform = meshRenderer.transform;
        }
        else
        {
            Debug.LogError("No MeshRenderer found! Ensure the bubble has a mesh.");
            return;
        }

        // Set the initial scale of the mesh to 0
        if (meshTransform != null)
        {
            meshTransform.localScale = Vector3.zero;
        }

        // Store the initial Y position
        initialY = transform.position.y;

        // Start scaling animation
        StartCoroutine(ScaleUp());

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
        if (!isScaling)
        {
            // Bobbing motion relative to the base Y position
            float newY = initialY + Mathf.Sin(Time.time * bobbingSpeed) * bobbingHeight;
            transform.position = new Vector3(transform.position.x, newY, transform.position.z);
        }
    }

    private void OnCollisionEnter(Collision collision)
    {
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
            Instantiate(bubblePopSFX, transform.position, Quaternion.identity);
        }

        // Destroy the bubble GameObject
        Destroy(gameObject);
    }

    private System.Collections.IEnumerator ScaleUp()
    {
        float elapsedTime = 0f;
        Vector3 targetScale = Vector3.one;

        while (elapsedTime < scaleDuration)
        {
            // Smoothly scale the mesh up
            float t = elapsedTime / scaleDuration;
            if (meshTransform != null)
            {
                meshTransform.localScale = Vector3.Lerp(Vector3.zero, targetScale, t);
            }

            elapsedTime += Time.deltaTime;
            yield return null;
        }

        // Ensure the final scale is exactly 100%
        if (meshTransform != null)
        {
            meshTransform.localScale = targetScale;
        }

        isScaling = false;
    }
}
