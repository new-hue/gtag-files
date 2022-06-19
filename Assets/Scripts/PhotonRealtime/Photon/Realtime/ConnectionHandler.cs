using UnityEngine;

namespace Photon.Realtime
{
	public class ConnectionHandler : MonoBehaviour
	{
		public bool DisconnectAfterKeepAlive;
		public int KeepAliveInBackground;
		public bool ApplyDontDestroyOnLoad;
	}
}
