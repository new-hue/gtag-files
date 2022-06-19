using System;
using UnityEngine;

[Serializable]
public class VRMapThumb : VRMap
{
	public bool primaryButtonTouch;
	public bool primaryButtonPress;
	public bool secondaryButtonTouch;
	public bool secondaryButtonPress;
	public Transform fingerBone1;
	public Transform fingerBone2;
	public Vector3 closedAngle1;
	public Vector3 closedAngle2;
	public Vector3 startingAngle1;
	public Vector3 startingAngle2;
	public Quaternion[] angle1Table;
	public Quaternion[] angle2Table;
}
