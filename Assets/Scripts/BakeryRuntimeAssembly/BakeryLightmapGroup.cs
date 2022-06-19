using UnityEngine;

public class BakeryLightmapGroup : ScriptableObject
{
	public enum ftLMGroupMode
	{
		OriginalUV = 0,
		PackAtlas = 1,
		Vertex = 2,
	}

	public enum RenderMode
	{
		FullLighting = 0,
		Indirect = 1,
		Shadowmask = 2,
		Subtractive = 3,
		AmbientOcclusionOnly = 4,
		Auto = 1000,
	}

	public enum RenderDirMode
	{
		None = 0,
		BakedNormalMaps = 1,
		DominantDirection = 2,
		RNM = 3,
		SH = 4,
		ProbeSH = 5,
		Auto = 1000,
	}

	public enum AtlasPacker
	{
		Default = 0,
		xatlas = 1,
		Auto = 1000,
	}

	[SerializeField]
	public int resolution;
	[SerializeField]
	public int bitmask;
	[SerializeField]
	public int id;
	public int sortingID;
	[SerializeField]
	public bool isImplicit;
	[SerializeField]
	public float area;
	[SerializeField]
	public int totalVertexCount;
	[SerializeField]
	public int vertexCounter;
	[SerializeField]
	public int sceneLodLevel;
	[SerializeField]
	public string sceneName;
	[SerializeField]
	public bool containsTerrains;
	[SerializeField]
	public bool probes;
	[SerializeField]
	public ftLMGroupMode mode;
	[SerializeField]
	public RenderMode renderMode;
	[SerializeField]
	public RenderDirMode renderDirMode;
	[SerializeField]
	public AtlasPacker atlasPacker;
	[SerializeField]
	public bool computeSSS;
	[SerializeField]
	public int sssSamples;
	[SerializeField]
	public float sssDensity;
	[SerializeField]
	public Color sssColor;
	[SerializeField]
	public float sssScale;
	[SerializeField]
	public float fakeShadowBias;
	[SerializeField]
	public bool transparentSelfShadow;
	[SerializeField]
	public bool flipNormal;
	[SerializeField]
	public string parentName;
	[SerializeField]
	public string overridePath;
	[SerializeField]
	public bool fixPos3D;
	[SerializeField]
	public Vector3 voxelSize;
	public int passedFilter;
}
