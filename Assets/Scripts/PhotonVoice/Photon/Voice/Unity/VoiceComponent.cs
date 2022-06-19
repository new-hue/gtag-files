using UnityEngine;
using ExitGames.Client.Photon;

namespace Photon.Voice.Unity
{
	public class VoiceComponent : MonoBehaviour
	{
		[SerializeField]
		protected DebugLevel logLevel;
		[SerializeField]
		private bool ignoreGlobalLogLevel;
	}
}
