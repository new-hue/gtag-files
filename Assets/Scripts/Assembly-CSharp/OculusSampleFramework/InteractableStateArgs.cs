using System;

namespace OculusSampleFramework
{
	public class InteractableStateArgs : EventArgs
	{
		public InteractableStateArgs(Interactable interactable, InteractableTool tool, InteractableState newInteractableState, InteractableState oldState, ColliderZoneArgs colliderArgs)
		{
		}

	}
}
