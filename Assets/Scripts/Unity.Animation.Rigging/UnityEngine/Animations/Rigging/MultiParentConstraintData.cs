using System;
using UnityEngine;

namespace UnityEngine.Animations.Rigging
{
	[Serializable]
	public struct MultiParentConstraintData
	{
		[SerializeField]
		private Transform m_ConstrainedObject;
		[SerializeField]
		private WeightedTransformArray m_SourceObjects;
		[SerializeField]
		private Vector3Bool m_ConstrainedPositionAxes;
		[SerializeField]
		private Vector3Bool m_ConstrainedRotationAxes;
		[SerializeField]
		private bool m_MaintainPositionOffset;
		[SerializeField]
		private bool m_MaintainRotationOffset;
	}
}
