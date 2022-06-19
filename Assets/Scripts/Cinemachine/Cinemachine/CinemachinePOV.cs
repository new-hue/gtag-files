namespace Cinemachine
{
	public class CinemachinePOV : CinemachineComponentBase
	{
		public enum RecenterTargetMode
		{
			None = 0,
			FollowTargetForward = 1,
			LookAtTargetForward = 2,
		}

		public RecenterTargetMode m_RecenterTarget;
		public AxisState m_VerticalAxis;
		public AxisState.Recentering m_VerticalRecentering;
		public AxisState m_HorizontalAxis;
		public AxisState.Recentering m_HorizontalRecentering;
		public bool m_ApplyBeforeBody;
	}
}
