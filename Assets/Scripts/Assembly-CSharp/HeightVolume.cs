using UnityEngine;

public class HeightVolume : MonoBehaviour
{
	public Transform heightTop;
	public Transform heightBottom;
	public AudioSource audioSource;
	public float baseVolume;
	public float minVolume;
	public Transform targetTransform;
	public bool invertHeightVol;
}
