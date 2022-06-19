using System;
using UnityEngine;

namespace UnityEngine.Animations.Rigging
{
	[Serializable]
	public struct OverrideTransformData
	{
		public enum Space
		{
			World = 0,
			Local = 1,
			Pivot = 2,
		}

		[SerializeField]
		private Transform m_ConstrainedObject;
		[SerializeField]
		private Transform m_OverrideSource;
		[SerializeField]
		private Vector3 m_OverridePosition;
		[SerializeField]
		private Vector3 m_OverrideRotation;
		[SerializeField]
		private float m_PositionWeight;
		[SerializeField]
		private float m_RotationWeight;
		[SerializeField]
		private Space m_Space;
	}
}
