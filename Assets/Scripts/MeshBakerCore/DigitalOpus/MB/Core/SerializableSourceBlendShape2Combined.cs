using System;
using UnityEngine;

namespace DigitalOpus.MB.Core
{
	[Serializable]
	public class SerializableSourceBlendShape2Combined
	{
		public GameObject[] srcGameObject;
		public int[] srcBlendShapeIdx;
		public GameObject[] combinedMeshTargetGameObject;
		public int[] blendShapeIdx;
	}
}
