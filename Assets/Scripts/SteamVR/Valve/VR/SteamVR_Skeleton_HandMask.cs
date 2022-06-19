using System;

namespace Valve.VR
{
	[Serializable]
	public class SteamVR_Skeleton_HandMask
	{
		public bool palm;
		public bool thumb;
		public bool index;
		public bool middle;
		public bool ring;
		public bool pinky;
		public bool[] values;
	}
}
