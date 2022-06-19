using System;
using UnityEngine;
using System.Collections.Generic;

namespace DigitalOpus.MB.Core
{
	[Serializable]
	public class MB3_AgglomerativeClustering
	{
		[Serializable]
		public class item_s
		{
			public GameObject go;
			public Vector3 coord;
		}

		[Serializable]
		public class ClusterNode
		{
			public ClusterNode(MB3_AgglomerativeClustering.item_s ii, int index)
			{
			}

			public MB3_AgglomerativeClustering.item_s leaf;
			public int height;
			public float distToMergedCentroid;
			public Vector3 centroid;
			public int[] leafs;
			public int idx;
			public bool isUnclustered;
		}

		public List<MB3_AgglomerativeClustering.item_s> items;
		public ClusterNode[] clusters;
		public bool wasCanceled;
	}
}
