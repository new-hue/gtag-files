using UnityEngine;

namespace Valve.VR
{
	public class SteamVR_Skybox : MonoBehaviour
	{
		public enum CellSize
		{
			x1024 = 0,
			x64 = 1,
			x32 = 2,
			x16 = 3,
			x8 = 4,
		}

		public Texture front;
		public Texture back;
		public Texture left;
		public Texture right;
		public Texture top;
		public Texture bottom;
		public CellSize StereoCellSize;
		public float StereoIpdMm;
	}
}
