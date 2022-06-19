using UnityEngine.Playables;
using UnityEngine;
using Cinemachine;

public class CinemachineShot : PlayableAsset
{
	public override Playable CreatePlayable(PlayableGraph graph, GameObject owner)
	{
		return default(Playable);
	}

	public string DisplayName;
	public ExposedReference<CinemachineVirtualCameraBase> VirtualCamera;
}
