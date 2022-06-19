using System;
using UnityEngine.XR;
using UnityEngine;

[Serializable]
public class VRMap
{
	public XRNode vrTargetNode;
	public Transform overrideTarget;
	public Transform rigTarget;
	public Vector3 trackingPositionOffset;
	public Vector3 trackingRotationOffset;
	public Transform headTransform;
	public Vector3 syncPos;
	public Quaternion syncRotation;
	public float calcT;
	public int tempInt;
}
