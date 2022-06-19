using UnityEngine;

public class OVROverlay : MonoBehaviour
{
	public enum OverlayType
	{
		None = 0,
		Underlay = 1,
		Overlay = 2,
	}

	public enum OverlayShape
	{
		Quad = 0,
		Cylinder = 1,
		Cubemap = 2,
		OffcenterCubemap = 4,
		Equirect = 5,
	}

	public OverlayType currentOverlayType;
	public bool isDynamic;
	public bool isProtectedContent;
	public Rect srcRectLeft;
	public Rect srcRectRight;
	public Rect destRectLeft;
	public Rect destRectRight;
	public bool invertTextureRects;
	public bool overrideTextureRectMatrix;
	public bool overridePerLayerColorScaleAndOffset;
	public Vector4 colorScale;
	public Vector4 colorOffset;
	public bool useExpensiveSuperSample;
	public bool hidden;
	public bool isExternalSurface;
	public int externalSurfaceWidth;
	public int externalSurfaceHeight;
	public int compositionDepth;
	public bool noDepthBufferTesting;
	public OVRPlugin.EyeTextureFormat layerTextureFormat;
	public OverlayShape currentOverlayShape;
	public Texture[] textures;
	public bool isAlphaPremultiplied;
	[SerializeField]
	private bool _previewInEditor;
}
