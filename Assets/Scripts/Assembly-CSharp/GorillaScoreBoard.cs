using Photon.Pun;
using UnityEngine;
using System.Collections.Generic;
using UnityEngine.UI;

public class GorillaScoreBoard : MonoBehaviourPunCallbacks
{
	public GameObject scoreBoardLinePrefab;
	public int startingYValue;
	public int lineHeight;
	public GorillaGameManager gameManager;
	public string gameType;
	public bool includeMMR;
	public bool isActive;
	public List<GorillaPlayerScoreboardLine> lines;
	public Text boardText;
	public Text buttonText;
}
