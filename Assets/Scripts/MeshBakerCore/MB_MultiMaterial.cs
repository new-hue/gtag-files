using System;
using UnityEngine;
using System.Collections.Generic;

[Serializable]
public class MB_MultiMaterial
{
	public Material combinedMaterial;
	public bool considerMeshUVs;
	public List<Material> sourceMaterials;
}
