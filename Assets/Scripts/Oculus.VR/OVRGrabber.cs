using UnityEngine;

public class OVRGrabber : MonoBehaviour
{
	public float grabBegin;
	public float grabEnd;
	[SerializeField]
	protected bool m_parentHeldObject;
	[SerializeField]
	protected bool m_moveHandPosition;
	[SerializeField]
	protected Transform m_gripTransform;
	[SerializeField]
	protected Collider[] m_grabVolumes;
	[SerializeField]
	protected OVRInput.Controller m_controller;
	[SerializeField]
	protected Transform m_parentTransform;
	[SerializeField]
	protected GameObject m_player;
}
