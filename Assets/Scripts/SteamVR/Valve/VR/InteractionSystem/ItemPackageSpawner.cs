using UnityEngine;
using UnityEngine.Events;

namespace Valve.VR.InteractionSystem
{
	public class ItemPackageSpawner : MonoBehaviour
	{
		public ItemPackage _itemPackage;
		public bool useItemPackagePreview;
		public bool requireGrabActionToTake;
		public bool requireReleaseActionToReturn;
		public bool showTriggerHint;
		public Hand.AttachmentFlags attachmentFlags;
		public bool takeBackItem;
		public bool acceptDifferentItems;
		public UnityEvent pickupEvent;
		public UnityEvent dropEvent;
		public bool justPickedUpItem;
	}
}
