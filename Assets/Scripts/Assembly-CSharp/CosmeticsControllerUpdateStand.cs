using UnityEngine;
using GorillaNetworking;

public class CosmeticsControllerUpdateStand : MonoBehaviour
{
	public CosmeticsController cosmeticsController;
	public bool FailEntitlement;
	public bool PlayerUnlocked;
	public bool ItemNotGrantedYet;
	public bool ItemSuccessfullyGranted;
	public bool AttemptToConsumeEntitlement;
	public bool EntitlementSuccessfullyConsumed;
	public bool LockSuccessfullyCleared;
	public bool RunDebug;
	public HeadModel[] inventoryHeadModels;
}
