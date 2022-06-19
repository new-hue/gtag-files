using UnityEngine;
using GorillaNetworking;

public class GorillaNetworkPrivateTestJoin : GorillaTriggerBox
{
	public GameObject[] makeSureThisIsDisabled;
	public GameObject[] makeSureThisIsEnabled;
	public string gameModeName;
	public PhotonNetworkController photonNetworkController;
	public string componentTypeToAdd;
	public GameObject componentTarget;
	public GorillaLevelScreen[] joinScreens;
	public GorillaLevelScreen[] leaveScreens;
}
