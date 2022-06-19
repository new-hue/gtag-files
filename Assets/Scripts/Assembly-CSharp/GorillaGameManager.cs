using Photon.Pun;

public class GorillaGameManager : MonoBehaviourPunCallbacks
{
	public float stepVolumeMax;
	public float stepVolumeMin;
	public float fastJumpLimit;
	public float fastJumpMultiplier;
	public float slowJumpLimit;
	public float slowJumpMultiplier;
	public byte roomSize;
	public float lastCheck;
	public float checkCooldown;
	public float userDecayTime;
	public string tempString;
	public float startingToLookForFriend;
	public float timeToSpendLookingForFriend;
	public bool successfullyFoundFriend;
	public bool takeMaster;
	public bool testAssault;
	public bool endGameManually;
	public PhotonView returnPhotonView;
	public VRRig returnRig;
}
