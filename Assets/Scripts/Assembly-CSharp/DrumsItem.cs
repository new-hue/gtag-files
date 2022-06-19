using UnityEngine;

public class DrumsItem : MonoBehaviour
{
	public Collider[] collidersForThisDrum;
	public AudioSource[] drumsAS;
	public float maxDrumVolume;
	public float minDrumVolume;
	public float maxDrumVolumeVelocity;
	public LayerMask drumsTouchable;
	public int onlineOffset;
	public VRRig myRig;
}
