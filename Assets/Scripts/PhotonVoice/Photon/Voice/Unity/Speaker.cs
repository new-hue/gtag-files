using UnityEngine;

namespace Photon.Voice.Unity
{
	public class Speaker : VoiceComponent
	{
		[SerializeField]
		private bool playbackOnlyWhenEnabled;
		[SerializeField]
		private int playDelayMs;
		[SerializeField]
		private PlaybackDelaySettings playbackDelaySettings;
	}
}
