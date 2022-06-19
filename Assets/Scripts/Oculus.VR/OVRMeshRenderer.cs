using UnityEngine;

public class OVRMeshRenderer : MonoBehaviour
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
	private OVRMesh _ovrMesh;
	[SerializeField]
	private OVRSkeleton _ovrSkeleton;
	[SerializeField]
	private ConfidenceBehavior _confidenceBehavior;
	[SerializeField]
	private SystemGestureBehavior _systemGestureBehavior;
	[SerializeField]
	private Material _systemGestureMaterial;
}
