using UnityEngine;
using UnityEngine.UI;

public class GorillaPlayerLineButton : MonoBehaviour
{
	public enum ButtonType
	{
		HateSpeech = 0,
		Cheating = 1,
		Toxicity = 2,
		Mute = 3,
		Report = 4,
		Cancel = 5,
	}

	public GorillaPlayerScoreboardLine parentLine;
	public ButtonType buttonType;
	public bool isOn;
	public Material offMaterial;
	public Material onMaterial;
	public string offText;
	public string onText;
	public Text myText;
	public float debounceTime;
	public float touchTime;
	public bool testPress;
}
