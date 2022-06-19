using Photon.Voice;
using UnityEngine;

namespace Photon.Voice.Unity
{
	public class UnityAudioOut : AudioOutDelayControl<float>
	{
		public UnityAudioOut(AudioSource audioSource, AudioOutDelayControl.PlayDelayConfig playDelayConfig, ILogger logger, string logPrefix, bool debugInfo)
		{
		}

	}
}
