using Photon.Voice.Unity;
using UnityEngine;

namespace Photon.Voice.PUN
{
	public class PhotonVoiceView : VoiceComponent
	{
		[SerializeField]
		private Recorder recorderInUse;
		[SerializeField]
		private Speaker speakerInUse;
		public bool AutoCreateRecorderIfNotFound;
		public bool UsePrimaryRecorder;
		public bool SetupDebugSpeaker;
	}
}
