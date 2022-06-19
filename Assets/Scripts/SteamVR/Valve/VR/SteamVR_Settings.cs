using UnityEngine;

namespace Valve.VR
{
	public class SteamVR_Settings : ScriptableObject
	{
		public bool pauseGameWhenDashboardVisible;
		public bool lockPhysicsUpdateRateToRenderFrequency;
		[SerializeField]
		private ETrackingUniverseOrigin trackingSpaceOrigin;
		public string actionsFilePath;
		public string steamVRInputPath;
		public SteamVR_UpdateModes inputUpdateMode;
		public SteamVR_UpdateModes poseUpdateMode;
		public bool activateFirstActionSetOnStart;
		public string editorAppKey;
		public bool autoEnableVR;
		public bool legacyMixedRealityCamera;
		public SteamVR_Action_Pose mixedRealityCameraPose;
		public SteamVR_Input_Sources mixedRealityCameraInputSource;
		public bool mixedRealityActionSetAutoEnable;
		public GameObject previewHandLeft;
		public GameObject previewHandRight;
	}
}
