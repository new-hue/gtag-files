using UnityEngine;
using Valve.VR.InteractionSystem;
using Valve.VR;

namespace Valve.VR.InteractionSystem.Sample
{
	public class SquishyToy : MonoBehaviour
	{
		public Interactable interactable;
		public SkinnedMeshRenderer renderer;
		public bool affectMaterial;
		public SteamVR_Action_Single gripSqueeze;
		public SteamVR_Action_Single pinchSqueeze;
	}
}
