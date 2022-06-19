using Photon.Pun;

namespace Photon.Pun.UtilityScripts
{
	public class ConnectAndJoinRandom : MonoBehaviourPunCallbacks
	{
		public bool AutoConnect;
		public byte Version;
		public byte MaxPlayers;
		public int playerTTL;
	}
}
