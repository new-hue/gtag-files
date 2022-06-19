using System;
using UnityEngine;

namespace UnityEngine.Animations.Rigging
{
	[Serializable]
	public struct MultiAimConstraintData
	{
		public enum Axis
		{
			X = 0,
			X_NEG = 1,
			Y = 2,
			Y_NEG = 3,
			Z = 4,
			Z_NEG = 5,
		}

		[SerializeField]
		private Transform m_ConstrainedObject;
		[SerializeField]
		private WeightedTransformArray m_SourceObjects;
		[SerializeField]
		private Vector3 m_Offset;
		[SerializeField]
		private float m_MinLimit;
		[SerializeField]
		private float m_MaxLimit;
		[SerializeField]
		private Axis m_AimAxis;
		[SerializeField]
		private bool m_MaintainOffset;
		[SerializeField]
		private Vector3Bool m_ConstrainedAxes;
	}
}
