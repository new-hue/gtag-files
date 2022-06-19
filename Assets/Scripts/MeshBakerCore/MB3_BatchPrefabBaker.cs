using UnityEngine;
using System;
using DigitalOpus.MB.Core;

public class MB3_BatchPrefabBaker : MonoBehaviour
{
	[Serializable]
	public class MB3_PrefabBakerRow
	{
		public GameObject sourcePrefab;
		public GameObject resultPrefab;
	}

	public MB2_LogLevel LOG_LEVEL;
	public MB3_PrefabBakerRow[] prefabRows;
	public string outputPrefabFolder;
}
