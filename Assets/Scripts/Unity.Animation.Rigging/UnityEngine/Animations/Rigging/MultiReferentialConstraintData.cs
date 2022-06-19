using System;
using UnityEngine;
using System.Collections.Generic;

namespace UnityEngine.Animations.Rigging
{
	[Serializable]
	public struct MultiReferentialConstraintData
	{
		[SerializeField]
		private int m_Driver;
		[SerializeField]
		private List<Transform> m_SourceObjects;
	}
}
