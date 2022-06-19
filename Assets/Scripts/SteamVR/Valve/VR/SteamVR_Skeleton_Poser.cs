using UnityEngine;
using System;
using System.Collections.Generic;

namespace Valve.VR
{
	public class SteamVR_Skeleton_Poser : MonoBehaviour
	{
		[Serializable]
		public class PoseBlendingBehaviour
		{
			public enum BlenderTypes
			{
				Manual = 0,
				AnalogAction = 1,
				BooleanAction = 2,
			}

			public string name;
			public bool enabled;
			public float influence;
			public int pose;
			public float value;
			public SteamVR_Action_Single action_single;
			public SteamVR_Action_Boolean action_bool;
			public float smoothingSpeed;
			public BlenderTypes type;
			public bool useMask;
			public SteamVR_Skeleton_HandMask mask;
			public bool previewEnabled;
		}

		public bool poseEditorExpanded;
		public bool blendEditorExpanded;
		public string[] poseNames;
		public GameObject overridePreviewLeftHandPrefab;
		public GameObject overridePreviewRightHandPrefab;
		public SteamVR_Skeleton_Pose skeletonMainPose;
		public List<SteamVR_Skeleton_Pose> skeletonAdditionalPoses;
		[SerializeField]
		protected bool showLeftPreview;
		[SerializeField]
		protected bool showRightPreview;
		[SerializeField]
		protected GameObject previewLeftInstance;
		[SerializeField]
		protected GameObject previewRightInstance;
		[SerializeField]
		protected int previewPoseSelection;
		public List<SteamVR_Skeleton_Poser.PoseBlendingBehaviour> blendingBehaviours;
		public float scale;
	}
}
