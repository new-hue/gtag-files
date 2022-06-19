using UnityEngine;

namespace OculusSampleFramework
{
	public class FingerTipPokeTool : InteractableTool
	{
		[SerializeField]
		private FingerTipPokeToolView _fingerTipPokeToolView;
		[SerializeField]
		private OVRPlugin.HandFinger _fingerToFollow;
	}
}
