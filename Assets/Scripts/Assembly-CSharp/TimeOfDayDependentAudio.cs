using UnityEngine;

public class TimeOfDayDependentAudio : MonoBehaviour
{
	public AudioSource[] audioSources;
	public float[] volumes;
	public float currentVolume;
	public float stepTime;
	public BetterDayNightManager.WeatherType myWeather;
	public GameObject dependentStuff;
	public GameObject timeOfDayDependent;
	public bool includesAudio;
	public ParticleSystem myParticleSystem;
	public float positionMultiplierSet;
	public float positionMultiplier;
	public bool isModified;
}
