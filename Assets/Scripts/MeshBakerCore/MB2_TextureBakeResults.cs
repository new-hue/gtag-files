using UnityEngine;

public class MB2_TextureBakeResults : ScriptableObject
{
	public enum ResultType
	{
		atlas = 0,
		textureArray = 1,
	}

	public int version;
	public ResultType resultType;
	public MB_MaterialAndUVRect[] materialsAndUVRects;
	public MB_MultiMaterial[] resultMaterials;
	public MB_MultiMaterialTexArray[] resultMaterialsTexArray;
	public bool doMultiMaterial;
}
