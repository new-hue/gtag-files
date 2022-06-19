using UnityEngine;

namespace Valve.VR
{
	public class SteamVR_Behaviour_Skeleton : MonoBehaviour
	{
		public enum MirrorType
		{
			None = 0,
			LeftToRight = 1,
			RightToLeft = 2,
		}

		public SteamVR_Action_Skeleton skeletonAction;
		public SteamVR_Input_Sources inputSource;
		public EVRSkeletalMotionRange rangeOfMotion;
		public Transform skeletonRoot;
		public Transform origin;
		public bool updatePose;
		public bool onlySetRotations;
		public float skeletonBlend;
		public SteamVR_Behaviour_SkeletonEvent onBoneTransformsUpdated;
		public SteamVR_Behaviour_SkeletonEvent onTransformUpdated;
		public SteamVR_Behaviour_SkeletonEvent onTransformChanged;
		public SteamVR_Behaviour_Skeleton_ConnectedChangedEvent onConnectedChanged;
		public SteamVR_Behaviour_Skeleton_TrackingChangedEvent onTrackingChanged;
		public MirrorType mirroring;
		public SteamVR_Skeleton_Poser fallbackPoser;
		public SteamVR_Action_Single fallbackCurlAction;
	}
}
