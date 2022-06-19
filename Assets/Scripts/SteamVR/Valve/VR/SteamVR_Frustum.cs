using UnityEngine;

namespace Valve.VR
{
	public class SteamVR_Frustum : MonoBehaviour
	{
		public SteamVR_TrackedObject.EIndex index;
		public float fovLeft;
		public float fovRight;
		public float fovTop;
		public float fovBottom;
		public float nearZ;
		public float farZ;
	}
}
