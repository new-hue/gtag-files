using ExitGames.Client.Photon;

namespace Photon.Realtime
{
	public class LoadBalancingClient
	{
		public LoadBalancingClient(ConnectionProtocol protocol)
		{
		}

		public AuthModeOption AuthMode;
		public EncryptionMode EncryptionMode;
		public string NameServerHost;
		public string ProxyServerAddress;
		public bool EnableLobbyStatistics;
		public string SummaryToCache;
		public int NameServerPortInAppSettings;
	}
}
