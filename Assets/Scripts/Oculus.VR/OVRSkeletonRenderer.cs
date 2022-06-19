using UnityEngine;

public class OVRSkeletonRenderer : MonoBehaviour
{
	public enum ConfidenceBehavior
	{
		None = 0,
		ToggleRenderer = 1,
	}

	public enum SystemGestureBehavior
	{
		None = 0,
		SwapMaterial = 1,
	}

	[SerializeField]
	private ConfidenceBehavior _confidenceBehavior;
	[SerializeField]
	private SystemGestureBehavior _systemGestureBehavior;
	[SerializeField]
	private bool _renderPhysicsCapsules;
	[SerializeField]
	private Material _skeletonMaterial;
	[SerializeField]
	private Material _capsuleMaterial;
	[SerializeField]
	private Material _systemGestureMaterial;
}
