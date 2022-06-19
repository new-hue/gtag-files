using System;
using UnityEngine;

namespace UnityEngine.Animations.Rigging
{
	[Serializable]
	public struct WeightedTransform
	{
		public WeightedTransform(Transform transform, float weight) : this()
		{
		}

		public Transform transform;
		public float weight;
	}
}
