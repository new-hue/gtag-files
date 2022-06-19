using UnityEngine;
using System;
using UnityEngine.UI;
using UnityEngine.Events;

namespace Photon.Pun.UtilityScripts
{
	public class TabViewManager : MonoBehaviour
	{
		[Serializable]
		public class Tab
		{
			public string ID;
			public Toggle Toggle;
			public RectTransform View;
		}

		[Serializable]
		public class TabChangeEvent : UnityEvent<string>
		{
		}

		public ToggleGroup ToggleGroup;
		public Tab[] Tabs;
		public TabChangeEvent OnTabChanged;
	}
}
