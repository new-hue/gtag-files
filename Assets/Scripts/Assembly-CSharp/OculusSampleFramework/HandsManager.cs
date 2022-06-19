using UnityEngine;

namespace OculusSampleFramework
{
	public class HandsManager : MonoBehaviour
	{
		public enum HandsVisualMode
		{
			Mesh = 0,
			Skeleton = 1,
			Both = 2,
		}

		[SerializeField]
		private GameObject _leftHand;
		[SerializeField]
		private GameObject _rightHand;
		public HandsVisualMode VisualMode;
	}
}
