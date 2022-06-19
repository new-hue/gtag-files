using UnityEngine;
using System.Collections.Generic;

namespace Photon.Pun
{
	public class PhotonView : MonoBehaviour
	{
		public enum ObservableSearch
		{
			Manual = 0,
			AutoFindActive = 1,
			AutoFindAll = 2,
		}

		public byte Group;
		public int prefixField;
		public ViewSynchronization Synchronization;
		public OwnershipOption OwnershipTransfer;
		public ObservableSearch observableSearch;
		public List<Component> ObservedComponents;
		[SerializeField]
		public int sceneViewId;
		public int InstantiationId;
		[SerializeField]
		public bool isRuntimeInstantiated;
	}
}
