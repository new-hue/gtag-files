using ExitGames.Client.Photon;

namespace Photon.Realtime
{
	public class RoomInfo
	{
		protected RoomInfo(string roomName, Hashtable roomProperties)
		{
		}

		public bool RemovedFromList;
		public int masterClientId;
	}
}
