using UnityEngine;

namespace Valve.VR
{
	public class SteamVR_Skeleton_Pose : ScriptableObject
	{
		public SteamVR_Skeleton_Pose_Hand leftHand;
		public SteamVR_Skeleton_Pose_Hand rightHand;
		public bool applyToSkeletonRoot;
	}
}
