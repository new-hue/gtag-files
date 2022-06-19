namespace ExitGames.Client.Photon
{
	public class PhotonPeer
	{
		public PhotonPeer(ConnectionProtocol protocolType)
		{
		}

		public int WarningSize;
		public int CommandLogSize;
		public TargetFrameworks TargetFramework;
		public bool RemoveAppIdFromWebSocketPath;
		public DebugLevel DebugOut;
		public bool SendInCreationOrder;
		public int SequenceDeltaLimitResends;
		public int SequenceDeltaLimitSends;
		public byte ChannelCount;
		public bool EnableEncryptedFlag;
		public int SentCountAllowance;
		public int InitialResendTimeMax;
		public int TimePingInterval;
	}
}
