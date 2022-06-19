using UnityEngine;

public class OVRHand : MonoBehaviour
{
	public enum Hand
	{
		None = -1,
		HandLeft = 0,
		HandRight = 1,
	}

	[SerializeField]
	private Hand HandType;
	[SerializeField]
	private Transform _pointerPoseRoot;
}
