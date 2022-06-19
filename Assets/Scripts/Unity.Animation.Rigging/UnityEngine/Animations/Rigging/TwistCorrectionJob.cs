using System;
using UnityEngine;

namespace UnityEngine.Animations.Rigging
{
	public struct TwistCorrectionJob
	{
		public Quaternion sourceInverseBindRotation;
		public Vector3 axisMask;
	}
}
