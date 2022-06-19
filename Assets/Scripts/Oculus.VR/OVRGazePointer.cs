using UnityEngine;

public class OVRGazePointer : OVRCursor
{
	public bool hideByDefault;
	public float showTimeoutPeriod;
	public float hideTimeoutPeriod;
	public bool dimOnHideRequest;
	public float depthScaleMultiplier;
	public bool matchNormalOnPhysicsColliders;
	public Transform rayTransform;
}
