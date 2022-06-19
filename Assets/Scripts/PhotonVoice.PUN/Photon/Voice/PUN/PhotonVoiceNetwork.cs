using Photon.Voice.Unity;
using UnityEngine;

namespace Photon.Voice.PUN
{
	public class PhotonVoiceNetwork : VoiceConnection
	{
		public bool AutoConnectAndJoin;
		public bool AutoLeaveAndDisconnect;
		public bool WorkInOfflineMode;
		[SerializeField]
		private bool usePunAppSettings;
		[SerializeField]
		private bool usePunAuthValues;
	}
}
