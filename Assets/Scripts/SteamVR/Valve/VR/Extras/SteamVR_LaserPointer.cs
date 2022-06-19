using UnityEngine;
using Valve.VR;

namespace Valve.VR.Extras
{
	public class SteamVR_LaserPointer : MonoBehaviour
	{
		public SteamVR_Behaviour_Pose pose;
		public SteamVR_Action_Boolean interactWithUI;
		public bool active;
		public Color color;
		public float thickness;
		public Color clickColor;
		public GameObject holder;
		public GameObject pointer;
		public bool addRigidBody;
		public Transform reference;
	}
}
