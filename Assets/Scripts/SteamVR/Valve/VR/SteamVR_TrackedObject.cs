using UnityEngine;

namespace Valve.VR
{
	public class SteamVR_TrackedObject : MonoBehaviour
	{
		public enum EIndex
		{
			None = -1,
			Hmd = 0,
			Device1 = 1,
			Device2 = 2,
			Device3 = 3,
			Device4 = 4,
			Device5 = 5,
			Device6 = 6,
			Device7 = 7,
			Device8 = 8,
			Device9 = 9,
			Device10 = 10,
			Device11 = 11,
			Device12 = 12,
			Device13 = 13,
			Device14 = 14,
			Device15 = 15,
			Device16 = 16,
		}

		private SteamVR_TrackedObject()
		{
		}

		public EIndex index;
		public Transform origin;
	}
}
