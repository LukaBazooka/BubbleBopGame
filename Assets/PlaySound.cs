using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlaySound : MonoBehaviour
{
    public AudioSource audio;

    public void PlayHammerAudio()
    {
        audio.Play();
    }
}
