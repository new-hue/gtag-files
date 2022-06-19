using UnityEngine;

namespace Valve.VR
{
	public class SteamVR_IK : MonoBehaviour
	{
		public Transform target;
		public Transform start;
		public Transform joint;
		public Transform end;
		public Transform poleVector;
		public Transform upVector;
		public float blendPct;
		public Transform startXform;
		public Transform jointXform;
		public Transform endXform;
	}
}
