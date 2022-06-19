using UnityEngine;
using DigitalOpus.MB.Core;

public class MB3_AtlasPackerRenderTexture : MonoBehaviour
{
	public int width;
	public int height;
	public int padding;
	public bool isNormalMap;
	public bool fixOutOfBoundsUVs;
	public bool considerNonTextureProperties;
	public Rect[] rects;
	public Texture2D tex1;
	public int indexOfTexSetToRender;
	public ShaderTextureProperty texPropertyName;
	public MB2_LogLevel LOG_LEVEL;
	public Texture2D testTex;
	public Material testMat;
}
