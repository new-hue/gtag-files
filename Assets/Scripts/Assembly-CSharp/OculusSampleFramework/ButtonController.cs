using UnityEngine;

namespace OculusSampleFramework
{
	public class ButtonController : Interactable
	{
		public enum ContactTest
		{
			PerpenTest = 0,
			BackwardsPress = 1,
		}

		[SerializeField]
		private GameObject _proximityZone;
		[SerializeField]
		private GameObject _contactZone;
		[SerializeField]
		private GameObject _actionZone;
		[SerializeField]
		private ContactTest[] _contactTests;
		[SerializeField]
		private Transform _buttonPlaneCenter;
		[SerializeField]
		private bool _makeSureToolIsOnPositiveSide;
		[SerializeField]
		private Vector3 _localButtonDirection;
		[SerializeField]
		private InteractableToolTags[] _allValidToolsTags;
	}
}
