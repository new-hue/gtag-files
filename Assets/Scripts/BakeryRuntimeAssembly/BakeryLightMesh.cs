using UnityEngine;

public class BakeryLightMesh : MonoBehaviour
{
	public int UID;
	public Color color;
	public float intensity;
	public Texture2D texture;
	public float cutoff;
	public int samples;
	public int samples2;
	public int bitmask;
	public bool selfShadow;
	public bool bakeToIndirect;
	public float indirectIntensity;
	public int lmid;
}
