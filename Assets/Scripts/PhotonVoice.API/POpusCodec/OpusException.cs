using System;
using POpusCodec.Enums;

namespace POpusCodec
{
	public class OpusException : Exception
	{
		public OpusException(OpusStatusCode statusCode, string message)
		{
		}

	}
}
