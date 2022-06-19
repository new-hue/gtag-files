using UnityEngine;
using UnityEngine.Events;

namespace Valve.VR.InteractionSystem
{
	public class InteractableHoverEvents : MonoBehaviour
	{
		public UnityEvent onHandHoverBegin;
		public UnityEvent onHandHoverEnd;
		public UnityEvent onAttachedToHand;
		public UnityEvent onDetachedFromHand;
	}
}
