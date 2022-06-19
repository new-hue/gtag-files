using System.Collections.Generic;
using UnityEngine;

namespace Cinemachine
{
	internal class ShrinkablePolygon
	{
		public float m_FrustumHeight;
		public int m_State;
		public List<Vector2> m_IntersectionPoints;
		public float m_Area;
	}
}
