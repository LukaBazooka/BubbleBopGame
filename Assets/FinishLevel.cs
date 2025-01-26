using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class FinishLevel : MonoBehaviour
{
    public GameObject ladderText; 
    private bool inRange = false;

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            inRange = true;
            ladderText.SetActive(true);
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            inRange = false;
            ladderText.SetActive(false);
        }
    }

    void Start()
    {
        ladderText.SetActive(false);
    }
    void Update()
    {
        if (inRange && Input.GetKeyDown(KeyCode.F))
        {
            // LEVEL COMPLETE, CHANGE SCENE HERE OR WHATEVER TO FINSIH THE GAME
            Debug.Log("ligma");
        }
    }
}