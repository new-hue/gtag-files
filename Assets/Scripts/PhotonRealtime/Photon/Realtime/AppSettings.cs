using System;
using ExitGames.Client.Photon;

namespace Photon.Realtime
{
	[Serializable]
	public class AppSettings
	{
		public string AppIdRealtime;
		public string AppIdFusion;
		public string AppIdChat;
		public string AppIdVoice;
		public string AppVersion;
		public bool UseNameServer;
		public string FixedRegion;
		public string Server;
		public int Port;
		public string ProxyServer;
		public ConnectionProtocol Protocol;
		public bool EnableProtocolFallback;
		public AuthModeOption AuthMode;
		public bool EnableLobbyStatistics;
		public DebugLevel NetworkLogging;
	}
}
