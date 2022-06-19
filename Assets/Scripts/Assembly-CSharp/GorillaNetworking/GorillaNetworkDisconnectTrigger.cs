using UnityEngine;

namespace GorillaNetworking
{
	public class GorillaNetworkDisconnectTrigger : GorillaTriggerBox
	{
		public PhotonNetworkController photonNetworkController;
		public GameObject offlineVRRig;
		public GameObject makeSureThisIsEnabled;
		public GameObject[] makeSureTheseAreEnabled;
		public string componentTypeToRemove;
		public GameObject componentTarget;
	}
}
