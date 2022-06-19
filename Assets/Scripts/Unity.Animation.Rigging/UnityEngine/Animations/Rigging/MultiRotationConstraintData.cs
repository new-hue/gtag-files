using System;
using UnityEngine;

namespace UnityEngine.Animations.Rigging
{
	[Serializable]
	public struct MultiRotationConstraintData
	{
		[SerializeField]
		private Transform m_ConstrainedObject;
		[SerializeField]
		private WeightedTransformArray m_SourceObjects;
		[SerializeField]
		private Vector3 m_Offset;
		[SerializeField]
		private Vector3Bool m_ConstrainedAxes;
		[SerializeField]
		private bool m_MaintainOffset;
	}
}
