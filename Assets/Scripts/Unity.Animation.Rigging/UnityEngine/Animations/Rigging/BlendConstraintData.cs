using System;
using UnityEngine;

namespace UnityEngine.Animations.Rigging
{
	[Serializable]
	public struct BlendConstraintData
	{
		[SerializeField]
		private Transform m_ConstrainedObject;
		[SerializeField]
		private Transform m_SourceA;
		[SerializeField]
		private Transform m_SourceB;
		[SerializeField]
		private bool m_BlendPosition;
		[SerializeField]
		private bool m_BlendRotation;
		[SerializeField]
		private float m_PositionWeight;
		[SerializeField]
		private float m_RotationWeight;
		[SerializeField]
		private bool m_MaintainPositionOffsets;
		[SerializeField]
		private bool m_MaintainRotationOffsets;
	}
}
