using UnityEngine;

public class GorillaPlaySpace : MonoBehaviour
{
	public Collider headCollider;
	public Collider bodyCollider;
	public Transform rightHandTransform;
	public Transform leftHandTransform;
	public Vector3 headColliderOffset;
	public Vector3 bodyColliderOffset;
	public Transform headsetTransform;
	public Vector3 rightHandOffset;
	public Vector3 leftHandOffset;
	public VRRig vrRig;
	public VRRig offlineVRRig;
	public float vibrationCooldown;
	public float vibrationDuration;
	public VRRig myVRRig;
	public float tagCooldown;
	public float taggedTime;
	public float disconnectTime;
	public float maxStepVelocity;
	public float hapticWaitSeconds;
	public float tapHapticDuration;
	public float tapHapticStrength;
	public float tagHapticDuration;
	public float tagHapticStrength;
	public float taggedHapticDuration;
	public float taggedHapticStrength;
}
