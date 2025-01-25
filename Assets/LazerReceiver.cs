using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LaserReceiver : MonoBehaviour
{
    // Assign the red and green materials in the Inspector
    [SerializeField] private Material redMaterial;
    [SerializeField] private Material greenMaterial;

    public Renderer objectRenderer;

    private void Start()
    {
        // Get the Renderer component of the GameObject
        objectRenderer = GetComponent<Renderer>();

        // Ensure the object starts with the red material
        if (objectRenderer != null && redMaterial != null)
        {
            objectRenderer.material = redMaterial;
        }
    }

    public void ActivateSignal()
    {
        Debug.Log("LaserReceiver activated!");

        // Change the material to green
        if (objectRenderer != null && greenMaterial != null)
        {
            objectRenderer.material = greenMaterial;
        }
        else
        {
            Debug.LogError("Material or Renderer is not assigned!");
        }
    }
}
