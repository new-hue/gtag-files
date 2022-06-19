using UnityEngine;

namespace Valve.VR.InteractionSystem
{
	public class LinearAudioPitch : MonoBehaviour
	{
		public LinearMapping linearMapping;
		public AnimationCurve pitchCurve;
		public float minPitch;
		public float maxPitch;
		public bool applyContinuously;
	}
}
