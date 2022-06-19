namespace DigitalOpus.MB.Core
{
	public class MB2_TexturePackerHorizontalVert : MB2_TexturePacker
	{
		public enum TexturePackingOrientation
		{
			horizontal = 0,
			vertical = 1,
		}

		public TexturePackingOrientation packingOrientation;
		public bool stretchImagesToEdges;
	}
}
