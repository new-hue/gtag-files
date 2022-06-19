using System;

namespace Photon.Pun
{
	[Serializable]
	public class PhotonTransformViewRotationModel
	{
		public enum InterpolateOptions
		{
			Disabled = 0,
			RotateTowards = 1,
			Lerp = 2,
		}

		public bool SynchronizeEnabled;
		public InterpolateOptions InterpolateOption;
		public float InterpolateRotateTowardsSpeed;
		public float InterpolateLerpSpeed;
	}
}
