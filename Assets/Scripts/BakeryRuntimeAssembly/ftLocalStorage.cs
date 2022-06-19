using UnityEngine;
using System.Collections.Generic;

public class ftLocalStorage : ScriptableObject
{
	[SerializeField]
	public List<string> modifiedAssetPathList;
	[SerializeField]
	public List<int> modifiedAssetPaddingHash;
}
