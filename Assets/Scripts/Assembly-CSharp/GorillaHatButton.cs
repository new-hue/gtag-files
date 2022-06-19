using UnityEngine;
using UnityEngine.UI;

public class GorillaHatButton : MonoBehaviour
{
	public enum HatButtonType
	{
		Hat = 0,
		Face = 1,
		Badge = 2,
	}

	public GorillaHatButtonParent buttonParent;
	public HatButtonType buttonType;
	public bool isOn;
	public Material offMaterial;
	public Material onMaterial;
	public string offText;
	public string onText;
	public Text myText;
	public float debounceTime;
	public float touchTime;
	public string cosmeticName;
	public bool testPress;
}
