using UnityEngine;

namespace Valve.VR.InteractionSystem
{
	public class PlaySound : MonoBehaviour
	{
		public AudioClip[] waveFile;
		public bool stopOnPlay;
		public bool disableOnEnd;
		public bool looping;
		public bool stopOnEnd;
		public bool playOnAwakeWithDelay;
		public bool useRandomVolume;
		public float volMin;
		public float volMax;
		public bool useRandomPitch;
		public float pitchMin;
		public float pitchMax;
		public bool useRetriggerTime;
		public float timeInitial;
		public float timeMin;
		public float timeMax;
		public bool useRandomSilence;
		public float percentToNotPlay;
		public float delayOffsetTime;
	}
}
