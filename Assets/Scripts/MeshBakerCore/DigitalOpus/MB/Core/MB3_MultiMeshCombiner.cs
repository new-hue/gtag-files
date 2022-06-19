using System;
using UnityEngine;
using System.Collections.Generic;

namespace DigitalOpus.MB.Core
{
	[Serializable]
	public class MB3_MultiMeshCombiner : MB3_MeshCombiner
	{
		[Serializable]
		public class CombinedMesh
		{
			public CombinedMesh(int maxNumVertsInMesh, GameObject resultSceneObject, MB2_LogLevel ll)
			{
			}

			public MB3_MeshCombinerSingle combinedMesh;
			public int extraSpace;
			public int numVertsInListToDelete;
			public int numVertsInListToAdd;
			public List<GameObject> gosToAdd;
			public List<int> gosToDelete;
			public List<GameObject> gosToUpdate;
			public bool isDirty;
		}

		[SerializeField]
		public List<MB3_MultiMeshCombiner.CombinedMesh> meshCombiners;
		[SerializeField]
		private int _maxVertsInMesh;
	}
}
