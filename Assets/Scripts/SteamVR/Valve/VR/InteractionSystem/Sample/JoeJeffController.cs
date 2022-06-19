using UnityEngine;
using Valve.VR;

namespace Valve.VR.InteractionSystem.Sample
{
	public class JoeJeffController : MonoBehaviour
	{
		public Transform Joystick;
		public float joyMove;
		public SteamVR_Action_Vector2 moveAction;
		public SteamVR_Action_Boolean jumpAction;
		public JoeJeff character;
		public Renderer jumpHighlight;
	}
}
