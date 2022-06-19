using UnityEngine;

namespace UnityEngine.EventSystems
{
	public class OVRInputModule : PointerInputModule
	{
		public override void Process()
		{
		}

		public Transform rayTransform;
		public OVRCursor m_Cursor;
		public OVRInput.Button joyPadClickButton;
		public KeyCode gazeClickKey;
		public bool performSphereCastForGazepointer;
		public bool useRightStickScroll;
		public float rightStickDeadZone;
		public bool useSwipeScroll;
		public float swipeDragThreshold;
		public float swipeDragScale;
		public bool InvertSwipeXAxis;
		public float angleDragThreshold;
		[SerializeField]
		private float m_SpherecastRadius;
		[SerializeField]
		private string m_HorizontalAxis;
		[SerializeField]
		private string m_VerticalAxis;
		[SerializeField]
		private string m_SubmitButton;
		[SerializeField]
		private string m_CancelButton;
		[SerializeField]
		private float m_InputActionsPerSecond;
		[SerializeField]
		private bool m_AllowActivationOnMobileDevice;
	}
}
