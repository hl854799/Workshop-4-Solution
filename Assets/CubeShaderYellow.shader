﻿//UNITY_SHADER_NO_UPGRADE

Shader "Unlit/CubeShaderYellow"
{
	SubShader
	{
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag

			#include "UnityCG.cginc"

			struct vertIn
			{
				float4 vertex : POSITION;
			};

			struct vertOut
			{
				float4 vertex : SV_POSITION;
			};

			// Implementation of the vertex shader
			vertOut vert(vertIn v)
			{
				vertOut o;
				o.vertex = mul(UNITY_MATRIX_MVP, v.vertex);
				return o;
			}
			
			// Implementation of the fragment shader
			fixed4 frag(vertOut v) : SV_Target
			{
				// Task 2 -- The next funcition works with Color in G,R,B and Alpha Channels
				return float4(1.0f, 1.0f, 0.0f, 0.5f);
			}
			ENDCG
		}
	}
}