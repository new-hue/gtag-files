using UnityEngine;
using System.Collections.Generic;

public class BetterDayNightManager : MonoBehaviour
{
	public enum WeatherType
	{
		None = 0,
		Raining = 1,
		All = 2,
	}

	public Shader standard;
	public Shader gorillaUnlit;
	public Shader gorillaUnlitCutout;
	public Material[] standardMaterialsUnlit;
	public Material[] standardMaterialsUnlitDarker;
	public Material[] dayNightSupportedMaterials;
	public Material[] dayNightSupportedMaterialsCutout;
	public Texture2D[] dayNightLightmaps;
	public Texture2D[] dayNightWeatherLightmaps;
	public Texture2D[] dayNightSkyboxTextures;
	public Texture2D[] dayNightWeatherSkyboxTextures;
	public float[] standardUnlitColor;
	public float[] standardUnlitColorWithPremadeColorDarker;
	public Material skyMaterial;
	public float currentLerp;
	public float currentIncrement;
	public float currentTimestep;
	public float timeOfDay;
	public double[] timeOfDayRange;
	public double timeMultiplier;
	public int currentTimeIndex;
	public int currentWeatherIndex;
	public int mySeed;
	public WeatherType[] weatherCycle;
	public string currentTimeOfDay;
	public float rainChance;
	public int maxRainDuration;
	public float calcRainPercent;
	public AddCollidersToParticleSystemTriggers[] weatherSystems;
	public List<Collider> collidersToAddToWeatherSystems;
	public int overrideIndex;
}
