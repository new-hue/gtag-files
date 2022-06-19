using UnityEngine;

public class UmbrellaItem : ActionableItem
{
	public Transform[] umbrellaBones;
	public Quaternion[] startingAngles;
	public Quaternion[] endingAngles;
	public UmbrellaItem umbrellaToCopy;
	public float lerpValue;
	public Collider umbrellaRainDestroyTrigger;
}
