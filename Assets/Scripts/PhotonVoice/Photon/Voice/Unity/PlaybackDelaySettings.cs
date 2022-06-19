using System;

namespace Photon.Voice.Unity
{
	[Serializable]
	public struct PlaybackDelaySettings
	{
		public int MinDelaySoft;
		public int MaxDelaySoft;
		public int MaxDelayHard;
	}
}
