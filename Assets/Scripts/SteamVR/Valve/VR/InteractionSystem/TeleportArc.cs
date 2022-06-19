using UnityEngine;

namespace Valve.VR.InteractionSystem
{
	public class TeleportArc : MonoBehaviour
	{
		public int segmentCount;
		public float thickness;
		public float arcDuration;
		public float segmentBreak;
		public float arcSpeed;
		public Material material;
		public int traceLayerMask;
	}
}
