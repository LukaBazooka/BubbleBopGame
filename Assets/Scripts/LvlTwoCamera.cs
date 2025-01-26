using UnityEngine;
using System.Collections.Generic;
public class LvlTwoCamera : MonoBehaviour
{
    public Transform player;         
    public Vector3 offset = new Vector3(0, 10, -10);  
    public float followSpeed = 5f;
    public float cameraAngleOffsetY = 45;
    public float cameraAngleOffsetX = 0;


    void LateUpdate()
    {
        
        Vector3 targetPosition = player.position + offset;

        
        transform.position = Vector3.Lerp(transform.position, targetPosition, followSpeed * Time.deltaTime);

       
        transform.rotation = Quaternion.Euler(cameraAngleOffsetY, cameraAngleOffsetX, 0); 
    }

}
