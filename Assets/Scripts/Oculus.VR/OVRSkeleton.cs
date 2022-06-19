using UnityEngine;

public class OVRSkeleton : MonoBehaviour
{
	public enum SkeletonType
	{
		None = -1,
		HandLeft = 0,
		HandRight = 1,
	}

	[SerializeField]
	protected SkeletonType _skeletonType;
	[SerializeField]
	private bool _updateRootPose;
	[SerializeField]
	private bool _updateRootScale;
	[SerializeField]
	private bool _enablePhysicsCapsules;
}
