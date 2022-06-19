using UnityEngine;
using System.Collections.Generic;

namespace Photon.Pun.UtilityScripts
{
	public class OnJoinedInstantiate : MonoBehaviour
	{
		public enum SpawnSequence
		{
			Connection = 0,
			Random = 1,
			RoundRobin = 2,
		}

		public SpawnSequence Sequence;
		public List<Transform> SpawnPoints;
		public bool UseRandomOffset;
		public float RandomOffset;
		public bool ClampY;
		public List<GameObject> PrefabsToInstantiate;
		public bool AutoSpawnObjects;
	}
}
