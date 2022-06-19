public class OVRPlugin
{
	public enum EyeTextureFormat
	{
		Default = 0,
		R8G8B8A8_sRGB = 0,
		R8G8B8A8 = 1,
		R16G16B16A16_FP = 2,
		R11G11B10_FP = 3,
		B8G8R8A8_sRGB = 4,
		B8G8R8A8 = 5,
		R5G6B5 = 11,
		EnumSize = 2147483647,
	}

	public enum ColorSpace
	{
		Unknown = 0,
		Unmanaged = 1,
		Rec_2020 = 2,
		Rec_709 = 3,
		Rift_CV1 = 4,
		Rift_S = 5,
		Quest = 6,
		P3 = 7,
		Adobe_RGB = 8,
	}

	public enum HandFinger
	{
		Thumb = 0,
		Index = 1,
		Middle = 2,
		Ring = 3,
		Pinky = 4,
		Max = 5,
	}

}
