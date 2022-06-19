using DigitalOpus.MB.Core;
using UnityEngine;
using System.Collections.Generic;

public class MB3_TextureBaker : MB3_MeshBakerRoot
{
	public MB2_LogLevel LOG_LEVEL;
	[SerializeField]
	protected MB2_TextureBakeResults _textureBakeResults;
	[SerializeField]
	protected int _atlasPadding;
	[SerializeField]
	protected int _maxAtlasSize;
	[SerializeField]
	protected bool _useMaxAtlasWidthOverride;
	[SerializeField]
	protected int _maxAtlasWidthOverride;
	[SerializeField]
	protected bool _useMaxAtlasHeightOverride;
	[SerializeField]
	protected int _maxAtlasHeightOverride;
	[SerializeField]
	protected bool _resizePowerOfTwoTextures;
	[SerializeField]
	protected bool _fixOutOfBoundsUVs;
	[SerializeField]
	protected int _maxTilingBakeSize;
	[SerializeField]
	protected MB2_PackingAlgorithmEnum _packingAlgorithm;
	[SerializeField]
	protected int _layerTexturePackerFastMesh;
	[SerializeField]
	protected bool _meshBakerTexturePackerForcePowerOfTwo;
	[SerializeField]
	protected List<ShaderTextureProperty> _customShaderProperties;
	[SerializeField]
	protected List<string> _texturePropNamesToIgnore;
	[SerializeField]
	protected List<string> _customShaderPropNames_Depricated;
	[SerializeField]
	protected MB2_TextureBakeResults.ResultType _resultType;
	[SerializeField]
	protected bool _doMultiMaterial;
	[SerializeField]
	protected bool _doMultiMaterialSplitAtlasesIfTooBig;
	[SerializeField]
	protected bool _doMultiMaterialSplitAtlasesIfOBUVs;
	[SerializeField]
	protected Material _resultMaterial;
	[SerializeField]
	protected bool _considerNonTextureProperties;
	[SerializeField]
	protected bool _doSuggestTreatment;
	public MB_MultiMaterial[] resultMaterials;
	public MB_MultiMaterialTexArray[] resultMaterialsTexArray;
	public MB_TextureArrayFormatSet[] textureArrayOutputFormats;
	public List<GameObject> objsToMesh;
	public MB_AtlasesAndRects[] OnCombinedTexturesCoroutineAtlasesAndRects;
}
