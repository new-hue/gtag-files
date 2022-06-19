using UnityEngine;

public class ActionableItem : MonoBehaviour
{
	public enum ActivationType
	{
		Thumb = 0,
		Index = 1,
		Middle = 2,
	}

	public VRRig myRig;
	public VRRig myOnlineRig;
	public int myState;
	public bool forLeftHand;
	public float myThreshold;
	public float hysterisis;
	public ActivationType myActivationType;
	public bool latched;
	public bool testActivate;
	public bool testDeactivate;
}
