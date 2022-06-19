using UnityEngine;

namespace Valve.VR.InteractionSystem
{
	public class ComplexThrowable : MonoBehaviour
	{
		public enum AttachMode
		{
			FixedJoint = 0,
			Force = 1,
		}

		public float attachForce;
		public float attachForceDamper;
		public AttachMode attachMode;
		public Hand.AttachmentFlags attachmentFlags;
	}
}
