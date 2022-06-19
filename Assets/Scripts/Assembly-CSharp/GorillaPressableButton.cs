using UnityEngine;
using UnityEngine.UI;

public class GorillaPressableButton : MonoBehaviour
{
	public Material pressedMaterial;
	public Material unpressedMaterial;
	public MeshRenderer buttonRenderer;
	public bool isOn;
	public float debounceTime;
	public float touchTime;
	public bool testPress;
	public bool testHandLeft;
	[TextAreaAttribute]
	public string offText;
	[TextAreaAttribute]
	public string onText;
	public Text myText;
}
