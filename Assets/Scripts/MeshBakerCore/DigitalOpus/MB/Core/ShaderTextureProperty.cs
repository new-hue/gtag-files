using System;

namespace DigitalOpus.MB.Core
{
	[Serializable]
	public class ShaderTextureProperty
	{
		public ShaderTextureProperty(string n, bool norm)
		{
		}

		public string name;
		public bool isNormalMap;
		public bool isNormalDontKnow;
	}
}
