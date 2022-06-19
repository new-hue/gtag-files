using UnityEngine;

public class GorillaThrowableController : MonoBehaviour
{
	public Transform leftHandController;
	public Transform rightHandController;
	public bool leftHandIsGrabbing;
	public bool rightHandIsGrabbing;
	public GorillaThrowable leftHandGrabbedObject;
	public GorillaThrowable rightHandGrabbedObject;
	public float hoverVibrationStrength;
	public float hoverVibrationDuration;
	public float handRadius;
	public bool testCanGrab;
}
