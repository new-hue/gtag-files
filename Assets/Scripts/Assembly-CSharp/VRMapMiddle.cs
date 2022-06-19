using System;
using UnityEngine;

[Serializable]
public class VRMapMiddle : VRMap
{
	public float gripValue;
	public Transform fingerBone1;
	public Transform fingerBone2;
	public Transform fingerBone3;
	public float closedAngles;
	public Vector3 closedAngle1;
	public Vector3 closedAngle2;
	public Vector3 closedAngle3;
	public Vector3 startingAngle1;
	public Vector3 startingAngle2;
	public Vector3 startingAngle3;
	public Quaternion[] angle1Table;
	public Quaternion[] angle2Table;
	public Quaternion[] angle3Table;
}
