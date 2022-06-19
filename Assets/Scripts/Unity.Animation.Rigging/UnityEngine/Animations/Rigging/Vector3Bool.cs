using System;

namespace UnityEngine.Animations.Rigging
{
	[Serializable]
	public struct Vector3Bool
	{
		public Vector3Bool(bool val) : this()
		{
		}

		public bool x;
		public bool y;
		public bool z;
	}
}
