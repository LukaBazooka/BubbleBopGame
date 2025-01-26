using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HardcodeCamMoveA : MonoBehaviour
{
    public float moveSpeed = 10.0f;
    private Vector3 targetPosition; // The next target position
    private int currentStep = 0; // To track the current step (0 to 3)

    private void Start()
    {
        targetPosition = transform.position;
    }

    private void Update()
    {
        // Moving
        transform.position = Vector3.MoveTowards(transform.position, targetPosition, moveSpeed * Time.deltaTime);

        // Check when to change patrol position target
        if (Vector3.Distance(transform.position, targetPosition) < 0.1f)
        {
            ChangePatrolPosition();
        }
    }

    private void ChangePatrolPosition()
    {
        // Get the current position
        Vector3 currentPosition = transform.position;

        // Switch case based on step of patrol
        switch (currentStep)
        {
            case 0:
                {
                    targetPosition = new Vector3(currentPosition.x + 40, currentPosition.y, currentPosition.z);
                    break;
                }
            case 1:
                {
                    targetPosition = new Vector3(currentPosition.x, currentPosition.y, currentPosition.z - 6);
                    break;
                }

            case 2:
                {
                    targetPosition = new Vector3(currentPosition.x - 40, currentPosition.y, currentPosition.z);
                    break;
                }
            case 3:
                {
                    targetPosition = new Vector3(currentPosition.x, currentPosition.y, currentPosition.z + 6);
                    break;
                }
        }

        // Move to the next step (looops from 0-3)
        currentStep = (currentStep + 1) % 4;
    }
}