using UnityEngine;

public class OVRVignette : MonoBehaviour
{
	public enum MeshComplexityLevel
	{
		VerySimple = 0,
		Simple = 1,
		Normal = 2,
		Detailed = 3,
		VeryDetailed = 4,
	}

	public enum FalloffType
	{
		Linear = 0,
		Quadratic = 1,
	}

	[SerializeField]
	private Shader VignetteShader;
	[SerializeField]
	private MeshComplexityLevel MeshComplexity;
	[SerializeField]
	private FalloffType Falloff;
	public float VignetteFieldOfView;
	public float VignetteAspectRatio;
	public float VignetteFalloffDegrees;
	public Color VignetteColor;
}
