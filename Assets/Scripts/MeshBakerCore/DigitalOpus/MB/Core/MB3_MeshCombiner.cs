using System;
using UnityEngine;

namespace DigitalOpus.MB.Core
{
	[Serializable]
	public class MB3_MeshCombiner
	{
		[SerializeField]
		protected MB2_ValidationLevel _validationLevel;
		[SerializeField]
		protected string _name;
		[SerializeField]
		protected MB2_TextureBakeResults _textureBakeResults;
		[SerializeField]
		protected GameObject _resultSceneObject;
		[SerializeField]
		protected Renderer _targetRenderer;
		[SerializeField]
		protected MB2_LogLevel _LOG_LEVEL;
		[SerializeField]
		protected Object _settingsHolder;
		[SerializeField]
		protected MB2_OutputOptions _outputOption;
		[SerializeField]
		protected MB_RenderType _renderType;
		[SerializeField]
		protected MB2_LightmapOptions _lightmapOption;
		[SerializeField]
		protected bool _doNorm;
		[SerializeField]
		protected bool _doTan;
		[SerializeField]
		protected bool _doCol;
		[SerializeField]
		protected bool _doUV;
		[SerializeField]
		protected bool _doUV3;
		[SerializeField]
		protected bool _doUV4;
		[SerializeField]
		protected bool _doUV5;
		[SerializeField]
		protected bool _doUV6;
		[SerializeField]
		protected bool _doUV7;
		[SerializeField]
		protected bool _doUV8;
		[SerializeField]
		protected bool _doBlendShapes;
		[SerializeField]
		protected MB_MeshPivotLocation _pivotLocationType;
		[SerializeField]
		protected Vector3 _pivotLocation;
		[SerializeField]
		protected bool _clearBuffersAfterBake;
		[SerializeField]
		public bool _optimizeAfterBake;
		[SerializeField]
		protected float _uv2UnwrappingParamsHardAngle;
		[SerializeField]
		protected float _uv2UnwrappingParamsPackMargin;
		[SerializeField]
		protected bool _smrNoExtraBonesWhenCombiningMeshRenderers;
		[SerializeField]
		protected bool _smrMergeBlendShapesWithSameNames;
		[SerializeField]
		protected Object _assignToMeshCustomizer;
	}
}
