using System;
using UnityEngine;
using System.Collections.Generic;

namespace DigitalOpus.MB.Core
{
	[Serializable]
	public class MB3_TextureCombiner
	{
		public MB2_LogLevel LOG_LEVEL;
		[SerializeField]
		protected MB2_TextureBakeResults _textureBakeResults;
		[SerializeField]
		protected int _atlasPadding;
		[SerializeField]
		protected int _maxAtlasSize;
		[SerializeField]
		protected int _maxAtlasWidthOverride;
		[SerializeField]
		protected int _maxAtlasHeightOverride;
		[SerializeField]
		protected bool _useMaxAtlasWidthOverride;
		[SerializeField]
		protected bool _useMaxAtlasHeightOverride;
		[SerializeField]
		protected bool _resizePowerOfTwoTextures;
		[SerializeField]
		protected bool _fixOutOfBoundsUVs;
		[SerializeField]
		protected int _layerTexturePackerFastMesh;
		[SerializeField]
		protected int _maxTilingBakeSize;
		[SerializeField]
		protected bool _saveAtlasesAsAssets;
		[SerializeField]
		protected MB2_TextureBakeResults.ResultType _resultType;
		[SerializeField]
		protected MB2_PackingAlgorithmEnum _packingAlgorithm;
		[SerializeField]
		protected bool _meshBakerTexturePackerForcePowerOfTwo;
		[SerializeField]
		protected List<ShaderTextureProperty> _customShaderPropNames;
		[SerializeField]
		protected bool _normalizeTexelDensity;
		[SerializeField]
		protected bool _considerNonTextureProperties;
	}
}
