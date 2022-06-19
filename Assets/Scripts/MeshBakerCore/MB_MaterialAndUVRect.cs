using System;
using UnityEngine;
using DigitalOpus.MB.Core;

[Serializable]
public class MB_MaterialAndUVRect
{
	public MB_MaterialAndUVRect(Material mat, Rect destRect, bool allPropsUseSameTiling, Rect sourceMaterialTiling, Rect samplingEncapsulatingRect, Rect srcUVsamplingRect, MB_TextureTilingTreatment treatment, string objName)
	{
	}

	public Material material;
	public Rect atlasRect;
	public string srcObjName;
	public int textureArraySliceIdx;
	public bool allPropsUseSameTiling;
	public Rect allPropsUseSameTiling_sourceMaterialTiling;
	public Rect allPropsUseSameTiling_samplingEncapsulatinRect;
	public Rect propsUseDifferntTiling_srcUVsamplingRect;
	public MB_TextureTilingTreatment tilingTreatment;
}
