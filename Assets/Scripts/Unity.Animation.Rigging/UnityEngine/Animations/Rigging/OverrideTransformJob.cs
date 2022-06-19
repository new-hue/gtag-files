using System;
using UnityEngine;

namespace UnityEngine.Animations.Rigging
{
	public struct OverrideTransformJob
	{
		public AffineTransform sourceInvLocalBindTx;
		public Quaternion sourceToWorldRot;
		public Quaternion sourceToLocalRot;
		public Quaternion sourceToPivotRot;
	}
}
