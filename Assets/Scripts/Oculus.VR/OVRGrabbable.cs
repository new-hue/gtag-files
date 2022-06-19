using UnityEngine;

public class OVRGrabbable : MonoBehaviour
{
	[SerializeField]
	protected bool m_allowOffhandGrab;
	[SerializeField]
	protected bool m_snapPosition;
	[SerializeField]
	protected bool m_snapOrientation;
	[SerializeField]
	protected Transform m_snapOffset;
	[SerializeField]
	protected Collider[] m_grabPoints;
}
