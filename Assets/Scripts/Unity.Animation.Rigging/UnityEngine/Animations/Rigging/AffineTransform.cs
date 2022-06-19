using System;
using UnityEngine;

namespace UnityEngine.Animations.Rigging
{
	[Serializable]
	public struct AffineTransform
	{
		public AffineTransform(Vector3 t, Quaternion r) : this()
		{
		}

		public Vector3 translation;
		public Quaternion rotation;
	}
}
