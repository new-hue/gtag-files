using Photon.Realtime;
using ExitGames.Client.Photon;

namespace Photon.Voice
{
	public class LoadBalancingTransport : LoadBalancingClient
	{
		public LoadBalancingTransport(ILogger logger, ConnectionProtocol connectionProtocol) : base(default(ConnectionProtocol))
		{
		}

	}
}
