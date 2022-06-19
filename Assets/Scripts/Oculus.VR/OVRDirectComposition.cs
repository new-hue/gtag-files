using UnityEngine;

public class OVRDirectComposition : OVRCameraComposition
{
	public OVRDirectComposition(GameObject parentObject, Camera mainCamera, OVRManager.CameraDevice cameraDevice, bool useDynamicLighting, OVRManager.DepthQuality depthQuality) : base(default(GameObject), default(Camera), default(OVRManager.CameraDevice), default(bool), default(OVRManager.DepthQuality))
	{
	}

	public GameObject directCompositionCameraGameObject;
	public Camera directCompositionCamera;
	public RenderTexture boundaryMeshMaskTexture;
}
