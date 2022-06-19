using Photon.Pun;
using UnityEngine.EventSystems;
using UnityEngine;

namespace Photon.Pun.UtilityScripts
{
	public class OnClickRpc : MonoBehaviourPun
	{
		public PointerEventData.InputButton Button;
		public KeyCode ModifierKey;
		public RpcTarget Target;
	}
}
