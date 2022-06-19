using System;
using UnityEngine;
using System.Collections.Generic;

[Serializable]
public class MB_MultiMaterialTexArray
{
	public Material combinedMaterial;
	public List<MB_TexArraySlice> slices;
	public List<MB_TexArrayForProperty> textureProperties;
}
