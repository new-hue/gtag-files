using UnityEngine;

public class Campfire : MonoBehaviour
{
	public Transform baseFire;
	public Transform middleFire;
	public Transform topFire;
	public float baseMultiplier;
	public float middleMultiplier;
	public float topMultiplier;
	public float bottomRange;
	public float middleRange;
	public float topRange;
	public float perlinStepBottom;
	public float perlinStepMiddle;
	public float perlinStepTop;
	public float startingRotationBottom;
	public float startingRotationMiddle;
	public float startingRotationTop;
	public float slerp;
	public string lastTimeOfDay;
	public Material mat;
	public int overrideDayNight;
	public bool[] isActive;
	public bool wasActive;
}
