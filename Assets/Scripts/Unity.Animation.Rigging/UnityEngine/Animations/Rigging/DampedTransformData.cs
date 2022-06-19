using System;
using UnityEngine;

namespace UnityEngine.Animations.Rigging
{
	[Serializable]
	public struct DampedTransformData
	{
		[SerializeField]
		private Transform m_ConstrainedObject;
		[SerializeField]
		private Transform m_Source;
		[SerializeField]
		private float m_DampPosition;
		[SerializeField]
		private float m_DampRotation;
		[SerializeField]
		private bool m_MaintainAim;
	}
}
