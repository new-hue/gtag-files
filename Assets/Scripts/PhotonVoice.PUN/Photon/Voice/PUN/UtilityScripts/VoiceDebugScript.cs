using Photon.Pun;
using UnityEngine;

namespace Photon.Voice.PUN.UtilityScripts
{
	public class VoiceDebugScript : MonoBehaviourPun
	{
		public bool ForceRecordingAndTransmission;
		public AudioClip TestAudioClip;
		public bool TestUsingAudioClip;
		public bool DisableVad;
		public bool IncreaseLogLevels;
		public bool LocalDebug;
	}
}
