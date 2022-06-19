using UnityEngine;
using System;
using System.Collections.Generic;

namespace UnityEngine.Animations.Rigging
{
	public class RigBuilder : MonoBehaviour
	{
		[Serializable]
		public class RigLayer
		{
			public RigLayer(Rig rig, bool active)
			{
			}

			public Rig rig;
			public bool active;
		}

		[SerializeField]
		private List<RigBuilder.RigLayer> m_RigLayers;
	}
}
