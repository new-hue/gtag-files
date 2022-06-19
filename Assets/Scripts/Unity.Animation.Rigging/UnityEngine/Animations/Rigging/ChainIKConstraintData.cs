using System;
using UnityEngine;

namespace UnityEngine.Animations.Rigging
{
	[Serializable]
	public struct ChainIKConstraintData
	{
		[SerializeField]
		private Transform m_Root;
		[SerializeField]
		private Transform m_Tip;
		[SerializeField]
		private Transform m_Target;
		[SerializeField]
		private float m_ChainRotationWeight;
		[SerializeField]
		private float m_TipRotationWeight;
		[SerializeField]
		private int m_MaxIterations;
		[SerializeField]
		private float m_Tolerance;
		[SerializeField]
		private bool m_MaintainTargetPositionOffset;
		[SerializeField]
		private bool m_MaintainTargetRotationOffset;
	}
}
