using System;

[Serializable]
public class MB_TexArrayForProperty
{
	public MB_TexArrayForProperty(string name, MB_TextureArrayReference[] texRefs)
	{
	}

	public string texPropertyName;
	public MB_TextureArrayReference[] formats;
}
