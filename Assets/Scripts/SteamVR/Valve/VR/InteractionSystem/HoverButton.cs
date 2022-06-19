using UnityEngine;

namespace Valve.VR.InteractionSystem
{
	public class HoverButton : MonoBehaviour
	{
		public Transform movingPart;
		public Vector3 localMoveDistance;
		public float engageAtPercent;
		public float disengageAtPercent;
		public HandEvent onButtonDown;
		public HandEvent onButtonUp;
		public HandEvent onButtonIsPressed;
		public bool engaged;
		public bool buttonDown;
		public bool buttonUp;
	}
}
