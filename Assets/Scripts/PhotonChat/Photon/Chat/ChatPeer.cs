using ExitGames.Client.Photon;

namespace Photon.Chat
{
	public class ChatPeer : PhotonPeer
	{
		public ChatPeer(IPhotonPeerListener listener, ConnectionProtocol protocol) : base(default(ConnectionProtocol))
		{
		}

		public string NameServerHost;
		public ushort NameServerPortOverride;
	}
}
