using UnityEngine;
using Valve.VR;
using System.Collections.Generic;

namespace Valve.VR.InteractionSystem
{
	public class Hand : MonoBehaviour
	{
		public enum AttachmentFlags
		{
			SnapOnAttach = 1,
			DetachOthers = 2,
			DetachFromOtherHand = 4,
			ParentToHand = 8,
			VelocityMovement = 16,
			TurnOnKinematic = 32,
			TurnOffGravity = 64,
			AllowSidegrade = 128,
		}

		public Hand otherHand;
		public SteamVR_Input_Sources handType;
		public SteamVR_Behaviour_Pose trackedObject;
		public SteamVR_Action_Boolean grabPinchAction;
		public SteamVR_Action_Boolean grabGripAction;
		public SteamVR_Action_Vibration hapticAction;
		public SteamVR_Action_Boolean uiInteractAction;
		public bool useHoverSphere;
		public Transform hoverSphereTransform;
		public float hoverSphereRadius;
		public LayerMask hoverLayerMask;
		public float hoverUpdateInterval;
		public bool useControllerHoverComponent;
		public string controllerHoverComponent;
		public float controllerHoverRadius;
		public bool useFingerJointHover;
		public SteamVR_Skeleton_JointIndexEnum fingerJointHover;
		public float fingerJointHoverRadius;
		public Transform objectAttachmentPoint;
		public Camera noSteamVRFallbackCamera;
		public float noSteamVRFallbackMaxDistanceNoItem;
		public float noSteamVRFallbackMaxDistanceWithItem;
		public GameObject renderModelPrefab;
		public List<RenderModel> renderModels;
		public RenderModel mainRenderModel;
		public RenderModel hoverhighlightRenderModel;
		public bool showDebugText;
		public bool spewDebugText;
		public bool showDebugInteractables;
	}
}
