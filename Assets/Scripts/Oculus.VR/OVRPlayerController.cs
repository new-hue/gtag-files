using UnityEngine;

public class OVRPlayerController : MonoBehaviour
{
	public float Acceleration;
	public float Damping;
	public float BackAndSideDampen;
	public float JumpForce;
	public float RotationAmount;
	public float RotationRatchet;
	public bool SnapRotation;
	public int FixedSpeedSteps;
	public bool HmdResetsY;
	public bool HmdRotatesY;
	public float GravityModifier;
	public bool useProfileData;
	public bool EnableLinearMovement;
	public bool EnableRotation;
	public bool RotationEitherThumbstick;
}
