using System;
using UnityEngine;
using System.Collections.Generic;

namespace Photon.Pun
{
	public class PhotonAnimatorView : MonoBehaviourPun
	{
		[Serializable]
		public class SynchronizedParameter
		{
			public PhotonAnimatorView.ParameterType Type;
			public PhotonAnimatorView.SynchronizeType SynchronizeType;
			public string Name;
		}

		[Serializable]
		public class SynchronizedLayer
		{
			public PhotonAnimatorView.SynchronizeType SynchronizeType;
			public int LayerIndex;
		}

		public enum ParameterType
		{
			Float = 1,
			Int = 3,
			Bool = 4,
			Trigger = 9,
		}

		public enum SynchronizeType
		{
			Disabled = 0,
			Discrete = 1,
			Continuous = 2,
		}

		[SerializeField]
		private bool ShowLayerWeightsInspector;
		[SerializeField]
		private bool ShowParameterInspector;
		[SerializeField]
		private List<PhotonAnimatorView.SynchronizedParameter> m_SynchronizeParameters;
		[SerializeField]
		private List<PhotonAnimatorView.SynchronizedLayer> m_SynchronizeLayers;
	}
}
