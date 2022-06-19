using Photon.Pun;
using UnityEngine;

public class GorillaHatButtonParent : MonoBehaviourPunCallbacks
{
	public GorillaHatButton[] hatButtons;
	public GameObject[] adminObjects;
	public string hat;
	public string face;
	public string badge;
	public string leftHandHold;
	public string rightHandHold;
	public bool initialized;
	public GorillaLevelScreen screen;
}
