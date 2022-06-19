using Photon.Pun;
using UnityEngine.UI;
using UnityEngine;

public class GorillaPlayerScoreboardLine : MonoBehaviourPunCallbacks
{
	public Text playerName;
	public Text playerLevel;
	public Text playerMMR;
	public Image playerSwatch;
	public Texture infectedTexture;
	public VRRig playerVRRig;
	public int currentMatIndex;
	public string playerLevelValue;
	public string playerMMRValue;
	public string playerNameValue;
	public int playerActorNumber;
	public bool initialized;
	public GorillaPlayerLineButton muteButton;
	public GorillaPlayerLineButton reportButton;
	public GameObject speakerIcon;
	public bool canPressNextReportButton;
	public Text[] texts;
	public SpriteRenderer[] sprites;
	public MeshRenderer[] meshes;
	public Image[] images;
	public GameObject myRig;
}
