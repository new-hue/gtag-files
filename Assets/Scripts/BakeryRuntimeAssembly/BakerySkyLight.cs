using UnityEngine;

public class BakerySkyLight : MonoBehaviour
{
	public string texName;
	public Color color;
	public float intensity;
	public int samples;
	public bool hemispherical;
	public int bitmask;
	public bool bakeToIndirect;
	public float indirectIntensity;
	public bool tangentSH;
	public bool correctRotation;
	public Cubemap cubemap;
	public int UID;
}
