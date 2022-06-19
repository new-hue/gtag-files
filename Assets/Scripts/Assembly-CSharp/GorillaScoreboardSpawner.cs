using Photon.Pun;
using UnityEngine;

public class GorillaScoreboardSpawner : MonoBehaviourPunCallbacks
{
	public string gameType;
	public bool includeMMR;
	public GameObject scoreboardPrefab;
	public GameObject notInRoomText;
	public GameObject controllingParentGameObject;
	public bool isActive;
	public GorillaScoreBoard currentScoreboard;
}
