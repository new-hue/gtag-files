using UnityEngine;

public class BakeryVolume : MonoBehaviour
{
	public enum Encoding
	{
		Half4 = 0,
		RGBA8 = 1,
		RGBA8Mono = 2,
	}

	public enum ShadowmaskEncoding
	{
		RGBA8 = 0,
		A8 = 1,
	}

	public bool enableBaking;
	public Bounds bounds;
	public bool adaptiveRes;
	public float voxelsPerUnit;
	public int resolutionX;
	public int resolutionY;
	public int resolutionZ;
	public Encoding encoding;
	public ShadowmaskEncoding shadowmaskEncoding;
	public bool denoise;
	public bool isGlobal;
	public Texture3D bakedTexture0;
	public Texture3D bakedTexture1;
	public Texture3D bakedTexture2;
	public Texture3D bakedTexture3;
	public Texture3D bakedMask;
	public bool supportRotationAfterBake;
}
