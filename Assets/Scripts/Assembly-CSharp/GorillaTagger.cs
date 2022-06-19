using UnityEngine;

public class GorillaTagger : MonoBehaviour
{
	public enum StatusEffect
	{
		None = 0,
		Frozen = 1,
		Slowed = 2,
		Dead = 3,
		Infected = 4,
		It = 5,
	}

	public bool inCosmeticsRoom;
	public SphereCollider headCollider;
	public CapsuleCollider bodyCollider;
	public Transform rightHandTransform;
	public Transform leftHandTransform;
	public float hapticWaitSeconds;
	public float handTapVolume;
	public float tapCoolDown;
	public float lastLeftTap;
	public float lastRightTap;
	public float tapHapticDuration;
	public float tapHapticStrength;
	public float tagHapticDuration;
	public float tagHapticStrength;
	public float taggedHapticDuration;
	public float taggedHapticStrength;
	public float taggedTime;
	public float tagCooldown;
	public float slowCooldown;
	public VRRig myVRRig;
	public VRRig offlineVRRig;
	public GameObject thirdPersonCamera;
	public GameObject mainCamera;
	public bool testTutorial;
	public bool disableTutorial;
	public bool frameRateUpdated;
	public GameObject leftHandTriggerCollider;
	public GameObject rightHandTriggerCollider;
	public Camera mirrorCamera;
	public AudioSource leftHandSlideSource;
	public AudioSource rightHandSlideSource;
	public StatusEffect currentStatus;
	public float statusStartTime;
	public float statusEndTime;
}
