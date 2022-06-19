using UnityEngine;

public class BakeryPointLight : MonoBehaviour
{
	public enum ftLightProjectionMode
	{
		Omni = 0,
		Cookie = 1,
		Cubemap = 2,
		IES = 3,
		Cone = 4,
	}

	public enum Direction
	{
		NegativeY = 0,
		PositiveZ = 1,
	}

	public int UID;
	public Color color;
	public float intensity;
	public float shadowSpread;
	public float cutoff;
	public bool realisticFalloff;
	public int samples;
	public ftLightProjectionMode projMode;
	public Texture2D cookie;
	public float angle;
	public float innerAngle;
	public Cubemap cubemap;
	public Object iesFile;
	public int bitmask;
	public bool bakeToIndirect;
	public bool shadowmask;
	public float indirectIntensity;
	public float falloffMinRadius;
	public int shadowmaskGroupID;
	public Direction directionMode;
}
