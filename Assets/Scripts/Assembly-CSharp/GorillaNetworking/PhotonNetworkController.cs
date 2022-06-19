using Photon.Pun;
using UnityEngine;
using System.Collections.Generic;

namespace GorillaNetworking
{
	public class PhotonNetworkController : MonoBehaviourPunCallbacks
	{
		public int incrementCounter;
		public PlayFabAuthenticator playFabAuthenticator;
		public string[] serverRegions;
		public bool isPrivate;
		public string customRoomID;
		public GameObject playerOffset;
		public SkinnedMeshRenderer[] offlineVRRig;
		public bool attemptingToConnect;
		public string currentGameType;
		public bool wrongVersion;
		public bool roomCosmeticsInitialized;
		public GameObject photonVoiceObjectPrefab;
		public bool disableAFKKick;
		public GameObject[] disableOnStartup;
		public GameObject[] enableOnStartup;
		public bool updatedName;
		public List<string> friendIDList;
		public GorillaNetworkJoinTrigger privateTrigger;
		public GorillaNetworkJoinTrigger currentJoinTrigger;
		public bool allowedInPubRoom;
	}
}
