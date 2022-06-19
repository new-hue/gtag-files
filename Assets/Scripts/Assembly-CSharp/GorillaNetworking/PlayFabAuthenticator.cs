using UnityEngine;
using UnityEngine.UI;

namespace GorillaNetworking
{
	public class PlayFabAuthenticator : MonoBehaviour
	{
		public bool isTestAccount;
		public string testAccountName;
		public GorillaNetworkJoinTrigger testJoin;
		public string testRoomToJoin;
		public string testGameMode;
		public string _playFabPlayerIdCache;
		public string userID;
		public GorillaComputer gorillaComputer;
		public Text debugText;
		public bool screenDebugMode;
		public bool loginFailed;
		public GameObject emptyObject;
	}
}
