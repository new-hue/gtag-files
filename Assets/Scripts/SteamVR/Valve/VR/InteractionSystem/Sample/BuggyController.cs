using UnityEngine;
using UnityEngine.UI;
using Valve.VR;

namespace Valve.VR.InteractionSystem.Sample
{
	public class BuggyController : MonoBehaviour
	{
		public Transform modelJoystick;
		public float joystickRot;
		public Transform modelTrigger;
		public float triggerRot;
		public BuggyBuddy buggy;
		public Transform buttonBrake;
		public Transform buttonReset;
		public Canvas ui_Canvas;
		public Image ui_rpm;
		public Image ui_speed;
		public RectTransform ui_steer;
		public float ui_steerangle;
		public Vector2 ui_fillAngles;
		public Transform resetToPoint;
		public SteamVR_Action_Vector2 actionSteering;
		public SteamVR_Action_Single actionThrottle;
		public SteamVR_Action_Boolean actionBrake;
		public SteamVR_Action_Boolean actionReset;
	}
}
