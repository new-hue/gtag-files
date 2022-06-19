using Photon.Pun;
using UnityEngine.EventSystems;
using UnityEngine;

namespace Photon.Pun.UtilityScripts
{
	public class OnClickDestroy : MonoBehaviourPun
	{
		public PointerEventData.InputButton Button;
		public KeyCode ModifierKey;
		public bool DestroyByRpc;
	}
}
