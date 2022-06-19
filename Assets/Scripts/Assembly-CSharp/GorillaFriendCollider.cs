using UnityEngine;
using System.Collections.Generic;

public class GorillaFriendCollider : MonoBehaviour
{
	public List<string> playerIDsCurrentlyTouching;
	public CapsuleCollider thisCapsule;
	public string[] myAllowedMapsToJoin;
	public Collider[] overlapColliders;
}
