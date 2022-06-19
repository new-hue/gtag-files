using UnityEngine;

namespace Valve.VR
{
	public class SteamVR_Behaviour_Pose : MonoBehaviour
	{
		public SteamVR_Action_Pose poseAction;
		public SteamVR_Input_Sources inputSource;
		public Transform origin;
		public SteamVR_Behaviour_PoseEvent onTransformUpdated;
		public SteamVR_Behaviour_PoseEvent onTransformChanged;
		public SteamVR_Behaviour_Pose_ConnectedChangedEvent onConnectedChanged;
		public SteamVR_Behaviour_Pose_TrackingChangedEvent onTrackingChanged;
		public SteamVR_Behaviour_Pose_DeviceIndexChangedEvent onDeviceIndexChanged;
		public bool broadcastDeviceChanges;
	}
}
