using UnityEngine;

public class OneStringGuitar : ActionableItem
{
	public Vector3 chestOffset;
	public Quaternion holdingOffsetRotation;
	public Quaternion chestRotationOffset;
	public Collider chestCollider;
	public float lerpValue;
	public AudioSource audioSource;
	public Transform parentHand;
	public float unsnapDistance;
	public float snapDistance;
	public Vector3 startPosition;
	public Quaternion startQuat;
	public Vector3 reverseGripPosition;
	public Quaternion reverseGripQuat;
	public float angleLerpSnap;
	public float vectorLerpSnap;
	public Transform chestTouch;
	public Collider[] collidersToBeIn;
	public LayerMask interactableMask;
	public int currentFretIndex;
	public int lastFretIndex;
	public Collider[] frets;
	public AudioClip[] audioClips;
	public Collider strumCollider;
	public float maxVolume;
	public float minVolume;
	public float maxVelocity;
	public int selfInstrumentIndex;
}
