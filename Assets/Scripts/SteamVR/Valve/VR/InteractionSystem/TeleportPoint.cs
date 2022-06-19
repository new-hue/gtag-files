using UnityEngine;

namespace Valve.VR.InteractionSystem
{
	public class TeleportPoint : TeleportMarkerBase
	{
		public enum TeleportPointType
		{
			MoveToLocation = 0,
			SwitchToNewScene = 1,
		}

		public TeleportPointType teleportType;
		public string title;
		public string switchToScene;
		public Color titleVisibleColor;
		public Color titleHighlightedColor;
		public Color titleLockedColor;
		public bool playerSpawnPoint;
	}
}
