using UnityEngine;

public class LaserPointer : OVRCursor
{
	public enum LaserBeamBehavior
	{
		On = 0,
		Off = 1,
		OnWhenHitTarget = 2,
	}

	public GameObject cursorVisual;
	public float maxLength;
}
