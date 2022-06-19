using UnityEngine;
using UnityEngine.Events;

namespace Valve.VR.InteractionSystem
{
	public class ArcheryTarget : MonoBehaviour
	{
		public UnityEvent onTakeDamage;
		public bool onceOnly;
		public Transform targetCenter;
		public Transform baseTransform;
		public Transform fallenDownTransform;
		public float fallTime;
	}
}
