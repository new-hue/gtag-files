using System;
using UnityEngine;

namespace UnityEngine.Animations.Rigging
{
	[Serializable]
	public struct TwistCorrectionData
	{
		public enum Axis
		{
			X = 0,
			Y = 1,
			Z = 2,
		}

		[SerializeField]
		private Transform m_Source;
		[SerializeField]
		private Axis m_TwistAxis;
		[SerializeField]
		private WeightedTransformArray m_TwistNodes;
	}
}
