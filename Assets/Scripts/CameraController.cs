using UnityEngine;

public class CameraController : MonoBehaviour
{
    public Transform player; // Reference to the player transform
    public float followSpeed = 2.0f; // Speed at which the camera follows the player
    private Vector3 offset; // Initial offset from the player

    // Start is called before the first frame update
    void Start()
    {
        // Calculate and store the initial offset in world space
        offset = transform.position - player.position;
    }

    // Update is called once per frame
    void LateUpdate()
    {
        // Calculate the target position based on the player's world position and the initial offset
        Vector3 targetPosition = player.position + offset;

        // Smoothly interpolate the camera's position towards the target position
        transform.position = Vector3.Lerp(transform.position, targetPosition, Time.deltaTime * followSpeed);
    }
}
