using UnityEngine;

namespace GorillaNetworking
{
	public class GorillaNetworkJoinTrigger : GorillaTriggerBox
	{
		public GameObject[] makeSureThisIsDisabled;
		public GameObject[] makeSureThisIsEnabled;
		public string gameModeName;
		public PhotonNetworkController photonNetworkController;
		public string componentTypeToAdd;
		public GameObject componentTarget;
		public GorillaLevelScreen[] joinScreens;
		public GorillaLevelScreen[] leaveScreens;
		public GorillaFriendCollider myCollider;
	}
}
