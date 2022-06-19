using UnityEngine;
using System.Collections.Generic;

public class ftLightmapsStorage : MonoBehaviour
{
	public List<Texture2D> maps;
	public List<Texture2D> masks;
	public List<Texture2D> dirMaps;
	public List<Texture2D> rnmMaps0;
	public List<Texture2D> rnmMaps1;
	public List<Texture2D> rnmMaps2;
	public List<int> mapsMode;
	public List<Renderer> bakedRenderers;
	public List<int> bakedIDs;
	public List<Vector4> bakedScaleOffset;
	public List<Mesh> bakedVertexColorMesh;
	public List<Renderer> nonBakedRenderers;
	public List<Light> bakedLights;
	public List<int> bakedLightChannels;
	public List<Terrain> bakedRenderersTerrain;
	public List<int> bakedIDsTerrain;
	public List<Vector4> bakedScaleOffsetTerrain;
	public List<string> assetList;
	public List<int> uvOverlapAssetList;
	public int[] idremap;
	public bool usesRealtimeGI;
	public Texture2D emptyDirectionTex;
	public bool anyVolumes;
	public bool compressedVolumes;
}
