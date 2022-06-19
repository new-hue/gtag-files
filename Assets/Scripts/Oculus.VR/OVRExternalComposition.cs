using UnityEngine;

public class OVRExternalComposition : OVRComposition
{
	public OVRExternalComposition(GameObject parentObject, Camera mainCamera) : base(default(GameObject), default(Camera))
	{
	}

	public GameObject foregroundCameraGameObject;
	public Camera foregroundCamera;
	public GameObject backgroundCameraGameObject;
	public Camera backgroundCamera;
}
