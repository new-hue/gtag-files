using Photon.Realtime;
using ExitGames.Client.Photon;
using UnityEngine;

namespace Photon.Voice.Unity
{
	public class VoiceConnection : ConnectionHandler
	{
		[SerializeField]
		private DebugLevel logLevel;
		[SerializeField]
		private bool enableSupportLogger;
		[SerializeField]
		private int updateInterval;
		[SerializeField]
		private bool runInBackground;
		[SerializeField]
		private int statsResetInterval;
		[SerializeField]
		private GameObject speakerPrefab;
		[SerializeField]
		private Recorder primaryRecorder;
		[SerializeField]
		private DebugLevel globalRecordersLogLevel;
		[SerializeField]
		private DebugLevel globalSpeakersLogLevel;
		[SerializeField]
		private int globalPlaybackDelay;
		[SerializeField]
		private PlaybackDelaySettings globalPlaybackDelaySettings;
		public AppSettings Settings;
		public float MinimalTimeScaleToDispatchInFixedUpdate;
		public bool AutoCreateSpeakerIfNotFound;
		public int MaxDatagrams;
		public bool SendAsap;
	}
}
