using UnityEngine;
using Valve.VR;

namespace Valve.VR.InteractionSystem
{
	public class Interactable : MonoBehaviour
	{
		public SteamVR_ActionSet activateActionSetOnAttach;
		public bool hideHandOnAttach;
		public bool hideSkeletonOnAttach;
		public bool hideControllerOnAttach;
		public int handAnimationOnPickup;
		public SkeletalMotionRangeChange setRangeOfMotionOnPickup;
		public bool useHandObjectAttachmentPoint;
		public bool attachEaseIn;
		public AnimationCurve snapAttachEaseInCurve;
		public float snapAttachEaseInTime;
		public bool snapAttachEaseInCompleted;
		public SteamVR_Skeleton_Poser skeletonPoser;
		public bool handFollowTransform;
		public bool highlightOnHover;
		public GameObject[] hideHighlight;
		public int hoverPriority;
	}
}
