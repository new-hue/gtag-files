using System;
using UnityEngine;

namespace UnityEngine.Animations.Rigging
{
	[Serializable]
	public struct WeightedTransformArray
	{
		public WeightedTransformArray(int size) : this()
		{
		}

		[SerializeField]
		private int m_Length;
		[SerializeField]
		private WeightedTransform m_Item0;
		[SerializeField]
		private WeightedTransform m_Item1;
		[SerializeField]
		private WeightedTransform m_Item2;
		[SerializeField]
		private WeightedTransform m_Item3;
		[SerializeField]
		private WeightedTransform m_Item4;
		[SerializeField]
		private WeightedTransform m_Item5;
		[SerializeField]
		private WeightedTransform m_Item6;
		[SerializeField]
		private WeightedTransform m_Item7;
	}
}
