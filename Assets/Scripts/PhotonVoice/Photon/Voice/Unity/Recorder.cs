using UnityEngine;
using POpusCodec.Enums;
using Photon.Voice;

namespace Photon.Voice.Unity
{
	public class Recorder : VoiceComponent
	{
		public enum InputSourceType
		{
			Microphone = 0,
			AudioClip = 1,
			Factory = 2,
		}

		public enum MicType
		{
			Unity = 0,
			Photon = 1,
		}

		[SerializeField]
		private bool voiceDetection;
		[SerializeField]
		private float voiceDetectionThreshold;
		[SerializeField]
		private int voiceDetectionDelayMs;
		[SerializeField]
		private byte interestGroup;
		[SerializeField]
		private bool debugEchoMode;
		[SerializeField]
		private bool reliableMode;
		[SerializeField]
		private bool encrypt;
		[SerializeField]
		private bool transmitEnabled;
		[SerializeField]
		private SamplingRate samplingRate;
		[SerializeField]
		private OpusCodec.FrameDuration frameDuration;
		[SerializeField]
		private int bitrate;
		[SerializeField]
		private InputSourceType sourceType;
		[SerializeField]
		private MicType microphoneType;
		[SerializeField]
		private AudioClip audioClip;
		[SerializeField]
		private bool loopAudioClip;
		[SerializeField]
		private bool reactOnSystemChanges;
		[SerializeField]
		private bool autoStart;
		[SerializeField]
		private bool recordOnlyWhenEnabled;
		[SerializeField]
		private bool skipDeviceChangeChecks;
		[SerializeField]
		private bool stopRecordingWhenPaused;
		[SerializeField]
		private bool useOnAudioFilterRead;
		[SerializeField]
		private bool trySamplingRateMatch;
		[SerializeField]
		private bool useMicrophoneTypeFallback;
		[SerializeField]
		private bool recordOnlyWhenJoined;
	}
}
