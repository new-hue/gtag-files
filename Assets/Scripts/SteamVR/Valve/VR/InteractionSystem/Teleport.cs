using UnityEngine;
using Valve.VR;

namespace Valve.VR.InteractionSystem
{
	public class Teleport : MonoBehaviour
	{
		public SteamVR_Action_Boolean teleportAction;
		public LayerMask traceLayerMask;
		public LayerMask floorFixupTraceLayerMask;
		public float floorFixupMaximumTraceDistance;
		public Material areaVisibleMaterial;
		public Material areaLockedMaterial;
		public Material areaHighlightedMaterial;
		public Material pointVisibleMaterial;
		public Material pointLockedMaterial;
		public Material pointHighlightedMaterial;
		public Transform destinationReticleTransform;
		public Transform invalidReticleTransform;
		public GameObject playAreaPreviewCorner;
		public GameObject playAreaPreviewSide;
		public Color pointerValidColor;
		public Color pointerInvalidColor;
		public Color pointerLockedColor;
		public bool showPlayAreaMarker;
		public float teleportFadeTime;
		public float meshFadeTime;
		public float arcDistance;
		public Transform onActivateObjectTransform;
		public Transform onDeactivateObjectTransform;
		public float activateObjectTime;
		public float deactivateObjectTime;
		public AudioSource pointerAudioSource;
		public AudioSource loopingAudioSource;
		public AudioSource headAudioSource;
		public AudioSource reticleAudioSource;
		public AudioClip teleportSound;
		public AudioClip pointerStartSound;
		public AudioClip pointerLoopSound;
		public AudioClip pointerStopSound;
		public AudioClip goodHighlightSound;
		public AudioClip badHighlightSound;
		public bool debugFloor;
		public bool showOffsetReticle;
		public Transform offsetReticleTransform;
		public MeshRenderer floorDebugSphere;
		public LineRenderer floorDebugLine;
	}
}
