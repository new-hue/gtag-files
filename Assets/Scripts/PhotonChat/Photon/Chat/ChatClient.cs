using ExitGames.Client.Photon;

namespace Photon.Chat
{
	public class ChatClient
	{
		public ChatClient(IChatClientListener listener, ConnectionProtocol protocol)
		{
		}

		public int MessageLimit;
		public int PrivateChatHistoryLength;
	}
}
