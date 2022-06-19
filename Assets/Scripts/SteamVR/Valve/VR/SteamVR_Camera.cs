using UnityEngine;

namespace Valve.VR
{
	public class SteamVR_Camera : MonoBehaviour
	{
		[SerializeField]
		private Transform _head;
		[SerializeField]
		private Transform _ears;
		public bool wireframe;
	}
}
