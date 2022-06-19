using UnityEngine;

public class CharacterCameraConstraint : MonoBehaviour
{
	private CharacterCameraConstraint()
	{
	}

	public OVRCameraRig CameraRig;
	public LayerMask CollideLayers;
	public float HeightOffset;
	public float MinimumHeight;
	public float MaximumHeight;
}
