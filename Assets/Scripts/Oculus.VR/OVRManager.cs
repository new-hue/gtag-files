using UnityEngine;

public class OVRManager : MonoBehaviour
{
	public enum CompositionMethod
	{
		External = 0,
		Direct = 1,
	}

	public enum DepthQuality
	{
		Low = 0,
		Medium = 1,
		High = 2,
	}

	public enum VirtualGreenScreenType
	{
		Off = 0,
		OuterBoundary = 1,
		PlayArea = 2,
	}

	public enum MrcActivationMode
	{
		Automatic = 0,
		Disabled = 1,
	}

	public enum TrackingOrigin
	{
		EyeLevel = 0,
		FloorLevel = 1,
		Stage = 2,
	}

	public enum CameraDevice
	{
		WebCamera0 = 0,
		WebCamera1 = 1,
		ZEDCamera = 2,
	}

	public bool useRecommendedMSAALevel;
	[SerializeField]
	private bool _monoscopic;
	public bool enableAdaptiveResolution;
	public bool enableColorGamut;
	public OVRPlugin.ColorSpace colorGamut;
	public float minRenderScale;
	public float maxRenderScale;
	[SerializeField]
	private Vector3 _headPoseRelativeOffsetRotation;
	[SerializeField]
	private Vector3 _headPoseRelativeOffsetTranslation;
	public int profilerTcpPort;
	public bool expandMixedRealityCapturePropertySheet;
	public bool enableMixedReality;
	public CompositionMethod compositionMethod;
	public LayerMask extraHiddenLayers;
	public Color externalCompositionBackdropColorRift;
	public Color externalCompositionBackdropColorQuest;
	public CameraDevice capturingCameraDevice;
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
	public DepthQuality depthQuality;
	public float dynamicLightingSmoothFactor;
	public float dynamicLightingDepthVariationClampingValue;
	public VirtualGreenScreenType virtualGreenScreenType;
	public float virtualGreenScreenTopY;
	public float virtualGreenScreenBottomY;
	public bool virtualGreenScreenApplyDepthCulling;
	public float virtualGreenScreenDepthTolerance;
	public MrcActivationMode mrcActivationMode;
	[SerializeField]
	private TrackingOrigin _trackingOriginType;
	public bool usePositionTracking;
	public bool useRotationTracking;
	public bool useIPDInPositionTracking;
	public bool resetTrackerOnLoad;
	public bool AllowRecenter;
	public bool LateControllerUpdate;
}
