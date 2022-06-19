using UnityEngine;
using System.Collections.Generic;

public class GorillaReporter : MonoBehaviour
{
	public List<string> reportedPlayers;
	public byte roomSize;
	public float lastCheck;
	public float checkCooldown;
	public float userDecayTime;
	public bool testAssault;
}
