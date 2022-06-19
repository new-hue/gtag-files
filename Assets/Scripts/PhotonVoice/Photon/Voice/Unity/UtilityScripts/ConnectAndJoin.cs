using UnityEngine;

namespace Photon.Voice.Unity.UtilityScripts
{
	public class ConnectAndJoin : MonoBehaviour
	{
		public bool RandomRoom;
		[SerializeField]
		private bool autoConnect;
		[SerializeField]
		private bool autoTransmit;
		[SerializeField]
		private bool publishUserId;
		public string RoomName;
	}
}
