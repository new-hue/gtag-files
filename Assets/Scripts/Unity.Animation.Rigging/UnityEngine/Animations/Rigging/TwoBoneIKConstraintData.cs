using System;
using UnityEngine;

namespace UnityEngine.Animations.Rigging
{
	[Serializable]
	public struct TwoBoneIKConstraintData
	{
		[SerializeField]
		private Transform m_Root;
		[SerializeField]
		private Transform m_Mid;
		[SerializeField]
		private Transform m_Tip;
		[SerializeField]
		private Transform m_Target;
		[SerializeField]
		private Transform m_Hint;
		[SerializeField]
		private float m_TargetPositionWeight;
		[SerializeField]
		private float m_TargetRotationWeight;
		[SerializeField]
		private float m_HintWeight;
		[SerializeField]
		private bool m_MaintainTargetPositionOffset;
		[SerializeField]
		private bool m_MaintainTargetRotationOffset;
	}
}
