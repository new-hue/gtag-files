using UnityEngine;

namespace Valve.VR.InteractionSystem
{
	public class HandPhysics : MonoBehaviour
	{
		public HandCollider handColliderPrefab;
		public HandCollider handCollider;
		public LayerMask clearanceCheckMask;
		public Hand hand;
	}
}
