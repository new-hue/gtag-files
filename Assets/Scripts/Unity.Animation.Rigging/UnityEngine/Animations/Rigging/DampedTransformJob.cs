using System;
using UnityEngine;

namespace UnityEngine.Animations.Rigging
{
	public struct DampedTransformJob
	{
		public AffineTransform localBindTx;
		public Vector3 aimBindAxis;
		public AffineTransform prevDrivenTx;
	}
}
