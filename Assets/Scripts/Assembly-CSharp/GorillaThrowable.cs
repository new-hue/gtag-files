using Photon.Pun;
using UnityEngine;

public class GorillaThrowable : MonoBehaviourPun
{
	public int trackingHistorySize;
	public float throwMultiplier;
	public float throwMagnitudeLimit;
	public Vector3 denormalizedVelocityAverage;
	public bool initialLerp;
	public float lerpValue;
	public float lerpDistanceLimit;
	public bool isHeld;
	public Rigidbody rigidbody;
	public AudioSource audioSource;
	public int timeLastReceived;
	public bool synchThrow;
	public float tempFloat;
	public Transform grabbingTransform;
	public float pickupLerp;
	public float minVelocity;
	public float maxVelocity;
	public float minVolume;
	public float maxVolume;
	public bool isLinear;
	public float linearMax;
	public float exponThrowMultMax;
	public int bounceAudioClip;
}
