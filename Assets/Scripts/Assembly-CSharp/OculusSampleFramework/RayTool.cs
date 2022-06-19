using UnityEngine;

namespace OculusSampleFramework
{
	public class RayTool : InteractableTool
	{
		[SerializeField]
		private RayToolView _rayToolView;
		[SerializeField]
		private float _coneAngleDegrees;
		[SerializeField]
		private float _farFieldMaxDistance;
	}
}
