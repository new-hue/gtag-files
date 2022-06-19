using UnityEngine;

public class OVRMixedRealityCaptureSettings : ScriptableObject
{
	public bool enableMixedReality;
	public LayerMask extraHiddenLayers;
	public OVRManager.CompositionMethod compositionMethod;
	public Color externalCompositionBackdropColorRift;
	public Color externalCompositionBackdropColorQuest;
	public OVRManager.CameraDevice capturingCameraDevice;
	public bool flipCameraFrameHorizontally;
	public bool flipCameraFrameVertically;
	public float handPoseStateLatency;
	public float sandwichCompositionRenderLatency;
	public int sandwichCompositionBufferedFrames;
	public Color chromaKeyColor;
	public float chromaKeySimilarity;
	public float chromaKeySmoothRange;
	public float chromaKeySpillRange;
	public bool useDynamicLighting;
	public OVRManager.DepthQuality depthQuality;
	public float dynamicLightingSmoothFactor;
	public float dynamicLightingDepthVariationClampingValue;
	public OVRManager.VirtualGreenScreenType virtualGreenScreenType;
	public float virtualGreenScreenTopY;
	public float virtualGreenScreenBottomY;
	public bool virtualGreenScreenApplyDepthCulling;
	public float virtualGreenScreenDepthTolerance;
}
