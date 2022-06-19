using UnityEngine;
using System;
using UnityEngine.Events;

namespace OculusSampleFramework
{
	public class Interactable : MonoBehaviour
	{
		[Serializable]
		public class InteractableStateArgsEvent : UnityEvent<InteractableStateArgs>
		{
		}

		public InteractableStateArgsEvent InteractableStateChanged;
	}
}
