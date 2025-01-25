using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LaserReceiver : MonoBehaviour
{
    public Transform laserOrigin; // Origin of the redirected laser
    private LaserOrigin laserOriginScript; // Reference to the LaserOrigin script

    private void Start()
    {
        // Cache the LaserOrigin script
        laserOriginScript = GetComponent<LaserOrigin>();

        if (laserOrigin == null)
        {
            Debug.LogError("LaserReceiver requires a laserOrigin Transform!");
        }

        if (laserOriginScript == null)
        {
            Debug.LogError("LaserReceiver requires a LaserOrigin script!");
        }

        // Disable the LaserOrigin script by default
        if (laserOriginScript != null)
        {
            laserOriginScript.enabled = false;
        }
    }

    public void ActivateLaserOrigin()
    {
        if (laserOriginScript != null)
        {
            laserOriginScript.enabled = true;
        }
    }

    public void DeactivateLaserOrigin()
    {
        if (laserOriginScript != null)
        {
            laserOriginScript.enabled = false;
        }
    }
}
