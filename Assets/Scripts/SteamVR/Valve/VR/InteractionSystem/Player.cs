using UnityEngine;
using Valve.VR;

namespace Valve.VR.InteractionSystem
{
	public class Player : MonoBehaviour
	{
		public Transform trackingOriginTransform;
		public Transform[] hmdTransforms;
		public Hand[] hands;
		public Collider headCollider;
		public GameObject rigSteamVR;
		public GameObject rig2DFallback;
		public Transform audioListener;
		public SteamVR_Action_Boolean headsetOnHead;
		public bool allowToggleTo2D;
	}
}
