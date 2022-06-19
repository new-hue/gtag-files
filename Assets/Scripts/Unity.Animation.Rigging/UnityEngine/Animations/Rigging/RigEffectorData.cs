using System;
using UnityEngine;

namespace UnityEngine.Animations.Rigging
{
	[Serializable]
	public class RigEffectorData
	{
		[Serializable]
		public struct Style
		{
			public Mesh shape;
			public Color color;
			public float size;
			public Vector3 position;
			public Vector3 rotation;
		}

		[SerializeField]
		private Transform m_Transform;
		[SerializeField]
		private Style m_Style;
		[SerializeField]
		private bool m_Visible;
	}
}
