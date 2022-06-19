using UnityEngine;

namespace Valve.VR.InteractionSystem
{
	public class DistanceHaptics : MonoBehaviour
	{
		public Transform firstTransform;
		public Transform secondTransform;
		public AnimationCurve distanceIntensityCurve;
		public AnimationCurve pulseIntervalCurve;
	}
}
