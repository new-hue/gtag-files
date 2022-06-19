using UnityEngine;

namespace Photon.Voice.Unity
{
	public class WebRtcAudioDsp : VoiceComponent
	{
		[SerializeField]
		private bool aec;
		[SerializeField]
		private bool aecHighPass;
		[SerializeField]
		private bool agc;
		[SerializeField]
		private int agcCompressionGain;
		[SerializeField]
		private bool vad;
		[SerializeField]
		private bool highPass;
		[SerializeField]
		private bool bypass;
		[SerializeField]
		private bool noiseSuppression;
		[SerializeField]
		private int reverseStreamDelayMs;
		[SerializeField]
		private bool forceNormalAecInMobile;
		public bool AECMobileComfortNoise;
	}
}
