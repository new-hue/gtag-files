using UnityEngine;
using Valve.VR;
using Valve.VR.InteractionSystem;

namespace Valve.VR.InteractionSystem.Sample
{
	public class Planting : MonoBehaviour
	{
		public SteamVR_Action_Boolean plantAction;
		public Hand hand;
		public GameObject prefabToPlant;
	}
}
