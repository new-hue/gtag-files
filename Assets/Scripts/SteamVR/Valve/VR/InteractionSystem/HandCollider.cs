using UnityEngine;
using System;

namespace Valve.VR.InteractionSystem
{
	public class HandCollider : MonoBehaviour
	{
		[Serializable]
		public class FingerColliders
		{
			public Transform[] thumbColliders;
			public Transform[] indexColliders;
			public Transform[] middleColliders;
			public Transform[] ringColliders;
			public Transform[] pinkyColliders;
		}

		public HandPhysics hand;
		public LayerMask collisionMask;
		public FingerColliders fingerColliders;
		public bool collidersInRadius;
	}
}
