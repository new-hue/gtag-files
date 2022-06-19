using UnityEngine;

namespace Valve.VR.InteractionSystem
{
	public class SoundBowClick : MonoBehaviour
	{
		public AudioClip bowClick;
		public AnimationCurve pitchTensionCurve;
		public float minPitch;
		public float maxPitch;
	}
}
