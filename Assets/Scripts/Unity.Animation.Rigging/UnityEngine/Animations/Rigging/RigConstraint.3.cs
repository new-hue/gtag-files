using UnityEngine;

namespace UnityEngine.Animations.Rigging
{
	public class RigConstraint<TJob, TData, TBinder> : MonoBehaviour
	{
		[SerializeField]
		protected float m_Weight;
		[SerializeField]
		protected TData m_Data;
	}
}
