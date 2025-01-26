using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LaserReceiver : MonoBehaviour
{
    [SerializeField] private Material redMaterial;   // Assign this in the Inspector
    [SerializeField] private Material greenMaterial; // Assign this in the Inspector
    [SerializeField] private GameObject wiresObject; // Assign the Wires GameObject in the Inspector
    [SerializeField] private GameObject doorObject;  // Assign the Door GameObject in the Inspector

    private Renderer objectRenderer;

    public GameObject doorOpenAudio;

    private void Start()
    {
        // Get the Renderer component of the GameObject
        objectRenderer = GetComponent<Renderer>();

        if (objectRenderer == null)
        {
            Debug.LogError("Renderer component not found on the GameObject!");
            return;
        }

        // Set the initial material to red
        if (redMaterial != null)
        {
            objectRenderer.material = redMaterial;
        }
        else
        {
            Debug.LogError("Red Material not assigned!");
        }
    }

    public void ActivateSignal()
    {
        Debug.Log("LaserReceiver activated!");

        // Change this object's material to green
        if (objectRenderer != null && greenMaterial != null)
        {
            objectRenderer.material = greenMaterial;
            Debug.Log("LaserReceiver material changed to green.");
        }
        else
        {
            Debug.LogError("Green Material or Renderer is not assigned!");
        }

        // Trigger the "OpenDoor" animation on the door GameObject
        if (doorObject != null)
        {
            Door doorScript = doorObject.GetComponent<Door>();
            if (doorScript != null)
            {
                doorScript.OpenDoor();
                doorOpenAudio.SetActive(true);
                Debug.Log("OpenDoor animation triggered.");
            }
            else
            {
                Debug.LogError("The specified door object does not have a Door script attached!");
            }
        }
        else
        {
            Debug.LogError("Door object is not assigned in the Inspector!");
        }

        // Change the material of all child objects of the Wires GameObject
        if (wiresObject != null)
        {
            foreach (Transform child in wiresObject.transform)
            {
                Renderer childRenderer = child.GetComponent<Renderer>();
                if (childRenderer != null)
                {
                    childRenderer.material = greenMaterial;
                    Debug.Log($"Changed material of child: {child.name} to green.");
                }
                else
                {
                    Debug.LogWarning($"Child: {child.name} does not have a Renderer component.");
                }
            }
        }
        else
        {
            Debug.LogError("Wires GameObject is not assigned in the Inspector!");
        }
    }
}
