using UnityEngine;

namespace Valve.VR
{
	public class SteamVR_PlayArea : MonoBehaviour
	{
		public enum Size
		{
			Calibrated = 0,
			_400x300 = 1,
			_300x225 = 2,
			_200x150 = 3,
		}

		public float borderThickness;
		public float wireframeHeight;
		public bool drawWireframeWhenSelectedOnly;
		public bool drawInGame;
		public Size size;
		public Color color;
		public Vector3[] vertices;
	}
}
