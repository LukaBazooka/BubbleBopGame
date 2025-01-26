using UnityEngine;

public class CamChangeHallway : MonoBehaviour
{
    private Vector3 originalOffset;
    private float originalCameraAngleOffsetY;
    private float originalCameraAngleOffsetX;

    private Vector3 targetOffset;
    private float newCameraAngleOffsetY;
    private float newCameraAngleOffsetX;

    private bool hallwayView = false;

    private LvlTwoCamera cameraScript;

    private void Start()
    {
        // grab main camera
        Camera mainCamera = Camera.main;
        if (mainCamera != null)
        {
            cameraScript = mainCamera.GetComponent<LvlTwoCamera>();

            //if the camera has the script (it should)
            if (cameraScript != null)
            {
                // Store the original values
                originalOffset = cameraScript.offset;
                originalCameraAngleOffsetY = cameraScript.cameraAngleOffsetY;
                originalCameraAngleOffsetX = cameraScript.cameraAngleOffsetX;

                // Initialize targets with original values
                targetOffset = originalOffset;
                newCameraAngleOffsetY = originalCameraAngleOffsetY;
                newCameraAngleOffsetX = originalCameraAngleOffsetX;
            }
        }
    }

    private void Update()
    {
        if (cameraScript != null)
        {
            // Lerp the movement
            cameraScript.offset = Vector3.Lerp(cameraScript.offset, targetOffset, Time.deltaTime * cameraScript.followSpeed);
            cameraScript.cameraAngleOffsetY = Mathf.Lerp(cameraScript.cameraAngleOffsetY, newCameraAngleOffsetY, Time.deltaTime * cameraScript.followSpeed);
            cameraScript.cameraAngleOffsetX = Mathf.Lerp(cameraScript.cameraAngleOffsetX, newCameraAngleOffsetX, Time.deltaTime * cameraScript.followSpeed);
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player") && cameraScript != null)
        {
            targetOffset = new Vector3(0, 4, -8);
            newCameraAngleOffsetY = 25f;
            newCameraAngleOffsetX = 0f;
            hallwayView = true;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player") && cameraScript != null)
        {
            targetOffset = originalOffset;
            newCameraAngleOffsetY = originalCameraAngleOffsetY;
            newCameraAngleOffsetX = originalCameraAngleOffsetX;
            hallwayView = false;
        }
    }
}