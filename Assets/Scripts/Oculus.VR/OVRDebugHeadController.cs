using UnityEngine;

public class OVRDebugHeadController : MonoBehaviour
{
	[SerializeField]
	public bool AllowPitchLook;
	[SerializeField]
	public bool AllowYawLook;
	[SerializeField]
	public bool InvertPitch;
	[SerializeField]
	public float GamePad_PitchDegreesPerSec;
	[SerializeField]
	public float GamePad_YawDegreesPerSec;
	[SerializeField]
	public bool AllowMovement;
	[SerializeField]
	public float ForwardSpeed;
	[SerializeField]
	public float StrafeSpeed;
}
