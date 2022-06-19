using UnityEngine;

public class GorillaPlaySpaceForces : MonoBehaviour
{
	public GameObject rightHand;
	public GameObject leftHand;
	public Collider bodyCollider;
	public Transform rightHandTransform;
	public Transform leftHandTransform;
	public Vector3 bodyColliderOffset;
	public float forceConstant;
	public Transform headsetTransform;
}
