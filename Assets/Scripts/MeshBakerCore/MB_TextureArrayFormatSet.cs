using System;
using UnityEngine;

[Serializable]
public class MB_TextureArrayFormatSet
{
	public string name;
	public TextureFormat defaultFormat;
	public MB_TextureArrayFormat[] formatOverrides;
}
