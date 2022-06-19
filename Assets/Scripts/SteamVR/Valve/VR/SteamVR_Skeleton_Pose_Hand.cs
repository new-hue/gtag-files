using System;
using UnityEngine;

namespace Valve.VR
{
	[Serializable]
	public class SteamVR_Skeleton_Pose_Hand
	{
		public SteamVR_Skeleton_Pose_Hand(SteamVR_Input_Sources source)
		{
		}

		public SteamVR_Input_Sources inputSource;
		public SteamVR_Skeleton_FingerExtensionTypes thumbFingerMovementType;
		public SteamVR_Skeleton_FingerExtensionTypes indexFingerMovementType;
		public SteamVR_Skeleton_FingerExtensionTypes middleFingerMovementType;
		public SteamVR_Skeleton_FingerExtensionTypes ringFingerMovementType;
		public SteamVR_Skeleton_FingerExtensionTypes pinkyFingerMovementType;
		public bool ignoreRootPoseData;
		public bool ignoreWristPoseData;
		public Vector3 position;
		public Quaternion rotation;
		public Vector3[] bonePositions;
		public Quaternion[] boneRotations;
	}
}
