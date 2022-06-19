Shader "Gorilla/CutoffLerpLightmap" {
	Properties {
		_Color ("Main Color", Vector) = (1,1,1,1)
		_SpecColor ("Spec Color", Vector) = (1,1,1,0)
		_Emission ("Emissive Color", Vector) = (0,0,0,0)
		[PowerSlider(5.0)] _Shininess ("Shininess", Range(0.1, 1)) = 0.7
		_MainTex ("Base (RGB) Trans (A)", 2D) = "white" {}
		_Cutoff ("Alpha cutoff", Range(0, 1)) = 0.5
		_Lightmap1 ("Lightmap 1 (RGBM)", 2D) = "white" {}
		_Lightmap2 ("Lightmap 2 (RGBM)", 2D) = "white" {}
		_LerpValue ("Lerp Value", Float) = 0.5
	}
	SubShader {
		LOD 100
		Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "AlphaTest" "RenderType" = "TransparentCutout" }
		Pass {
			LOD 100
			Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "Vertex" "QUEUE" = "AlphaTest" "RenderType" = "TransparentCutout" }
			ColorMask RGB -1
			AlphaToMask On
			Fog {
				Mode Off
			}
			GpuProgramID 170603
			Program "vp" {
				SubProgram "d3d11 " {
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						vec4 _Color;
						vec4 _SpecColor;
						vec4 _Emission;
						float _Shininess;
						ivec4 unity_VertexLightParams;
						vec4 _MainTex_ST;
						vec4 unused_0_7;
					};
					layout(std140) uniform UnityLighting {
						vec4 unused_1_0[7];
						vec4 unity_LightColor[8];
						vec4 unused_1_2[7];
						vec4 unity_LightPosition[8];
						vec4 unused_1_4[32];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_2_2[3];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 glstate_lightmodel_ambient;
						vec4 unused_3_1[8];
						mat4x4 unity_MatrixV;
						mat4x4 unity_MatrixInvV;
						mat4x4 unity_MatrixVP;
						vec4 unused_3_5[2];
					};
					in  vec3 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec3 in_TEXCOORD0;
					out vec4 vs_COLOR0;
					out vec3 vs_COLOR1;
					out vec2 vs_TEXCOORD0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					float u_xlat21;
					float u_xlat22;
					int u_xlati23;
					float u_xlat24;
					bool u_xlatb24;
					void main()
					{
					    u_xlat0.xyz = unity_ObjectToWorld[0].yyy * unity_MatrixV[1].xyz;
					    u_xlat0.xyz = unity_MatrixV[0].xyz * unity_ObjectToWorld[0].xxx + u_xlat0.xyz;
					    u_xlat0.xyz = unity_MatrixV[2].xyz * unity_ObjectToWorld[0].zzz + u_xlat0.xyz;
					    u_xlat0.xyz = unity_MatrixV[3].xyz * unity_ObjectToWorld[0].www + u_xlat0.xyz;
					    u_xlat1.xyz = unity_ObjectToWorld[1].yyy * unity_MatrixV[1].xyz;
					    u_xlat1.xyz = unity_MatrixV[0].xyz * unity_ObjectToWorld[1].xxx + u_xlat1.xyz;
					    u_xlat1.xyz = unity_MatrixV[2].xyz * unity_ObjectToWorld[1].zzz + u_xlat1.xyz;
					    u_xlat1.xyz = unity_MatrixV[3].xyz * unity_ObjectToWorld[1].www + u_xlat1.xyz;
					    u_xlat2.xyz = unity_ObjectToWorld[2].yyy * unity_MatrixV[1].xyz;
					    u_xlat2.xyz = unity_MatrixV[0].xyz * unity_ObjectToWorld[2].xxx + u_xlat2.xyz;
					    u_xlat2.xyz = unity_MatrixV[2].xyz * unity_ObjectToWorld[2].zzz + u_xlat2.xyz;
					    u_xlat2.xyz = unity_MatrixV[3].xyz * unity_ObjectToWorld[2].www + u_xlat2.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[3].yyy * unity_MatrixV[1].xyz;
					    u_xlat3.xyz = unity_MatrixV[0].xyz * unity_ObjectToWorld[3].xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_MatrixV[2].xyz * unity_ObjectToWorld[3].zzz + u_xlat3.xyz;
					    u_xlat3.xyz = unity_MatrixV[3].xyz * unity_ObjectToWorld[3].www + u_xlat3.xyz;
					    u_xlat4.xyz = unity_WorldToObject[1].xyz * unity_MatrixInvV[0].yyy;
					    u_xlat4.xyz = unity_WorldToObject[0].xyz * unity_MatrixInvV[0].xxx + u_xlat4.xyz;
					    u_xlat4.xyz = unity_WorldToObject[2].xyz * unity_MatrixInvV[0].zzz + u_xlat4.xyz;
					    u_xlat4.xyz = unity_WorldToObject[3].xyz * unity_MatrixInvV[0].www + u_xlat4.xyz;
					    u_xlat5.xyz = unity_WorldToObject[1].xyz * unity_MatrixInvV[1].yyy;
					    u_xlat5.xyz = unity_WorldToObject[0].xyz * unity_MatrixInvV[1].xxx + u_xlat5.xyz;
					    u_xlat5.xyz = unity_WorldToObject[2].xyz * unity_MatrixInvV[1].zzz + u_xlat5.xyz;
					    u_xlat5.xyz = unity_WorldToObject[3].xyz * unity_MatrixInvV[1].www + u_xlat5.xyz;
					    u_xlat6.xyz = unity_WorldToObject[1].xyz * unity_MatrixInvV[2].yyy;
					    u_xlat6.xyz = unity_WorldToObject[0].xyz * unity_MatrixInvV[2].xxx + u_xlat6.xyz;
					    u_xlat6.xyz = unity_WorldToObject[2].xyz * unity_MatrixInvV[2].zzz + u_xlat6.xyz;
					    u_xlat6.xyz = unity_WorldToObject[3].xyz * unity_MatrixInvV[2].www + u_xlat6.xyz;
					    u_xlat1.xyz = u_xlat1.xyz * in_POSITION0.yyy;
					    u_xlat0.xyz = u_xlat0.xyz * in_POSITION0.xxx + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat2.xyz * in_POSITION0.zzz + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat3.xyz + u_xlat0.xyz;
					    u_xlat1.x = dot(u_xlat4.xyz, in_NORMAL0.xyz);
					    u_xlat1.y = dot(u_xlat5.xyz, in_NORMAL0.xyz);
					    u_xlat1.z = dot(u_xlat6.xyz, in_NORMAL0.xyz);
					    u_xlat21 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat21 = inversesqrt(u_xlat21);
					    u_xlat1.xyz = vec3(u_xlat21) * u_xlat1.xyz;
					    u_xlat21 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat21 = inversesqrt(u_xlat21);
					    u_xlat2.xyz = _Color.xyz * glstate_lightmodel_ambient.xyz + _Emission.xyz;
					    u_xlat22 = _Shininess * 128.0;
					    u_xlat3.xyz = u_xlat2.xyz;
					    u_xlat4.x = float(0.0);
					    u_xlat4.y = float(0.0);
					    u_xlat4.z = float(0.0);
					    for(int u_xlati_loop_1 = 0 ; u_xlati_loop_1<unity_VertexLightParams.x ; u_xlati_loop_1++)
					    {
					        u_xlat24 = dot(u_xlat1.xyz, unity_LightPosition[u_xlati_loop_1].xyz);
					        u_xlat24 = max(u_xlat24, 0.0);
					        u_xlat5.xyz = vec3(u_xlat24) * _Color.xyz;
					        u_xlat5.xyz = u_xlat5.xyz * unity_LightColor[u_xlati_loop_1].xyz;
					        u_xlatb24 = 0.0<u_xlat24;
					        if(u_xlatb24){
					            u_xlat6.xyz = (-u_xlat0.xyz) * vec3(u_xlat21) + unity_LightPosition[u_xlati_loop_1].xyz;
					            u_xlat24 = dot(u_xlat6.xyz, u_xlat6.xyz);
					            u_xlat24 = inversesqrt(u_xlat24);
					            u_xlat6.xyz = vec3(u_xlat24) * u_xlat6.xyz;
					            u_xlat24 = dot(u_xlat1.xyz, u_xlat6.xyz);
					            u_xlat24 = max(u_xlat24, 0.0);
					            u_xlat24 = log2(u_xlat24);
					            u_xlat24 = u_xlat22 * u_xlat24;
					            u_xlat24 = exp2(u_xlat24);
					            u_xlat24 = min(u_xlat24, 1.0);
					            u_xlat24 = u_xlat24 * 0.5;
					            u_xlat4.xyz = vec3(u_xlat24) * unity_LightColor[u_xlati_loop_1].xyz + u_xlat4.xyz;
					        }
					        u_xlat5.xyz = u_xlat5.xyz * vec3(0.5, 0.5, 0.5);
					        u_xlat5.xyz = min(u_xlat5.xyz, vec3(1.0, 1.0, 1.0));
					        u_xlat3.xyz = u_xlat3.xyz + u_xlat5.xyz;
					    }
					    vs_COLOR1.xyz = u_xlat4.xyz * _SpecColor.xyz;
					    vs_COLOR1.xyz = clamp(vs_COLOR1.xyz, 0.0, 1.0);
					    vs_COLOR0.xyz = u_xlat3.xyz;
					    vs_COLOR0.xyz = clamp(vs_COLOR0.xyz, 0.0, 1.0);
					    vs_COLOR0.w = _Color.w;
					    vs_COLOR0.w = clamp(vs_COLOR0.w, 0.0, 1.0);
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						vec4 _Color;
						vec4 _SpecColor;
						vec4 _Emission;
						float _Shininess;
						ivec4 unity_VertexLightParams;
						vec4 _MainTex_ST;
						vec4 unused_0_7;
					};
					layout(std140) uniform UnityLighting {
						vec4 unused_1_0[7];
						vec4 unity_LightColor[8];
						vec4 unused_1_2[7];
						vec4 unity_LightPosition[8];
						vec4 unused_1_4[32];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_2_2[3];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_3_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_3_2[4];
						mat4x4 unity_StereoMatrixInvV[2];
						vec4 unused_3_4[4];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_3_6[40];
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					layout(std140) uniform UnityPerFrame {
						vec4 glstate_lightmodel_ambient;
						vec4 unused_5_1[5];
					};
					in  vec3 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec3 in_TEXCOORD0;
					out vec4 vs_COLOR0;
					out vec3 vs_COLOR1;
					out vec2 vs_TEXCOORD0;
					int u_xlati0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					vec3 u_xlat7;
					float u_xlat22;
					float u_xlat23;
					int u_xlati24;
					float u_xlat25;
					bool u_xlatb25;
					void main()
					{
					    u_xlati0 = unity_StereoEyeIndex << 2;
					    u_xlat7.xyz = unity_ObjectToWorld[0].yyy * unity_StereoMatrixV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].xyz;
					    u_xlat7.xyz = unity_StereoMatrixV[u_xlati0 / 4][u_xlati0 % 4].xyz * unity_ObjectToWorld[0].xxx + u_xlat7.xyz;
					    u_xlat7.xyz = unity_StereoMatrixV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].xyz * unity_ObjectToWorld[0].zzz + u_xlat7.xyz;
					    u_xlat7.xyz = unity_StereoMatrixV[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4].xyz * unity_ObjectToWorld[0].www + u_xlat7.xyz;
					    u_xlat1.xyz = unity_ObjectToWorld[1].yyy * unity_StereoMatrixV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].xyz;
					    u_xlat1.xyz = unity_StereoMatrixV[u_xlati0 / 4][u_xlati0 % 4].xyz * unity_ObjectToWorld[1].xxx + u_xlat1.xyz;
					    u_xlat1.xyz = unity_StereoMatrixV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].xyz * unity_ObjectToWorld[1].zzz + u_xlat1.xyz;
					    u_xlat1.xyz = unity_StereoMatrixV[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4].xyz * unity_ObjectToWorld[1].www + u_xlat1.xyz;
					    u_xlat2.xyz = unity_ObjectToWorld[2].yyy * unity_StereoMatrixV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].xyz;
					    u_xlat2.xyz = unity_StereoMatrixV[u_xlati0 / 4][u_xlati0 % 4].xyz * unity_ObjectToWorld[2].xxx + u_xlat2.xyz;
					    u_xlat2.xyz = unity_StereoMatrixV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].xyz * unity_ObjectToWorld[2].zzz + u_xlat2.xyz;
					    u_xlat2.xyz = unity_StereoMatrixV[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4].xyz * unity_ObjectToWorld[2].www + u_xlat2.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[3].yyy * unity_StereoMatrixV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].xyz;
					    u_xlat3.xyz = unity_StereoMatrixV[u_xlati0 / 4][u_xlati0 % 4].xyz * unity_ObjectToWorld[3].xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_StereoMatrixV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].xyz * unity_ObjectToWorld[3].zzz + u_xlat3.xyz;
					    u_xlat3.xyz = unity_StereoMatrixV[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4].xyz * unity_ObjectToWorld[3].www + u_xlat3.xyz;
					    u_xlat4.xyz = unity_WorldToObject[1].xyz * unity_StereoMatrixInvV[u_xlati0 / 4][u_xlati0 % 4].yyy;
					    u_xlat4.xyz = unity_WorldToObject[0].xyz * unity_StereoMatrixInvV[u_xlati0 / 4][u_xlati0 % 4].xxx + u_xlat4.xyz;
					    u_xlat4.xyz = unity_WorldToObject[2].xyz * unity_StereoMatrixInvV[u_xlati0 / 4][u_xlati0 % 4].zzz + u_xlat4.xyz;
					    u_xlat4.xyz = unity_WorldToObject[3].xyz * unity_StereoMatrixInvV[u_xlati0 / 4][u_xlati0 % 4].www + u_xlat4.xyz;
					    u_xlat5.xyz = unity_WorldToObject[1].xyz * unity_StereoMatrixInvV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].yyy;
					    u_xlat5.xyz = unity_WorldToObject[0].xyz * unity_StereoMatrixInvV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].xxx + u_xlat5.xyz;
					    u_xlat5.xyz = unity_WorldToObject[2].xyz * unity_StereoMatrixInvV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].zzz + u_xlat5.xyz;
					    u_xlat5.xyz = unity_WorldToObject[3].xyz * unity_StereoMatrixInvV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].www + u_xlat5.xyz;
					    u_xlat6.xyz = unity_WorldToObject[1].xyz * unity_StereoMatrixInvV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].yyy;
					    u_xlat6.xyz = unity_WorldToObject[0].xyz * unity_StereoMatrixInvV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].xxx + u_xlat6.xyz;
					    u_xlat6.xyz = unity_WorldToObject[2].xyz * unity_StereoMatrixInvV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].zzz + u_xlat6.xyz;
					    u_xlat6.xyz = unity_WorldToObject[3].xyz * unity_StereoMatrixInvV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].www + u_xlat6.xyz;
					    u_xlat1.xyz = u_xlat1.xyz * in_POSITION0.yyy;
					    u_xlat7.xyz = u_xlat7.xyz * in_POSITION0.xxx + u_xlat1.xyz;
					    u_xlat7.xyz = u_xlat2.xyz * in_POSITION0.zzz + u_xlat7.xyz;
					    u_xlat7.xyz = u_xlat3.xyz + u_xlat7.xyz;
					    u_xlat1.x = dot(u_xlat4.xyz, in_NORMAL0.xyz);
					    u_xlat1.y = dot(u_xlat5.xyz, in_NORMAL0.xyz);
					    u_xlat1.z = dot(u_xlat6.xyz, in_NORMAL0.xyz);
					    u_xlat22 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat22 = inversesqrt(u_xlat22);
					    u_xlat1.xyz = vec3(u_xlat22) * u_xlat1.xyz;
					    u_xlat22 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat22 = inversesqrt(u_xlat22);
					    u_xlat2.xyz = _Color.xyz * glstate_lightmodel_ambient.xyz + _Emission.xyz;
					    u_xlat23 = _Shininess * 128.0;
					    u_xlat3.xyz = u_xlat2.xyz;
					    u_xlat4.x = float(0.0);
					    u_xlat4.y = float(0.0);
					    u_xlat4.z = float(0.0);
					    for(int u_xlati_loop_1 = 0 ; u_xlati_loop_1<unity_VertexLightParams.x ; u_xlati_loop_1++)
					    {
					        u_xlat25 = dot(u_xlat1.xyz, unity_LightPosition[u_xlati_loop_1].xyz);
					        u_xlat25 = max(u_xlat25, 0.0);
					        u_xlat5.xyz = vec3(u_xlat25) * _Color.xyz;
					        u_xlat5.xyz = u_xlat5.xyz * unity_LightColor[u_xlati_loop_1].xyz;
					        u_xlatb25 = 0.0<u_xlat25;
					        if(u_xlatb25){
					            u_xlat6.xyz = (-u_xlat7.xyz) * vec3(u_xlat22) + unity_LightPosition[u_xlati_loop_1].xyz;
					            u_xlat25 = dot(u_xlat6.xyz, u_xlat6.xyz);
					            u_xlat25 = inversesqrt(u_xlat25);
					            u_xlat6.xyz = vec3(u_xlat25) * u_xlat6.xyz;
					            u_xlat25 = dot(u_xlat1.xyz, u_xlat6.xyz);
					            u_xlat25 = max(u_xlat25, 0.0);
					            u_xlat25 = log2(u_xlat25);
					            u_xlat25 = u_xlat23 * u_xlat25;
					            u_xlat25 = exp2(u_xlat25);
					            u_xlat25 = min(u_xlat25, 1.0);
					            u_xlat25 = u_xlat25 * 0.5;
					            u_xlat4.xyz = vec3(u_xlat25) * unity_LightColor[u_xlati_loop_1].xyz + u_xlat4.xyz;
					        }
					        u_xlat5.xyz = u_xlat5.xyz * vec3(0.5, 0.5, 0.5);
					        u_xlat5.xyz = min(u_xlat5.xyz, vec3(1.0, 1.0, 1.0));
					        u_xlat3.xyz = u_xlat3.xyz + u_xlat5.xyz;
					    }
					    vs_COLOR1.xyz = u_xlat4.xyz * _SpecColor.xyz;
					    vs_COLOR1.xyz = clamp(vs_COLOR1.xyz, 0.0, 1.0);
					    vs_COLOR0.xyz = u_xlat3.xyz;
					    vs_COLOR0.xyz = clamp(vs_COLOR0.xyz, 0.0, 1.0);
					    vs_COLOR0.w = _Color.w;
					    vs_COLOR0.w = clamp(vs_COLOR0.w, 0.0, 1.0);
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
					    u_xlat1 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat1 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat1;
					    u_xlat1 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat1;
					    u_xlat1 = u_xlat1 + unity_ObjectToWorld[3];
					    u_xlat2 = u_xlat1.yyyy * unity_StereoMatrixVP[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4];
					    u_xlat2 = unity_StereoMatrixVP[u_xlati0 / 4][u_xlati0 % 4] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4] * u_xlat1.zzzz + u_xlat2;
					    gl_Position = unity_StereoMatrixVP[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4] * u_xlat1.wwww + u_xlat2;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "POINT" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						vec4 _Color;
						vec4 _SpecColor;
						vec4 _Emission;
						float _Shininess;
						ivec4 unity_VertexLightParams;
						vec4 _MainTex_ST;
						vec4 unused_0_7;
					};
					layout(std140) uniform UnityLighting {
						vec4 unused_1_0[7];
						vec4 unity_LightColor[8];
						vec4 unused_1_2[7];
						vec4 unity_LightPosition[8];
						vec4 unused_1_4[7];
						vec4 unity_LightAtten[8];
						vec4 unused_1_6[24];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_2_2[3];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 glstate_lightmodel_ambient;
						vec4 unused_3_1[8];
						mat4x4 unity_MatrixV;
						mat4x4 unity_MatrixInvV;
						mat4x4 unity_MatrixVP;
						vec4 unused_3_5[2];
					};
					in  vec3 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec3 in_TEXCOORD0;
					out vec4 vs_COLOR0;
					out vec3 vs_COLOR1;
					out vec2 vs_TEXCOORD0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bool u_xlatb6;
					float u_xlat21;
					float u_xlat22;
					int u_xlati23;
					float u_xlat24;
					bool u_xlatb24;
					float u_xlat25;
					bool u_xlatb25;
					bool u_xlatb26;
					void main()
					{
					    u_xlat0.xyz = unity_ObjectToWorld[0].yyy * unity_MatrixV[1].xyz;
					    u_xlat0.xyz = unity_MatrixV[0].xyz * unity_ObjectToWorld[0].xxx + u_xlat0.xyz;
					    u_xlat0.xyz = unity_MatrixV[2].xyz * unity_ObjectToWorld[0].zzz + u_xlat0.xyz;
					    u_xlat0.xyz = unity_MatrixV[3].xyz * unity_ObjectToWorld[0].www + u_xlat0.xyz;
					    u_xlat1.xyz = unity_ObjectToWorld[1].yyy * unity_MatrixV[1].xyz;
					    u_xlat1.xyz = unity_MatrixV[0].xyz * unity_ObjectToWorld[1].xxx + u_xlat1.xyz;
					    u_xlat1.xyz = unity_MatrixV[2].xyz * unity_ObjectToWorld[1].zzz + u_xlat1.xyz;
					    u_xlat1.xyz = unity_MatrixV[3].xyz * unity_ObjectToWorld[1].www + u_xlat1.xyz;
					    u_xlat2.xyz = unity_ObjectToWorld[2].yyy * unity_MatrixV[1].xyz;
					    u_xlat2.xyz = unity_MatrixV[0].xyz * unity_ObjectToWorld[2].xxx + u_xlat2.xyz;
					    u_xlat2.xyz = unity_MatrixV[2].xyz * unity_ObjectToWorld[2].zzz + u_xlat2.xyz;
					    u_xlat2.xyz = unity_MatrixV[3].xyz * unity_ObjectToWorld[2].www + u_xlat2.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[3].yyy * unity_MatrixV[1].xyz;
					    u_xlat3.xyz = unity_MatrixV[0].xyz * unity_ObjectToWorld[3].xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_MatrixV[2].xyz * unity_ObjectToWorld[3].zzz + u_xlat3.xyz;
					    u_xlat3.xyz = unity_MatrixV[3].xyz * unity_ObjectToWorld[3].www + u_xlat3.xyz;
					    u_xlat4.xyz = unity_WorldToObject[1].xyz * unity_MatrixInvV[0].yyy;
					    u_xlat4.xyz = unity_WorldToObject[0].xyz * unity_MatrixInvV[0].xxx + u_xlat4.xyz;
					    u_xlat4.xyz = unity_WorldToObject[2].xyz * unity_MatrixInvV[0].zzz + u_xlat4.xyz;
					    u_xlat4.xyz = unity_WorldToObject[3].xyz * unity_MatrixInvV[0].www + u_xlat4.xyz;
					    u_xlat5.xyz = unity_WorldToObject[1].xyz * unity_MatrixInvV[1].yyy;
					    u_xlat5.xyz = unity_WorldToObject[0].xyz * unity_MatrixInvV[1].xxx + u_xlat5.xyz;
					    u_xlat5.xyz = unity_WorldToObject[2].xyz * unity_MatrixInvV[1].zzz + u_xlat5.xyz;
					    u_xlat5.xyz = unity_WorldToObject[3].xyz * unity_MatrixInvV[1].www + u_xlat5.xyz;
					    u_xlat6.xyz = unity_WorldToObject[1].xyz * unity_MatrixInvV[2].yyy;
					    u_xlat6.xyz = unity_WorldToObject[0].xyz * unity_MatrixInvV[2].xxx + u_xlat6.xyz;
					    u_xlat6.xyz = unity_WorldToObject[2].xyz * unity_MatrixInvV[2].zzz + u_xlat6.xyz;
					    u_xlat6.xyz = unity_WorldToObject[3].xyz * unity_MatrixInvV[2].www + u_xlat6.xyz;
					    u_xlat1.xyz = u_xlat1.xyz * in_POSITION0.yyy;
					    u_xlat0.xyz = u_xlat0.xyz * in_POSITION0.xxx + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat2.xyz * in_POSITION0.zzz + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat3.xyz + u_xlat0.xyz;
					    u_xlat1.x = dot(u_xlat4.xyz, in_NORMAL0.xyz);
					    u_xlat1.y = dot(u_xlat5.xyz, in_NORMAL0.xyz);
					    u_xlat1.z = dot(u_xlat6.xyz, in_NORMAL0.xyz);
					    u_xlat21 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat21 = inversesqrt(u_xlat21);
					    u_xlat1.xyz = vec3(u_xlat21) * u_xlat1.xyz;
					    u_xlat21 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat21 = inversesqrt(u_xlat21);
					    u_xlat2.xyz = _Color.xyz * glstate_lightmodel_ambient.xyz + _Emission.xyz;
					    u_xlat22 = _Shininess * 128.0;
					    u_xlat3.xyz = u_xlat2.xyz;
					    u_xlat4.x = float(0.0);
					    u_xlat4.y = float(0.0);
					    u_xlat4.z = float(0.0);
					    for(int u_xlati_loop_1 = 0 ; u_xlati_loop_1<unity_VertexLightParams.x ; u_xlati_loop_1++)
					    {
					        u_xlat5.xyz = (-u_xlat0.xyz) * unity_LightPosition[u_xlati_loop_1].www + unity_LightPosition[u_xlati_loop_1].xyz;
					        u_xlat24 = dot(u_xlat5.xyz, u_xlat5.xyz);
					        u_xlat25 = unity_LightAtten[u_xlati_loop_1].z * u_xlat24 + 1.0;
					        u_xlat25 = float(1.0) / u_xlat25;
					        u_xlatb26 = 0.0!=unity_LightPosition[u_xlati_loop_1].w;
					        u_xlatb6 = unity_LightAtten[u_xlati_loop_1].w<u_xlat24;
					        u_xlatb26 = u_xlatb26 && u_xlatb6;
					        u_xlat24 = max(u_xlat24, 9.99999997e-07);
					        u_xlat24 = inversesqrt(u_xlat24);
					        u_xlat5.xyz = vec3(u_xlat24) * u_xlat5.xyz;
					        u_xlat24 = u_xlat25 * 0.5;
					        u_xlat24 = (u_xlatb26) ? 0.0 : u_xlat24;
					        u_xlat25 = dot(u_xlat1.xyz, u_xlat5.xyz);
					        u_xlat25 = max(u_xlat25, 0.0);
					        u_xlat6.xyz = vec3(u_xlat25) * _Color.xyz;
					        u_xlat6.xyz = u_xlat6.xyz * unity_LightColor[u_xlati_loop_1].xyz;
					        u_xlatb25 = 0.0<u_xlat25;
					        if(u_xlatb25){
					            u_xlat5.xyz = (-u_xlat0.xyz) * vec3(u_xlat21) + u_xlat5.xyz;
					            u_xlat25 = dot(u_xlat5.xyz, u_xlat5.xyz);
					            u_xlat25 = inversesqrt(u_xlat25);
					            u_xlat5.xyz = vec3(u_xlat25) * u_xlat5.xyz;
					            u_xlat25 = dot(u_xlat1.xyz, u_xlat5.xyz);
					            u_xlat25 = max(u_xlat25, 0.0);
					            u_xlat25 = log2(u_xlat25);
					            u_xlat25 = u_xlat22 * u_xlat25;
					            u_xlat25 = exp2(u_xlat25);
					            u_xlat25 = min(u_xlat25, 1.0);
					            u_xlat25 = u_xlat24 * u_xlat25;
					            u_xlat4.xyz = vec3(u_xlat25) * unity_LightColor[u_xlati_loop_1].xyz + u_xlat4.xyz;
					        }
					        u_xlat5.xyz = vec3(u_xlat24) * u_xlat6.xyz;
					        u_xlat5.xyz = min(u_xlat5.xyz, vec3(1.0, 1.0, 1.0));
					        u_xlat3.xyz = u_xlat3.xyz + u_xlat5.xyz;
					    }
					    vs_COLOR1.xyz = u_xlat4.xyz * _SpecColor.xyz;
					    vs_COLOR1.xyz = clamp(vs_COLOR1.xyz, 0.0, 1.0);
					    vs_COLOR0.xyz = u_xlat3.xyz;
					    vs_COLOR0.xyz = clamp(vs_COLOR0.xyz, 0.0, 1.0);
					    vs_COLOR0.w = _Color.w;
					    vs_COLOR0.w = clamp(vs_COLOR0.w, 0.0, 1.0);
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "POINT" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						vec4 _Color;
						vec4 _SpecColor;
						vec4 _Emission;
						float _Shininess;
						ivec4 unity_VertexLightParams;
						vec4 _MainTex_ST;
						vec4 unused_0_7;
					};
					layout(std140) uniform UnityLighting {
						vec4 unused_1_0[7];
						vec4 unity_LightColor[8];
						vec4 unused_1_2[7];
						vec4 unity_LightPosition[8];
						vec4 unused_1_4[7];
						vec4 unity_LightAtten[8];
						vec4 unused_1_6[24];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_2_2[3];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_3_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_3_2[4];
						mat4x4 unity_StereoMatrixInvV[2];
						vec4 unused_3_4[4];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_3_6[40];
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					layout(std140) uniform UnityPerFrame {
						vec4 glstate_lightmodel_ambient;
						vec4 unused_5_1[5];
					};
					in  vec3 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec3 in_TEXCOORD0;
					out vec4 vs_COLOR0;
					out vec3 vs_COLOR1;
					out vec2 vs_TEXCOORD0;
					int u_xlati0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bool u_xlatb6;
					vec3 u_xlat7;
					bool u_xlatb13;
					float u_xlat22;
					float u_xlat23;
					int u_xlati24;
					float u_xlat25;
					bool u_xlatb25;
					float u_xlat26;
					bool u_xlatb26;
					void main()
					{
					    u_xlati0 = unity_StereoEyeIndex << 2;
					    u_xlat7.xyz = unity_ObjectToWorld[0].yyy * unity_StereoMatrixV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].xyz;
					    u_xlat7.xyz = unity_StereoMatrixV[u_xlati0 / 4][u_xlati0 % 4].xyz * unity_ObjectToWorld[0].xxx + u_xlat7.xyz;
					    u_xlat7.xyz = unity_StereoMatrixV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].xyz * unity_ObjectToWorld[0].zzz + u_xlat7.xyz;
					    u_xlat7.xyz = unity_StereoMatrixV[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4].xyz * unity_ObjectToWorld[0].www + u_xlat7.xyz;
					    u_xlat1.xyz = unity_ObjectToWorld[1].yyy * unity_StereoMatrixV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].xyz;
					    u_xlat1.xyz = unity_StereoMatrixV[u_xlati0 / 4][u_xlati0 % 4].xyz * unity_ObjectToWorld[1].xxx + u_xlat1.xyz;
					    u_xlat1.xyz = unity_StereoMatrixV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].xyz * unity_ObjectToWorld[1].zzz + u_xlat1.xyz;
					    u_xlat1.xyz = unity_StereoMatrixV[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4].xyz * unity_ObjectToWorld[1].www + u_xlat1.xyz;
					    u_xlat2.xyz = unity_ObjectToWorld[2].yyy * unity_StereoMatrixV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].xyz;
					    u_xlat2.xyz = unity_StereoMatrixV[u_xlati0 / 4][u_xlati0 % 4].xyz * unity_ObjectToWorld[2].xxx + u_xlat2.xyz;
					    u_xlat2.xyz = unity_StereoMatrixV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].xyz * unity_ObjectToWorld[2].zzz + u_xlat2.xyz;
					    u_xlat2.xyz = unity_StereoMatrixV[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4].xyz * unity_ObjectToWorld[2].www + u_xlat2.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[3].yyy * unity_StereoMatrixV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].xyz;
					    u_xlat3.xyz = unity_StereoMatrixV[u_xlati0 / 4][u_xlati0 % 4].xyz * unity_ObjectToWorld[3].xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_StereoMatrixV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].xyz * unity_ObjectToWorld[3].zzz + u_xlat3.xyz;
					    u_xlat3.xyz = unity_StereoMatrixV[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4].xyz * unity_ObjectToWorld[3].www + u_xlat3.xyz;
					    u_xlat4.xyz = unity_WorldToObject[1].xyz * unity_StereoMatrixInvV[u_xlati0 / 4][u_xlati0 % 4].yyy;
					    u_xlat4.xyz = unity_WorldToObject[0].xyz * unity_StereoMatrixInvV[u_xlati0 / 4][u_xlati0 % 4].xxx + u_xlat4.xyz;
					    u_xlat4.xyz = unity_WorldToObject[2].xyz * unity_StereoMatrixInvV[u_xlati0 / 4][u_xlati0 % 4].zzz + u_xlat4.xyz;
					    u_xlat4.xyz = unity_WorldToObject[3].xyz * unity_StereoMatrixInvV[u_xlati0 / 4][u_xlati0 % 4].www + u_xlat4.xyz;
					    u_xlat5.xyz = unity_WorldToObject[1].xyz * unity_StereoMatrixInvV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].yyy;
					    u_xlat5.xyz = unity_WorldToObject[0].xyz * unity_StereoMatrixInvV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].xxx + u_xlat5.xyz;
					    u_xlat5.xyz = unity_WorldToObject[2].xyz * unity_StereoMatrixInvV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].zzz + u_xlat5.xyz;
					    u_xlat5.xyz = unity_WorldToObject[3].xyz * unity_StereoMatrixInvV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].www + u_xlat5.xyz;
					    u_xlat6.xyz = unity_WorldToObject[1].xyz * unity_StereoMatrixInvV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].yyy;
					    u_xlat6.xyz = unity_WorldToObject[0].xyz * unity_StereoMatrixInvV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].xxx + u_xlat6.xyz;
					    u_xlat6.xyz = unity_WorldToObject[2].xyz * unity_StereoMatrixInvV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].zzz + u_xlat6.xyz;
					    u_xlat6.xyz = unity_WorldToObject[3].xyz * unity_StereoMatrixInvV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].www + u_xlat6.xyz;
					    u_xlat1.xyz = u_xlat1.xyz * in_POSITION0.yyy;
					    u_xlat7.xyz = u_xlat7.xyz * in_POSITION0.xxx + u_xlat1.xyz;
					    u_xlat7.xyz = u_xlat2.xyz * in_POSITION0.zzz + u_xlat7.xyz;
					    u_xlat7.xyz = u_xlat3.xyz + u_xlat7.xyz;
					    u_xlat1.x = dot(u_xlat4.xyz, in_NORMAL0.xyz);
					    u_xlat1.y = dot(u_xlat5.xyz, in_NORMAL0.xyz);
					    u_xlat1.z = dot(u_xlat6.xyz, in_NORMAL0.xyz);
					    u_xlat22 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat22 = inversesqrt(u_xlat22);
					    u_xlat1.xyz = vec3(u_xlat22) * u_xlat1.xyz;
					    u_xlat22 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat22 = inversesqrt(u_xlat22);
					    u_xlat2.xyz = _Color.xyz * glstate_lightmodel_ambient.xyz + _Emission.xyz;
					    u_xlat23 = _Shininess * 128.0;
					    u_xlat3.xyz = u_xlat2.xyz;
					    u_xlat4.x = float(0.0);
					    u_xlat4.y = float(0.0);
					    u_xlat4.z = float(0.0);
					    for(int u_xlati_loop_1 = 0 ; u_xlati_loop_1<unity_VertexLightParams.x ; u_xlati_loop_1++)
					    {
					        u_xlat5.xyz = (-u_xlat7.xyz) * unity_LightPosition[u_xlati_loop_1].www + unity_LightPosition[u_xlati_loop_1].xyz;
					        u_xlat25 = dot(u_xlat5.xyz, u_xlat5.xyz);
					        u_xlat26 = unity_LightAtten[u_xlati_loop_1].z * u_xlat25 + 1.0;
					        u_xlat26 = float(1.0) / u_xlat26;
					        u_xlatb6 = 0.0!=unity_LightPosition[u_xlati_loop_1].w;
					        u_xlatb13 = unity_LightAtten[u_xlati_loop_1].w<u_xlat25;
					        u_xlatb6 = u_xlatb13 && u_xlatb6;
					        u_xlat25 = max(u_xlat25, 9.99999997e-07);
					        u_xlat25 = inversesqrt(u_xlat25);
					        u_xlat5.xyz = vec3(u_xlat25) * u_xlat5.xyz;
					        u_xlat25 = u_xlat26 * 0.5;
					        u_xlat25 = (u_xlatb6) ? 0.0 : u_xlat25;
					        u_xlat26 = dot(u_xlat1.xyz, u_xlat5.xyz);
					        u_xlat26 = max(u_xlat26, 0.0);
					        u_xlat6.xyz = vec3(u_xlat26) * _Color.xyz;
					        u_xlat6.xyz = u_xlat6.xyz * unity_LightColor[u_xlati_loop_1].xyz;
					        u_xlatb26 = 0.0<u_xlat26;
					        if(u_xlatb26){
					            u_xlat5.xyz = (-u_xlat7.xyz) * vec3(u_xlat22) + u_xlat5.xyz;
					            u_xlat26 = dot(u_xlat5.xyz, u_xlat5.xyz);
					            u_xlat26 = inversesqrt(u_xlat26);
					            u_xlat5.xyz = vec3(u_xlat26) * u_xlat5.xyz;
					            u_xlat5.x = dot(u_xlat1.xyz, u_xlat5.xyz);
					            u_xlat5.x = max(u_xlat5.x, 0.0);
					            u_xlat5.x = log2(u_xlat5.x);
					            u_xlat5.x = u_xlat23 * u_xlat5.x;
					            u_xlat5.x = exp2(u_xlat5.x);
					            u_xlat5.x = min(u_xlat5.x, 1.0);
					            u_xlat5.x = u_xlat25 * u_xlat5.x;
					            u_xlat4.xyz = u_xlat5.xxx * unity_LightColor[u_xlati_loop_1].xyz + u_xlat4.xyz;
					        }
					        u_xlat5.xyz = vec3(u_xlat25) * u_xlat6.xyz;
					        u_xlat5.xyz = min(u_xlat5.xyz, vec3(1.0, 1.0, 1.0));
					        u_xlat3.xyz = u_xlat3.xyz + u_xlat5.xyz;
					    }
					    vs_COLOR1.xyz = u_xlat4.xyz * _SpecColor.xyz;
					    vs_COLOR1.xyz = clamp(vs_COLOR1.xyz, 0.0, 1.0);
					    vs_COLOR0.xyz = u_xlat3.xyz;
					    vs_COLOR0.xyz = clamp(vs_COLOR0.xyz, 0.0, 1.0);
					    vs_COLOR0.w = _Color.w;
					    vs_COLOR0.w = clamp(vs_COLOR0.w, 0.0, 1.0);
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
					    u_xlat1 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat1 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat1;
					    u_xlat1 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat1;
					    u_xlat1 = u_xlat1 + unity_ObjectToWorld[3];
					    u_xlat2 = u_xlat1.yyyy * unity_StereoMatrixVP[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4];
					    u_xlat2 = unity_StereoMatrixVP[u_xlati0 / 4][u_xlati0 % 4] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4] * u_xlat1.zzzz + u_xlat2;
					    gl_Position = unity_StereoMatrixVP[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4] * u_xlat1.wwww + u_xlat2;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SPOT" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						vec4 _Color;
						vec4 _SpecColor;
						vec4 _Emission;
						float _Shininess;
						ivec4 unity_VertexLightParams;
						vec4 _MainTex_ST;
						vec4 unused_0_7;
					};
					layout(std140) uniform UnityLighting {
						vec4 unused_1_0[7];
						vec4 unity_LightColor[8];
						vec4 unused_1_2[7];
						vec4 unity_LightPosition[8];
						vec4 unused_1_4[7];
						vec4 unity_LightAtten[8];
						vec4 unused_1_6[7];
						vec4 unity_SpotDirection[8];
						vec4 unused_1_8[16];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_2_2[3];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 glstate_lightmodel_ambient;
						vec4 unused_3_1[8];
						mat4x4 unity_MatrixV;
						mat4x4 unity_MatrixInvV;
						mat4x4 unity_MatrixVP;
						vec4 unused_3_5[2];
					};
					in  vec3 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec3 in_TEXCOORD0;
					out vec4 vs_COLOR0;
					out vec3 vs_COLOR1;
					out vec2 vs_TEXCOORD0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bool u_xlatb6;
					float u_xlat21;
					float u_xlat22;
					int u_xlati23;
					float u_xlat24;
					bool u_xlatb24;
					float u_xlat25;
					bool u_xlatb25;
					bool u_xlatb26;
					void main()
					{
					    u_xlat0.xyz = unity_ObjectToWorld[0].yyy * unity_MatrixV[1].xyz;
					    u_xlat0.xyz = unity_MatrixV[0].xyz * unity_ObjectToWorld[0].xxx + u_xlat0.xyz;
					    u_xlat0.xyz = unity_MatrixV[2].xyz * unity_ObjectToWorld[0].zzz + u_xlat0.xyz;
					    u_xlat0.xyz = unity_MatrixV[3].xyz * unity_ObjectToWorld[0].www + u_xlat0.xyz;
					    u_xlat1.xyz = unity_ObjectToWorld[1].yyy * unity_MatrixV[1].xyz;
					    u_xlat1.xyz = unity_MatrixV[0].xyz * unity_ObjectToWorld[1].xxx + u_xlat1.xyz;
					    u_xlat1.xyz = unity_MatrixV[2].xyz * unity_ObjectToWorld[1].zzz + u_xlat1.xyz;
					    u_xlat1.xyz = unity_MatrixV[3].xyz * unity_ObjectToWorld[1].www + u_xlat1.xyz;
					    u_xlat2.xyz = unity_ObjectToWorld[2].yyy * unity_MatrixV[1].xyz;
					    u_xlat2.xyz = unity_MatrixV[0].xyz * unity_ObjectToWorld[2].xxx + u_xlat2.xyz;
					    u_xlat2.xyz = unity_MatrixV[2].xyz * unity_ObjectToWorld[2].zzz + u_xlat2.xyz;
					    u_xlat2.xyz = unity_MatrixV[3].xyz * unity_ObjectToWorld[2].www + u_xlat2.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[3].yyy * unity_MatrixV[1].xyz;
					    u_xlat3.xyz = unity_MatrixV[0].xyz * unity_ObjectToWorld[3].xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_MatrixV[2].xyz * unity_ObjectToWorld[3].zzz + u_xlat3.xyz;
					    u_xlat3.xyz = unity_MatrixV[3].xyz * unity_ObjectToWorld[3].www + u_xlat3.xyz;
					    u_xlat4.xyz = unity_WorldToObject[1].xyz * unity_MatrixInvV[0].yyy;
					    u_xlat4.xyz = unity_WorldToObject[0].xyz * unity_MatrixInvV[0].xxx + u_xlat4.xyz;
					    u_xlat4.xyz = unity_WorldToObject[2].xyz * unity_MatrixInvV[0].zzz + u_xlat4.xyz;
					    u_xlat4.xyz = unity_WorldToObject[3].xyz * unity_MatrixInvV[0].www + u_xlat4.xyz;
					    u_xlat5.xyz = unity_WorldToObject[1].xyz * unity_MatrixInvV[1].yyy;
					    u_xlat5.xyz = unity_WorldToObject[0].xyz * unity_MatrixInvV[1].xxx + u_xlat5.xyz;
					    u_xlat5.xyz = unity_WorldToObject[2].xyz * unity_MatrixInvV[1].zzz + u_xlat5.xyz;
					    u_xlat5.xyz = unity_WorldToObject[3].xyz * unity_MatrixInvV[1].www + u_xlat5.xyz;
					    u_xlat6.xyz = unity_WorldToObject[1].xyz * unity_MatrixInvV[2].yyy;
					    u_xlat6.xyz = unity_WorldToObject[0].xyz * unity_MatrixInvV[2].xxx + u_xlat6.xyz;
					    u_xlat6.xyz = unity_WorldToObject[2].xyz * unity_MatrixInvV[2].zzz + u_xlat6.xyz;
					    u_xlat6.xyz = unity_WorldToObject[3].xyz * unity_MatrixInvV[2].www + u_xlat6.xyz;
					    u_xlat1.xyz = u_xlat1.xyz * in_POSITION0.yyy;
					    u_xlat0.xyz = u_xlat0.xyz * in_POSITION0.xxx + u_xlat1.xyz;
					    u_xlat0.xyz = u_xlat2.xyz * in_POSITION0.zzz + u_xlat0.xyz;
					    u_xlat0.xyz = u_xlat3.xyz + u_xlat0.xyz;
					    u_xlat1.x = dot(u_xlat4.xyz, in_NORMAL0.xyz);
					    u_xlat1.y = dot(u_xlat5.xyz, in_NORMAL0.xyz);
					    u_xlat1.z = dot(u_xlat6.xyz, in_NORMAL0.xyz);
					    u_xlat21 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat21 = inversesqrt(u_xlat21);
					    u_xlat1.xyz = vec3(u_xlat21) * u_xlat1.xyz;
					    u_xlat21 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat21 = inversesqrt(u_xlat21);
					    u_xlat2.xyz = _Color.xyz * glstate_lightmodel_ambient.xyz + _Emission.xyz;
					    u_xlat22 = _Shininess * 128.0;
					    u_xlat3.xyz = u_xlat2.xyz;
					    u_xlat4.x = float(0.0);
					    u_xlat4.y = float(0.0);
					    u_xlat4.z = float(0.0);
					    for(int u_xlati_loop_1 = 0 ; u_xlati_loop_1<unity_VertexLightParams.x ; u_xlati_loop_1++)
					    {
					        u_xlat5.xyz = (-u_xlat0.xyz) * unity_LightPosition[u_xlati_loop_1].www + unity_LightPosition[u_xlati_loop_1].xyz;
					        u_xlat24 = dot(u_xlat5.xyz, u_xlat5.xyz);
					        u_xlat25 = unity_LightAtten[u_xlati_loop_1].z * u_xlat24 + 1.0;
					        u_xlat25 = float(1.0) / u_xlat25;
					        u_xlatb26 = 0.0!=unity_LightPosition[u_xlati_loop_1].w;
					        u_xlatb6 = unity_LightAtten[u_xlati_loop_1].w<u_xlat24;
					        u_xlatb26 = u_xlatb26 && u_xlatb6;
					        u_xlat25 = (u_xlatb26) ? 0.0 : u_xlat25;
					        u_xlat24 = max(u_xlat24, 9.99999997e-07);
					        u_xlat24 = inversesqrt(u_xlat24);
					        u_xlat5.xyz = vec3(u_xlat24) * u_xlat5.xyz;
					        u_xlat24 = dot(u_xlat5.xyz, unity_SpotDirection[u_xlati_loop_1].xyz);
					        u_xlat24 = max(u_xlat24, 0.0);
					        u_xlat24 = u_xlat24 + (-unity_LightAtten[u_xlati_loop_1].x);
					        u_xlat24 = u_xlat24 * unity_LightAtten[u_xlati_loop_1].y;
					        u_xlat24 = clamp(u_xlat24, 0.0, 1.0);
					        u_xlat24 = u_xlat24 * u_xlat25;
					        u_xlat24 = u_xlat24 * 0.5;
					        u_xlat25 = dot(u_xlat1.xyz, u_xlat5.xyz);
					        u_xlat25 = max(u_xlat25, 0.0);
					        u_xlat6.xyz = vec3(u_xlat25) * _Color.xyz;
					        u_xlat6.xyz = u_xlat6.xyz * unity_LightColor[u_xlati_loop_1].xyz;
					        u_xlatb25 = 0.0<u_xlat25;
					        if(u_xlatb25){
					            u_xlat5.xyz = (-u_xlat0.xyz) * vec3(u_xlat21) + u_xlat5.xyz;
					            u_xlat25 = dot(u_xlat5.xyz, u_xlat5.xyz);
					            u_xlat25 = inversesqrt(u_xlat25);
					            u_xlat5.xyz = vec3(u_xlat25) * u_xlat5.xyz;
					            u_xlat25 = dot(u_xlat1.xyz, u_xlat5.xyz);
					            u_xlat25 = max(u_xlat25, 0.0);
					            u_xlat25 = log2(u_xlat25);
					            u_xlat25 = u_xlat22 * u_xlat25;
					            u_xlat25 = exp2(u_xlat25);
					            u_xlat25 = min(u_xlat25, 1.0);
					            u_xlat25 = u_xlat24 * u_xlat25;
					            u_xlat4.xyz = vec3(u_xlat25) * unity_LightColor[u_xlati_loop_1].xyz + u_xlat4.xyz;
					        }
					        u_xlat5.xyz = vec3(u_xlat24) * u_xlat6.xyz;
					        u_xlat5.xyz = min(u_xlat5.xyz, vec3(1.0, 1.0, 1.0));
					        u_xlat3.xyz = u_xlat3.xyz + u_xlat5.xyz;
					    }
					    vs_COLOR1.xyz = u_xlat4.xyz * _SpecColor.xyz;
					    vs_COLOR1.xyz = clamp(vs_COLOR1.xyz, 0.0, 1.0);
					    vs_COLOR0.xyz = u_xlat3.xyz;
					    vs_COLOR0.xyz = clamp(vs_COLOR0.xyz, 0.0, 1.0);
					    vs_COLOR0.w = _Color.w;
					    vs_COLOR0.w = clamp(vs_COLOR0.w, 0.0, 1.0);
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SPOT" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						vec4 _Color;
						vec4 _SpecColor;
						vec4 _Emission;
						float _Shininess;
						ivec4 unity_VertexLightParams;
						vec4 _MainTex_ST;
						vec4 unused_0_7;
					};
					layout(std140) uniform UnityLighting {
						vec4 unused_1_0[7];
						vec4 unity_LightColor[8];
						vec4 unused_1_2[7];
						vec4 unity_LightPosition[8];
						vec4 unused_1_4[7];
						vec4 unity_LightAtten[8];
						vec4 unused_1_6[7];
						vec4 unity_SpotDirection[8];
						vec4 unused_1_8[16];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_2_2[3];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_3_0[8];
						mat4x4 unity_StereoMatrixV[2];
						vec4 unused_3_2[4];
						mat4x4 unity_StereoMatrixInvV[2];
						vec4 unused_3_4[4];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_3_6[40];
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					layout(std140) uniform UnityPerFrame {
						vec4 glstate_lightmodel_ambient;
						vec4 unused_5_1[5];
					};
					in  vec3 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec3 in_TEXCOORD0;
					out vec4 vs_COLOR0;
					out vec3 vs_COLOR1;
					out vec2 vs_TEXCOORD0;
					int u_xlati0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					vec3 u_xlat3;
					vec3 u_xlat4;
					vec3 u_xlat5;
					vec3 u_xlat6;
					bool u_xlatb6;
					vec3 u_xlat7;
					bool u_xlatb13;
					float u_xlat22;
					float u_xlat23;
					int u_xlati24;
					float u_xlat25;
					bool u_xlatb25;
					float u_xlat26;
					bool u_xlatb26;
					void main()
					{
					    u_xlati0 = unity_StereoEyeIndex << 2;
					    u_xlat7.xyz = unity_ObjectToWorld[0].yyy * unity_StereoMatrixV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].xyz;
					    u_xlat7.xyz = unity_StereoMatrixV[u_xlati0 / 4][u_xlati0 % 4].xyz * unity_ObjectToWorld[0].xxx + u_xlat7.xyz;
					    u_xlat7.xyz = unity_StereoMatrixV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].xyz * unity_ObjectToWorld[0].zzz + u_xlat7.xyz;
					    u_xlat7.xyz = unity_StereoMatrixV[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4].xyz * unity_ObjectToWorld[0].www + u_xlat7.xyz;
					    u_xlat1.xyz = unity_ObjectToWorld[1].yyy * unity_StereoMatrixV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].xyz;
					    u_xlat1.xyz = unity_StereoMatrixV[u_xlati0 / 4][u_xlati0 % 4].xyz * unity_ObjectToWorld[1].xxx + u_xlat1.xyz;
					    u_xlat1.xyz = unity_StereoMatrixV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].xyz * unity_ObjectToWorld[1].zzz + u_xlat1.xyz;
					    u_xlat1.xyz = unity_StereoMatrixV[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4].xyz * unity_ObjectToWorld[1].www + u_xlat1.xyz;
					    u_xlat2.xyz = unity_ObjectToWorld[2].yyy * unity_StereoMatrixV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].xyz;
					    u_xlat2.xyz = unity_StereoMatrixV[u_xlati0 / 4][u_xlati0 % 4].xyz * unity_ObjectToWorld[2].xxx + u_xlat2.xyz;
					    u_xlat2.xyz = unity_StereoMatrixV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].xyz * unity_ObjectToWorld[2].zzz + u_xlat2.xyz;
					    u_xlat2.xyz = unity_StereoMatrixV[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4].xyz * unity_ObjectToWorld[2].www + u_xlat2.xyz;
					    u_xlat3.xyz = unity_ObjectToWorld[3].yyy * unity_StereoMatrixV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].xyz;
					    u_xlat3.xyz = unity_StereoMatrixV[u_xlati0 / 4][u_xlati0 % 4].xyz * unity_ObjectToWorld[3].xxx + u_xlat3.xyz;
					    u_xlat3.xyz = unity_StereoMatrixV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].xyz * unity_ObjectToWorld[3].zzz + u_xlat3.xyz;
					    u_xlat3.xyz = unity_StereoMatrixV[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4].xyz * unity_ObjectToWorld[3].www + u_xlat3.xyz;
					    u_xlat4.xyz = unity_WorldToObject[1].xyz * unity_StereoMatrixInvV[u_xlati0 / 4][u_xlati0 % 4].yyy;
					    u_xlat4.xyz = unity_WorldToObject[0].xyz * unity_StereoMatrixInvV[u_xlati0 / 4][u_xlati0 % 4].xxx + u_xlat4.xyz;
					    u_xlat4.xyz = unity_WorldToObject[2].xyz * unity_StereoMatrixInvV[u_xlati0 / 4][u_xlati0 % 4].zzz + u_xlat4.xyz;
					    u_xlat4.xyz = unity_WorldToObject[3].xyz * unity_StereoMatrixInvV[u_xlati0 / 4][u_xlati0 % 4].www + u_xlat4.xyz;
					    u_xlat5.xyz = unity_WorldToObject[1].xyz * unity_StereoMatrixInvV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].yyy;
					    u_xlat5.xyz = unity_WorldToObject[0].xyz * unity_StereoMatrixInvV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].xxx + u_xlat5.xyz;
					    u_xlat5.xyz = unity_WorldToObject[2].xyz * unity_StereoMatrixInvV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].zzz + u_xlat5.xyz;
					    u_xlat5.xyz = unity_WorldToObject[3].xyz * unity_StereoMatrixInvV[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].www + u_xlat5.xyz;
					    u_xlat6.xyz = unity_WorldToObject[1].xyz * unity_StereoMatrixInvV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].yyy;
					    u_xlat6.xyz = unity_WorldToObject[0].xyz * unity_StereoMatrixInvV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].xxx + u_xlat6.xyz;
					    u_xlat6.xyz = unity_WorldToObject[2].xyz * unity_StereoMatrixInvV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].zzz + u_xlat6.xyz;
					    u_xlat6.xyz = unity_WorldToObject[3].xyz * unity_StereoMatrixInvV[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].www + u_xlat6.xyz;
					    u_xlat1.xyz = u_xlat1.xyz * in_POSITION0.yyy;
					    u_xlat7.xyz = u_xlat7.xyz * in_POSITION0.xxx + u_xlat1.xyz;
					    u_xlat7.xyz = u_xlat2.xyz * in_POSITION0.zzz + u_xlat7.xyz;
					    u_xlat7.xyz = u_xlat3.xyz + u_xlat7.xyz;
					    u_xlat1.x = dot(u_xlat4.xyz, in_NORMAL0.xyz);
					    u_xlat1.y = dot(u_xlat5.xyz, in_NORMAL0.xyz);
					    u_xlat1.z = dot(u_xlat6.xyz, in_NORMAL0.xyz);
					    u_xlat22 = dot(u_xlat1.xyz, u_xlat1.xyz);
					    u_xlat22 = inversesqrt(u_xlat22);
					    u_xlat1.xyz = vec3(u_xlat22) * u_xlat1.xyz;
					    u_xlat22 = dot(u_xlat7.xyz, u_xlat7.xyz);
					    u_xlat22 = inversesqrt(u_xlat22);
					    u_xlat2.xyz = _Color.xyz * glstate_lightmodel_ambient.xyz + _Emission.xyz;
					    u_xlat23 = _Shininess * 128.0;
					    u_xlat3.xyz = u_xlat2.xyz;
					    u_xlat4.x = float(0.0);
					    u_xlat4.y = float(0.0);
					    u_xlat4.z = float(0.0);
					    for(int u_xlati_loop_1 = 0 ; u_xlati_loop_1<unity_VertexLightParams.x ; u_xlati_loop_1++)
					    {
					        u_xlat5.xyz = (-u_xlat7.xyz) * unity_LightPosition[u_xlati_loop_1].www + unity_LightPosition[u_xlati_loop_1].xyz;
					        u_xlat25 = dot(u_xlat5.xyz, u_xlat5.xyz);
					        u_xlat26 = unity_LightAtten[u_xlati_loop_1].z * u_xlat25 + 1.0;
					        u_xlat26 = float(1.0) / u_xlat26;
					        u_xlatb6 = 0.0!=unity_LightPosition[u_xlati_loop_1].w;
					        u_xlatb13 = unity_LightAtten[u_xlati_loop_1].w<u_xlat25;
					        u_xlatb6 = u_xlatb13 && u_xlatb6;
					        u_xlat26 = (u_xlatb6) ? 0.0 : u_xlat26;
					        u_xlat25 = max(u_xlat25, 9.99999997e-07);
					        u_xlat25 = inversesqrt(u_xlat25);
					        u_xlat5.xyz = vec3(u_xlat25) * u_xlat5.xyz;
					        u_xlat25 = dot(u_xlat5.xyz, unity_SpotDirection[u_xlati_loop_1].xyz);
					        u_xlat25 = max(u_xlat25, 0.0);
					        u_xlat25 = u_xlat25 + (-unity_LightAtten[u_xlati_loop_1].x);
					        u_xlat25 = u_xlat25 * unity_LightAtten[u_xlati_loop_1].y;
					        u_xlat25 = clamp(u_xlat25, 0.0, 1.0);
					        u_xlat25 = u_xlat25 * u_xlat26;
					        u_xlat25 = u_xlat25 * 0.5;
					        u_xlat26 = dot(u_xlat1.xyz, u_xlat5.xyz);
					        u_xlat26 = max(u_xlat26, 0.0);
					        u_xlat6.xyz = vec3(u_xlat26) * _Color.xyz;
					        u_xlat6.xyz = u_xlat6.xyz * unity_LightColor[u_xlati_loop_1].xyz;
					        u_xlatb26 = 0.0<u_xlat26;
					        if(u_xlatb26){
					            u_xlat5.xyz = (-u_xlat7.xyz) * vec3(u_xlat22) + u_xlat5.xyz;
					            u_xlat26 = dot(u_xlat5.xyz, u_xlat5.xyz);
					            u_xlat26 = inversesqrt(u_xlat26);
					            u_xlat5.xyz = vec3(u_xlat26) * u_xlat5.xyz;
					            u_xlat5.x = dot(u_xlat1.xyz, u_xlat5.xyz);
					            u_xlat5.x = max(u_xlat5.x, 0.0);
					            u_xlat5.x = log2(u_xlat5.x);
					            u_xlat5.x = u_xlat23 * u_xlat5.x;
					            u_xlat5.x = exp2(u_xlat5.x);
					            u_xlat5.x = min(u_xlat5.x, 1.0);
					            u_xlat5.x = u_xlat25 * u_xlat5.x;
					            u_xlat4.xyz = u_xlat5.xxx * unity_LightColor[u_xlati_loop_1].xyz + u_xlat4.xyz;
					        }
					        u_xlat5.xyz = vec3(u_xlat25) * u_xlat6.xyz;
					        u_xlat5.xyz = min(u_xlat5.xyz, vec3(1.0, 1.0, 1.0));
					        u_xlat3.xyz = u_xlat3.xyz + u_xlat5.xyz;
					    }
					    vs_COLOR1.xyz = u_xlat4.xyz * _SpecColor.xyz;
					    vs_COLOR1.xyz = clamp(vs_COLOR1.xyz, 0.0, 1.0);
					    vs_COLOR0.xyz = u_xlat3.xyz;
					    vs_COLOR0.xyz = clamp(vs_COLOR0.xyz, 0.0, 1.0);
					    vs_COLOR0.w = _Color.w;
					    vs_COLOR0.w = clamp(vs_COLOR0.w, 0.0, 1.0);
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
					    u_xlat1 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat1 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat1;
					    u_xlat1 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat1;
					    u_xlat1 = u_xlat1 + unity_ObjectToWorld[3];
					    u_xlat2 = u_xlat1.yyyy * unity_StereoMatrixVP[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4];
					    u_xlat2 = unity_StereoMatrixVP[u_xlati0 / 4][u_xlati0 % 4] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4] * u_xlat1.zzzz + u_xlat2;
					    gl_Position = unity_StereoMatrixVP[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4] * u_xlat1.wwww + u_xlat2;
					    return;
					}"
				}
			}
			Program "fp" {
				SubProgram "d3d11 " {
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[8];
						float _Cutoff;
					};
					uniform  sampler2D _MainTex;
					in  vec4 vs_COLOR0;
					in  vec3 vs_COLOR1;
					in  vec2 vs_TEXCOORD0;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					bool u_xlatb1;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat0 = u_xlat0 * vs_COLOR0;
					    u_xlatb1 = _Cutoff>=u_xlat0.w;
					    if(((int(u_xlatb1) * int(0xffffffffu)))!=0){discard;}
					    SV_Target0.xyz = u_xlat0.xyz * vec3(2.0, 2.0, 2.0) + vs_COLOR1.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "UNITY_SINGLE_PASS_STEREO" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[8];
						float _Cutoff;
					};
					uniform  sampler2D _MainTex;
					in  vec4 vs_COLOR0;
					in  vec3 vs_COLOR1;
					in  vec2 vs_TEXCOORD0;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					bool u_xlatb1;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat0 = u_xlat0 * vs_COLOR0;
					    u_xlatb1 = _Cutoff>=u_xlat0.w;
					    if(((int(u_xlatb1) * int(0xffffffffu)))!=0){discard;}
					    SV_Target0.xyz = u_xlat0.xyz * vec3(2.0, 2.0, 2.0) + vs_COLOR1.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "POINT" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[8];
						float _Cutoff;
					};
					uniform  sampler2D _MainTex;
					in  vec4 vs_COLOR0;
					in  vec3 vs_COLOR1;
					in  vec2 vs_TEXCOORD0;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					bool u_xlatb1;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat0 = u_xlat0 * vs_COLOR0;
					    u_xlatb1 = _Cutoff>=u_xlat0.w;
					    if(((int(u_xlatb1) * int(0xffffffffu)))!=0){discard;}
					    SV_Target0.xyz = u_xlat0.xyz * vec3(2.0, 2.0, 2.0) + vs_COLOR1.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "POINT" "UNITY_SINGLE_PASS_STEREO" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[8];
						float _Cutoff;
					};
					uniform  sampler2D _MainTex;
					in  vec4 vs_COLOR0;
					in  vec3 vs_COLOR1;
					in  vec2 vs_TEXCOORD0;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					bool u_xlatb1;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat0 = u_xlat0 * vs_COLOR0;
					    u_xlatb1 = _Cutoff>=u_xlat0.w;
					    if(((int(u_xlatb1) * int(0xffffffffu)))!=0){discard;}
					    SV_Target0.xyz = u_xlat0.xyz * vec3(2.0, 2.0, 2.0) + vs_COLOR1.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SPOT" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[8];
						float _Cutoff;
					};
					uniform  sampler2D _MainTex;
					in  vec4 vs_COLOR0;
					in  vec3 vs_COLOR1;
					in  vec2 vs_TEXCOORD0;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					bool u_xlatb1;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat0 = u_xlat0 * vs_COLOR0;
					    u_xlatb1 = _Cutoff>=u_xlat0.w;
					    if(((int(u_xlatb1) * int(0xffffffffu)))!=0){discard;}
					    SV_Target0.xyz = u_xlat0.xyz * vec3(2.0, 2.0, 2.0) + vs_COLOR1.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SPOT" "UNITY_SINGLE_PASS_STEREO" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[8];
						float _Cutoff;
					};
					uniform  sampler2D _MainTex;
					in  vec4 vs_COLOR0;
					in  vec3 vs_COLOR1;
					in  vec2 vs_TEXCOORD0;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					bool u_xlatb1;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy);
					    u_xlat0 = u_xlat0 * vs_COLOR0;
					    u_xlatb1 = _Cutoff>=u_xlat0.w;
					    if(((int(u_xlatb1) * int(0xffffffffu)))!=0){discard;}
					    SV_Target0.xyz = u_xlat0.xyz * vec3(2.0, 2.0, 2.0) + vs_COLOR1.xyz;
					    SV_Target0.w = u_xlat0.w;
					    return;
					}"
				}
			}
		}
		Pass {
			LOD 100
			Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "VertexLM" "QUEUE" = "AlphaTest" "RenderType" = "TransparentCutout" }
			ColorMask RGB -1
			AlphaToMask On
			GpuProgramID 47567
			Program "vp" {
				SubProgram "d3d11 " {
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						vec4 unity_Lightmap_ST;
						vec4 _MainTex_ST;
						vec4 unused_0_3[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[7];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_2[2];
					};
					layout(std140) uniform UnityLightmaps {
						vec4 unity_LightmapST;
						vec4 unused_3_1;
					};
					in  vec3 in_POSITION0;
					in  vec4 in_COLOR0;
					in  vec3 in_TEXCOORD1;
					in  vec3 in_TEXCOORD0;
					out vec4 vs_COLOR0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out vec2 vs_TEXCOORD2;
					vec4 u_xlat0;
					vec4 u_xlat1;
					void main()
					{
					    vs_COLOR0 = in_COLOR0;
					    vs_COLOR0 = clamp(vs_COLOR0, 0.0, 1.0);
					    vs_TEXCOORD0.xy = in_TEXCOORD1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
					    vs_TEXCOORD1.xy = in_TEXCOORD1.xy * unity_Lightmap_ST.xy + unity_Lightmap_ST.zw;
					    vs_TEXCOORD2.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						vec4 unity_Lightmap_ST;
						vec4 _MainTex_ST;
						vec4 unused_0_3[3];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[7];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_2_0[24];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_2_2[40];
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					layout(std140) uniform UnityLightmaps {
						vec4 unity_LightmapST;
						vec4 unused_4_1;
					};
					in  vec3 in_POSITION0;
					in  vec4 in_COLOR0;
					in  vec3 in_TEXCOORD1;
					in  vec3 in_TEXCOORD0;
					out vec4 vs_COLOR0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out vec2 vs_TEXCOORD2;
					vec4 u_xlat0;
					int u_xlati1;
					vec4 u_xlat2;
					void main()
					{
					    vs_COLOR0 = in_COLOR0;
					    vs_COLOR0 = clamp(vs_COLOR0, 0.0, 1.0);
					    vs_TEXCOORD0.xy = in_TEXCOORD1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
					    vs_TEXCOORD1.xy = in_TEXCOORD1.xy * unity_Lightmap_ST.xy + unity_Lightmap_ST.zw;
					    vs_TEXCOORD2.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlati1 = unity_StereoEyeIndex << 2;
					    u_xlat2 = u_xlat0.yyyy * unity_StereoMatrixVP[(u_xlati1 + 1) / 4][(u_xlati1 + 1) % 4];
					    u_xlat2 = unity_StereoMatrixVP[u_xlati1 / 4][u_xlati1 % 4] * u_xlat0.xxxx + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati1 + 2) / 4][(u_xlati1 + 2) % 4] * u_xlat0.zzzz + u_xlat2;
					    gl_Position = unity_StereoMatrixVP[(u_xlati1 + 3) / 4][(u_xlati1 + 3) % 4] * u_xlat0.wwww + u_xlat2;
					    return;
					}"
				}
			}
			Program "fp" {
				SubProgram "d3d11 " {
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unity_Lightmap_HDR;
						vec4 unused_0_1[3];
						float _LerpValue;
						vec4 _Color;
						float _Cutoff;
					};
					uniform  sampler2D _Lightmap1;
					uniform  sampler2D _Lightmap2;
					uniform  sampler2D _MainTex;
					in  vec4 vs_COLOR0;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					bool u_xlatb1;
					vec4 u_xlat2;
					float u_xlat10;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD2.xy);
					    u_xlat1.x = u_xlat0.w * vs_COLOR0.w + (-_Cutoff);
					    u_xlatb1 = u_xlat1.x<0.0;
					    if(((int(u_xlatb1) * int(0xffffffffu)))!=0){discard;}
					    u_xlat1 = texture(_Lightmap2, vs_TEXCOORD0.xy);
					    u_xlat2 = texture(_Lightmap1, vs_TEXCOORD0.xy);
					    u_xlat1 = u_xlat1 + (-u_xlat2);
					    u_xlat1 = vec4(_LerpValue) * u_xlat1 + u_xlat2;
					    u_xlat10 = log2(u_xlat1.w);
					    u_xlat10 = u_xlat10 * unity_Lightmap_HDR.y;
					    u_xlat10 = exp2(u_xlat10);
					    u_xlat10 = u_xlat10 * unity_Lightmap_HDR.x;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat10);
					    u_xlat1.xyz = u_xlat1.xyz * _Color.xyz;
					    SV_Target0.xyz = u_xlat0.xyz * u_xlat1.xyz;
					    u_xlat0.x = u_xlat0.w * vs_COLOR0.w;
					    SV_Target0.w = u_xlat0.x;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "UNITY_SINGLE_PASS_STEREO" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unity_Lightmap_HDR;
						vec4 unused_0_1[3];
						float _LerpValue;
						vec4 _Color;
						float _Cutoff;
					};
					uniform  sampler2D _Lightmap1;
					uniform  sampler2D _Lightmap2;
					uniform  sampler2D _MainTex;
					in  vec4 vs_COLOR0;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD2;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					bool u_xlatb1;
					vec4 u_xlat2;
					float u_xlat10;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD2.xy);
					    u_xlat1.x = u_xlat0.w * vs_COLOR0.w + (-_Cutoff);
					    u_xlatb1 = u_xlat1.x<0.0;
					    if(((int(u_xlatb1) * int(0xffffffffu)))!=0){discard;}
					    u_xlat1 = texture(_Lightmap2, vs_TEXCOORD0.xy);
					    u_xlat2 = texture(_Lightmap1, vs_TEXCOORD0.xy);
					    u_xlat1 = u_xlat1 + (-u_xlat2);
					    u_xlat1 = vec4(_LerpValue) * u_xlat1 + u_xlat2;
					    u_xlat10 = log2(u_xlat1.w);
					    u_xlat10 = u_xlat10 * unity_Lightmap_HDR.y;
					    u_xlat10 = exp2(u_xlat10);
					    u_xlat10 = u_xlat10 * unity_Lightmap_HDR.x;
					    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat10);
					    u_xlat1.xyz = u_xlat1.xyz * _Color.xyz;
					    SV_Target0.xyz = u_xlat0.xyz * u_xlat1.xyz;
					    u_xlat0.x = u_xlat0.w * vs_COLOR0.w;
					    SV_Target0.w = u_xlat0.x;
					    return;
					}"
				}
			}
		}
		Pass {
			Name "Caster"
			LOD 100
			Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "AlphaTest" "RenderType" = "TransparentCutout" "SHADOWSUPPORT" = "true" }
			GpuProgramID 76863
			Program "vp" {
				SubProgram "d3d11 " {
					Keywords { "SHADOWS_DEPTH" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						vec4 _MainTex_ST;
						vec4 unused_0_2[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_1_1[47];
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_2_0[5];
						vec4 unity_LightShadowBias;
						vec4 unused_2_2[20];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[3];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_4_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_4_2[2];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					float u_xlat6;
					float u_xlat9;
					bool u_xlatb9;
					void main()
					{
					    u_xlat0.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat0.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat0.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat9 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat0.xyz = vec3(u_xlat9) * u_xlat0.xyz;
					    u_xlat1 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat1 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat1;
					    u_xlat1 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat1;
					    u_xlat1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat1;
					    u_xlat2.xyz = (-u_xlat1.xyz) * _WorldSpaceLightPos0.www + _WorldSpaceLightPos0.xyz;
					    u_xlat9 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat2.xyz = vec3(u_xlat9) * u_xlat2.xyz;
					    u_xlat9 = dot(u_xlat0.xyz, u_xlat2.xyz);
					    u_xlat9 = (-u_xlat9) * u_xlat9 + 1.0;
					    u_xlat9 = sqrt(u_xlat9);
					    u_xlat9 = u_xlat9 * unity_LightShadowBias.z;
					    u_xlat0.xyz = (-u_xlat0.xyz) * vec3(u_xlat9) + u_xlat1.xyz;
					    u_xlatb9 = unity_LightShadowBias.z!=0.0;
					    u_xlat0.xyz = (bool(u_xlatb9)) ? u_xlat0.xyz : u_xlat1.xyz;
					    u_xlat2 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat2 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat2;
					    u_xlat0 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat2;
					    u_xlat0 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat0;
					    u_xlat1.x = unity_LightShadowBias.x / u_xlat0.w;
					    u_xlat1.x = min(u_xlat1.x, 0.0);
					    u_xlat1.x = max(u_xlat1.x, -1.0);
					    u_xlat6 = u_xlat0.z + u_xlat1.x;
					    u_xlat1.x = min(u_xlat0.w, u_xlat6);
					    gl_Position.xyw = u_xlat0.xyw;
					    u_xlat0.x = (-u_xlat6) + u_xlat1.x;
					    gl_Position.z = unity_LightShadowBias.y * u_xlat0.x + u_xlat6;
					    vs_TEXCOORD1.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SHADOWS_DEPTH" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						vec4 _MainTex_ST;
						vec4 unused_0_2[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_1_1[47];
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_2_0[5];
						vec4 unity_LightShadowBias;
						vec4 unused_2_2[20];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[3];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_4_0[24];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_4_2[40];
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					float u_xlat6;
					float u_xlat9;
					int u_xlati9;
					bool u_xlatb9;
					void main()
					{
					    u_xlat0.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat0.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat0.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat9 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat0.xyz = vec3(u_xlat9) * u_xlat0.xyz;
					    u_xlat1 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat1 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat1;
					    u_xlat1 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat1;
					    u_xlat1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat1;
					    u_xlat2.xyz = (-u_xlat1.xyz) * _WorldSpaceLightPos0.www + _WorldSpaceLightPos0.xyz;
					    u_xlat9 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat2.xyz = vec3(u_xlat9) * u_xlat2.xyz;
					    u_xlat9 = dot(u_xlat0.xyz, u_xlat2.xyz);
					    u_xlat9 = (-u_xlat9) * u_xlat9 + 1.0;
					    u_xlat9 = sqrt(u_xlat9);
					    u_xlat9 = u_xlat9 * unity_LightShadowBias.z;
					    u_xlat0.xyz = (-u_xlat0.xyz) * vec3(u_xlat9) + u_xlat1.xyz;
					    u_xlatb9 = unity_LightShadowBias.z!=0.0;
					    u_xlat0.xyz = (bool(u_xlatb9)) ? u_xlat0.xyz : u_xlat1.xyz;
					    u_xlati9 = unity_StereoEyeIndex << 2;
					    u_xlat2 = u_xlat0.yyyy * unity_StereoMatrixVP[(u_xlati9 + 1) / 4][(u_xlati9 + 1) % 4];
					    u_xlat2 = unity_StereoMatrixVP[u_xlati9 / 4][u_xlati9 % 4] * u_xlat0.xxxx + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati9 + 2) / 4][(u_xlati9 + 2) % 4] * u_xlat0.zzzz + u_xlat2;
					    u_xlat0 = unity_StereoMatrixVP[(u_xlati9 + 3) / 4][(u_xlati9 + 3) % 4] * u_xlat1.wwww + u_xlat2;
					    u_xlat1.x = unity_LightShadowBias.x / u_xlat0.w;
					    u_xlat1.x = min(u_xlat1.x, 0.0);
					    u_xlat1.x = max(u_xlat1.x, -1.0);
					    u_xlat6 = u_xlat0.z + u_xlat1.x;
					    u_xlat1.x = min(u_xlat0.w, u_xlat6);
					    gl_Position.xyw = u_xlat0.xyw;
					    u_xlat0.x = (-u_xlat6) + u_xlat1.x;
					    gl_Position.z = unity_LightShadowBias.y * u_xlat0.x + u_xlat6;
					    vs_TEXCOORD1.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SHADOWS_CUBE" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						vec4 _MainTex_ST;
						vec4 unused_0_2[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_1_1[47];
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_2_0[5];
						vec4 unity_LightShadowBias;
						vec4 unused_2_2[20];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[3];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_4_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_4_2[2];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					float u_xlat9;
					bool u_xlatb9;
					void main()
					{
					    u_xlat0.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat0.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat0.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat9 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat0.xyz = vec3(u_xlat9) * u_xlat0.xyz;
					    u_xlat1 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat1 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat1;
					    u_xlat1 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat1;
					    u_xlat1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat1;
					    u_xlat2.xyz = (-u_xlat1.xyz) * _WorldSpaceLightPos0.www + _WorldSpaceLightPos0.xyz;
					    u_xlat9 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat2.xyz = vec3(u_xlat9) * u_xlat2.xyz;
					    u_xlat9 = dot(u_xlat0.xyz, u_xlat2.xyz);
					    u_xlat9 = (-u_xlat9) * u_xlat9 + 1.0;
					    u_xlat9 = sqrt(u_xlat9);
					    u_xlat9 = u_xlat9 * unity_LightShadowBias.z;
					    u_xlat0.xyz = (-u_xlat0.xyz) * vec3(u_xlat9) + u_xlat1.xyz;
					    u_xlatb9 = unity_LightShadowBias.z!=0.0;
					    u_xlat0.xyz = (bool(u_xlatb9)) ? u_xlat0.xyz : u_xlat1.xyz;
					    u_xlat2 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat2 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat2;
					    u_xlat0 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat2;
					    u_xlat0 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat0;
					    u_xlat1.x = min(u_xlat0.w, u_xlat0.z);
					    u_xlat1.x = (-u_xlat0.z) + u_xlat1.x;
					    gl_Position.z = unity_LightShadowBias.y * u_xlat1.x + u_xlat0.z;
					    gl_Position.xyw = u_xlat0.xyw;
					    vs_TEXCOORD1.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						vec4 _MainTex_ST;
						vec4 unused_0_2[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_1_1[47];
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_2_0[5];
						vec4 unity_LightShadowBias;
						vec4 unused_2_2[20];
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						mat4x4 unity_WorldToObject;
						vec4 unused_3_2[3];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_4_0[24];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_4_2[40];
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					float u_xlat9;
					int u_xlati9;
					bool u_xlatb9;
					void main()
					{
					    u_xlat0.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
					    u_xlat0.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
					    u_xlat0.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
					    u_xlat9 = dot(u_xlat0.xyz, u_xlat0.xyz);
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat0.xyz = vec3(u_xlat9) * u_xlat0.xyz;
					    u_xlat1 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat1 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat1;
					    u_xlat1 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat1;
					    u_xlat1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat1;
					    u_xlat2.xyz = (-u_xlat1.xyz) * _WorldSpaceLightPos0.www + _WorldSpaceLightPos0.xyz;
					    u_xlat9 = dot(u_xlat2.xyz, u_xlat2.xyz);
					    u_xlat9 = inversesqrt(u_xlat9);
					    u_xlat2.xyz = vec3(u_xlat9) * u_xlat2.xyz;
					    u_xlat9 = dot(u_xlat0.xyz, u_xlat2.xyz);
					    u_xlat9 = (-u_xlat9) * u_xlat9 + 1.0;
					    u_xlat9 = sqrt(u_xlat9);
					    u_xlat9 = u_xlat9 * unity_LightShadowBias.z;
					    u_xlat0.xyz = (-u_xlat0.xyz) * vec3(u_xlat9) + u_xlat1.xyz;
					    u_xlatb9 = unity_LightShadowBias.z!=0.0;
					    u_xlat0.xyz = (bool(u_xlatb9)) ? u_xlat0.xyz : u_xlat1.xyz;
					    u_xlati9 = unity_StereoEyeIndex << 2;
					    u_xlat2 = u_xlat0.yyyy * unity_StereoMatrixVP[(u_xlati9 + 1) / 4][(u_xlati9 + 1) % 4];
					    u_xlat2 = unity_StereoMatrixVP[u_xlati9 / 4][u_xlati9 % 4] * u_xlat0.xxxx + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati9 + 2) / 4][(u_xlati9 + 2) % 4] * u_xlat0.zzzz + u_xlat2;
					    u_xlat0 = unity_StereoMatrixVP[(u_xlati9 + 3) / 4][(u_xlati9 + 3) % 4] * u_xlat1.wwww + u_xlat2;
					    u_xlat1.x = min(u_xlat0.w, u_xlat0.z);
					    u_xlat1.x = (-u_xlat0.z) + u_xlat1.x;
					    gl_Position.z = unity_LightShadowBias.y * u_xlat1.x + u_xlat0.z;
					    gl_Position.xyw = u_xlat0.xyw;
					    vs_TEXCOORD1.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "INSTANCING_ON" "SHADOWS_DEPTH" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						vec4 _MainTex_ST;
						vec4 unused_0_2[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_1_1[47];
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_2_0[5];
						vec4 unity_LightShadowBias;
						vec4 unused_2_2[20];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_3_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityDrawCallInfo {
						int unity_BaseInstanceID;
					};
					struct unity_Builtins0Array_Type {
						mat4x4 unity_Builtins0Array.unity_ObjectToWorldArray;
						mat4x4 unity_Builtins0Array.unity_WorldToObjectArray;
					};
					layout(std140) uniform UnityInstancing_PerDraw0 {
						unity_Builtins0Array_Type unity_Builtins0Array;
						vec4 unused_5_1[16];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					vec4 u_xlat0;
					int u_xlati0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					bool u_xlatb3;
					float u_xlat6;
					float u_xlat9;
					void main()
					{
					    u_xlati0 = gl_InstanceID + unity_BaseInstanceID;
					    u_xlati0 = u_xlati0 << 3;
					    u_xlat1 = in_POSITION0.yyyy * unity_Builtins0Array.unity_Builtins0Array.unity_ObjectToWorldArray[(u_xlati0 + 1)];
					    u_xlat1 = unity_Builtins0Array.unity_Builtins0Array.unity_ObjectToWorldArray[u_xlati0] * in_POSITION0.xxxx + u_xlat1;
					    u_xlat1 = unity_Builtins0Array.unity_Builtins0Array.unity_ObjectToWorldArray[(u_xlati0 + 2)] * in_POSITION0.zzzz + u_xlat1;
					    u_xlat1 = unity_Builtins0Array.unity_Builtins0Array.unity_ObjectToWorldArray[(u_xlati0 + 3)] * in_POSITION0.wwww + u_xlat1;
					    u_xlatb3 = unity_LightShadowBias.z!=0.0;
					    if(u_xlatb3){
					        u_xlat2.x = dot(in_NORMAL0.xyz, unity_Builtins0Array.unity_Builtins0Array.unity_WorldToObjectArray[u_xlati0].xyz);
					        u_xlat2.y = dot(in_NORMAL0.xyz, unity_Builtins0Array.unity_Builtins0Array.unity_WorldToObjectArray[(u_xlati0 + 1)].xyz);
					        u_xlat2.z = dot(in_NORMAL0.xyz, unity_Builtins0Array.unity_Builtins0Array.unity_WorldToObjectArray[(u_xlati0 + 2)].xyz);
					        u_xlat0.x = dot(u_xlat2.xyz, u_xlat2.xyz);
					        u_xlat0.x = inversesqrt(u_xlat0.x);
					        u_xlat0.xyz = u_xlat0.xxx * u_xlat2.xyz;
					        u_xlat2.xyz = (-u_xlat1.xyz) * _WorldSpaceLightPos0.www + _WorldSpaceLightPos0.xyz;
					        u_xlat9 = dot(u_xlat2.xyz, u_xlat2.xyz);
					        u_xlat9 = inversesqrt(u_xlat9);
					        u_xlat2.xyz = vec3(u_xlat9) * u_xlat2.xyz;
					        u_xlat9 = dot(u_xlat0.xyz, u_xlat2.xyz);
					        u_xlat9 = (-u_xlat9) * u_xlat9 + 1.0;
					        u_xlat9 = sqrt(u_xlat9);
					        u_xlat9 = u_xlat9 * unity_LightShadowBias.z;
					        u_xlat1.xyz = (-u_xlat0.xyz) * vec3(u_xlat9) + u_xlat1.xyz;
					    }
					    u_xlat0 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat0 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat0;
					    u_xlat0 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat0;
					    u_xlat0 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat0;
					    u_xlat1.x = unity_LightShadowBias.x / u_xlat0.w;
					    u_xlat1.x = min(u_xlat1.x, 0.0);
					    u_xlat1.x = max(u_xlat1.x, -1.0);
					    u_xlat6 = u_xlat0.z + u_xlat1.x;
					    u_xlat1.x = min(u_xlat0.w, u_xlat6);
					    u_xlat1.x = (-u_xlat6) + u_xlat1.x;
					    gl_Position.z = unity_LightShadowBias.y * u_xlat1.x + u_xlat6;
					    vs_TEXCOORD1.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
					    gl_Position.xyw = u_xlat0.xyw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "INSTANCING_ON" "SHADOWS_DEPTH" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						vec4 _MainTex_ST;
						vec4 unused_0_2[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_1_1[47];
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_2_0[5];
						vec4 unity_LightShadowBias;
						vec4 unused_2_2[20];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_3_0[24];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_3_2[40];
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					layout(std140) uniform UnityDrawCallInfo {
						int unity_BaseInstanceID;
					};
					struct unity_Builtins0Array_Type {
						mat4x4 unity_Builtins0Array.unity_ObjectToWorldArray;
						mat4x4 unity_Builtins0Array.unity_WorldToObjectArray;
					};
					layout(std140) uniform UnityInstancing_PerDraw0 {
						unity_Builtins0Array_Type unity_Builtins0Array;
						vec4 unused_6_1[16];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					vec4 u_xlat0;
					int u_xlati0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					bool u_xlatb3;
					float u_xlat6;
					float u_xlat9;
					void main()
					{
					    u_xlati0 = gl_InstanceID + unity_BaseInstanceID;
					    u_xlati0 = u_xlati0 << 3;
					    u_xlat1 = in_POSITION0.yyyy * unity_Builtins0Array.unity_Builtins0Array.unity_ObjectToWorldArray[(u_xlati0 + 1)];
					    u_xlat1 = unity_Builtins0Array.unity_Builtins0Array.unity_ObjectToWorldArray[u_xlati0] * in_POSITION0.xxxx + u_xlat1;
					    u_xlat1 = unity_Builtins0Array.unity_Builtins0Array.unity_ObjectToWorldArray[(u_xlati0 + 2)] * in_POSITION0.zzzz + u_xlat1;
					    u_xlat1 = unity_Builtins0Array.unity_Builtins0Array.unity_ObjectToWorldArray[(u_xlati0 + 3)] * in_POSITION0.wwww + u_xlat1;
					    u_xlatb3 = unity_LightShadowBias.z!=0.0;
					    if(u_xlatb3){
					        u_xlat2.x = dot(in_NORMAL0.xyz, unity_Builtins0Array.unity_Builtins0Array.unity_WorldToObjectArray[u_xlati0].xyz);
					        u_xlat2.y = dot(in_NORMAL0.xyz, unity_Builtins0Array.unity_Builtins0Array.unity_WorldToObjectArray[(u_xlati0 + 1)].xyz);
					        u_xlat2.z = dot(in_NORMAL0.xyz, unity_Builtins0Array.unity_Builtins0Array.unity_WorldToObjectArray[(u_xlati0 + 2)].xyz);
					        u_xlat0.x = dot(u_xlat2.xyz, u_xlat2.xyz);
					        u_xlat0.x = inversesqrt(u_xlat0.x);
					        u_xlat0.xyz = u_xlat0.xxx * u_xlat2.xyz;
					        u_xlat2.xyz = (-u_xlat1.xyz) * _WorldSpaceLightPos0.www + _WorldSpaceLightPos0.xyz;
					        u_xlat9 = dot(u_xlat2.xyz, u_xlat2.xyz);
					        u_xlat9 = inversesqrt(u_xlat9);
					        u_xlat2.xyz = vec3(u_xlat9) * u_xlat2.xyz;
					        u_xlat9 = dot(u_xlat0.xyz, u_xlat2.xyz);
					        u_xlat9 = (-u_xlat9) * u_xlat9 + 1.0;
					        u_xlat9 = sqrt(u_xlat9);
					        u_xlat9 = u_xlat9 * unity_LightShadowBias.z;
					        u_xlat1.xyz = (-u_xlat0.xyz) * vec3(u_xlat9) + u_xlat1.xyz;
					    }
					    u_xlati0 = unity_StereoEyeIndex << 2;
					    u_xlat2 = u_xlat1.yyyy * unity_StereoMatrixVP[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4];
					    u_xlat2 = unity_StereoMatrixVP[u_xlati0 / 4][u_xlati0 % 4] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4] * u_xlat1.zzzz + u_xlat2;
					    u_xlat0 = unity_StereoMatrixVP[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4] * u_xlat1.wwww + u_xlat2;
					    u_xlat1.x = unity_LightShadowBias.x / u_xlat0.w;
					    u_xlat1.x = min(u_xlat1.x, 0.0);
					    u_xlat1.x = max(u_xlat1.x, -1.0);
					    u_xlat6 = u_xlat0.z + u_xlat1.x;
					    u_xlat1.x = min(u_xlat0.w, u_xlat6);
					    u_xlat1.x = (-u_xlat6) + u_xlat1.x;
					    gl_Position.z = unity_LightShadowBias.y * u_xlat1.x + u_xlat6;
					    vs_TEXCOORD1.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
					    gl_Position.xyw = u_xlat0.xyw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "INSTANCING_ON" "SHADOWS_CUBE" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						vec4 _MainTex_ST;
						vec4 unused_0_2[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_1_1[47];
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_2_0[5];
						vec4 unity_LightShadowBias;
						vec4 unused_2_2[20];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_3_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_3_2[2];
					};
					layout(std140) uniform UnityDrawCallInfo {
						int unity_BaseInstanceID;
					};
					struct unity_Builtins0Array_Type {
						mat4x4 unity_Builtins0Array.unity_ObjectToWorldArray;
						mat4x4 unity_Builtins0Array.unity_WorldToObjectArray;
					};
					layout(std140) uniform UnityInstancing_PerDraw0 {
						unity_Builtins0Array_Type unity_Builtins0Array;
						vec4 unused_5_1[16];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					vec4 u_xlat0;
					int u_xlati0;
					vec4 u_xlat1;
					vec3 u_xlat2;
					bool u_xlatb3;
					float u_xlat9;
					void main()
					{
					    u_xlati0 = gl_InstanceID + unity_BaseInstanceID;
					    u_xlati0 = u_xlati0 << 3;
					    u_xlat1 = in_POSITION0.yyyy * unity_Builtins0Array.unity_Builtins0Array.unity_ObjectToWorldArray[(u_xlati0 + 1)];
					    u_xlat1 = unity_Builtins0Array.unity_Builtins0Array.unity_ObjectToWorldArray[u_xlati0] * in_POSITION0.xxxx + u_xlat1;
					    u_xlat1 = unity_Builtins0Array.unity_Builtins0Array.unity_ObjectToWorldArray[(u_xlati0 + 2)] * in_POSITION0.zzzz + u_xlat1;
					    u_xlat1 = unity_Builtins0Array.unity_Builtins0Array.unity_ObjectToWorldArray[(u_xlati0 + 3)] * in_POSITION0.wwww + u_xlat1;
					    u_xlatb3 = unity_LightShadowBias.z!=0.0;
					    if(u_xlatb3){
					        u_xlat2.x = dot(in_NORMAL0.xyz, unity_Builtins0Array.unity_Builtins0Array.unity_WorldToObjectArray[u_xlati0].xyz);
					        u_xlat2.y = dot(in_NORMAL0.xyz, unity_Builtins0Array.unity_Builtins0Array.unity_WorldToObjectArray[(u_xlati0 + 1)].xyz);
					        u_xlat2.z = dot(in_NORMAL0.xyz, unity_Builtins0Array.unity_Builtins0Array.unity_WorldToObjectArray[(u_xlati0 + 2)].xyz);
					        u_xlat0.x = dot(u_xlat2.xyz, u_xlat2.xyz);
					        u_xlat0.x = inversesqrt(u_xlat0.x);
					        u_xlat0.xyz = u_xlat0.xxx * u_xlat2.xyz;
					        u_xlat2.xyz = (-u_xlat1.xyz) * _WorldSpaceLightPos0.www + _WorldSpaceLightPos0.xyz;
					        u_xlat9 = dot(u_xlat2.xyz, u_xlat2.xyz);
					        u_xlat9 = inversesqrt(u_xlat9);
					        u_xlat2.xyz = vec3(u_xlat9) * u_xlat2.xyz;
					        u_xlat9 = dot(u_xlat0.xyz, u_xlat2.xyz);
					        u_xlat9 = (-u_xlat9) * u_xlat9 + 1.0;
					        u_xlat9 = sqrt(u_xlat9);
					        u_xlat9 = u_xlat9 * unity_LightShadowBias.z;
					        u_xlat1.xyz = (-u_xlat0.xyz) * vec3(u_xlat9) + u_xlat1.xyz;
					    }
					    u_xlat0 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat0 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat0;
					    u_xlat0 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat0;
					    u_xlat0 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat0;
					    u_xlat1.x = min(u_xlat0.w, u_xlat0.z);
					    u_xlat1.x = (-u_xlat0.z) + u_xlat1.x;
					    gl_Position.z = unity_LightShadowBias.y * u_xlat1.x + u_xlat0.z;
					    vs_TEXCOORD1.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
					    gl_Position.xyw = u_xlat0.xyw;
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "INSTANCING_ON" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" }
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						vec4 _MainTex_ST;
						vec4 unused_0_2[2];
					};
					layout(std140) uniform UnityLighting {
						vec4 _WorldSpaceLightPos0;
						vec4 unused_1_1[47];
					};
					layout(std140) uniform UnityShadows {
						vec4 unused_2_0[5];
						vec4 unity_LightShadowBias;
						vec4 unused_2_2[20];
					};
					layout(std140) uniform UnityStereoGlobals {
						vec4 unused_3_0[24];
						mat4x4 unity_StereoMatrixVP[2];
						vec4 unused_3_2[40];
					};
					layout(std140) uniform UnityStereoEyeIndex {
						int unity_StereoEyeIndex;
					};
					layout(std140) uniform UnityDrawCallInfo {
						int unity_BaseInstanceID;
					};
					struct unity_Builtins0Array_Type {
						mat4x4 unity_Builtins0Array.unity_ObjectToWorldArray;
						mat4x4 unity_Builtins0Array.unity_WorldToObjectArray;
					};
					layout(std140) uniform UnityInstancing_PerDraw0 {
						unity_Builtins0Array_Type unity_Builtins0Array;
						vec4 unused_6_1[16];
					};
					in  vec4 in_POSITION0;
					in  vec3 in_NORMAL0;
					in  vec4 in_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					vec4 u_xlat0;
					int u_xlati0;
					vec4 u_xlat1;
					vec4 u_xlat2;
					bool u_xlatb3;
					float u_xlat9;
					void main()
					{
					    u_xlati0 = gl_InstanceID + unity_BaseInstanceID;
					    u_xlati0 = u_xlati0 << 3;
					    u_xlat1 = in_POSITION0.yyyy * unity_Builtins0Array.unity_Builtins0Array.unity_ObjectToWorldArray[(u_xlati0 + 1)];
					    u_xlat1 = unity_Builtins0Array.unity_Builtins0Array.unity_ObjectToWorldArray[u_xlati0] * in_POSITION0.xxxx + u_xlat1;
					    u_xlat1 = unity_Builtins0Array.unity_Builtins0Array.unity_ObjectToWorldArray[(u_xlati0 + 2)] * in_POSITION0.zzzz + u_xlat1;
					    u_xlat1 = unity_Builtins0Array.unity_Builtins0Array.unity_ObjectToWorldArray[(u_xlati0 + 3)] * in_POSITION0.wwww + u_xlat1;
					    u_xlatb3 = unity_LightShadowBias.z!=0.0;
					    if(u_xlatb3){
					        u_xlat2.x = dot(in_NORMAL0.xyz, unity_Builtins0Array.unity_Builtins0Array.unity_WorldToObjectArray[u_xlati0].xyz);
					        u_xlat2.y = dot(in_NORMAL0.xyz, unity_Builtins0Array.unity_Builtins0Array.unity_WorldToObjectArray[(u_xlati0 + 1)].xyz);
					        u_xlat2.z = dot(in_NORMAL0.xyz, unity_Builtins0Array.unity_Builtins0Array.unity_WorldToObjectArray[(u_xlati0 + 2)].xyz);
					        u_xlat0.x = dot(u_xlat2.xyz, u_xlat2.xyz);
					        u_xlat0.x = inversesqrt(u_xlat0.x);
					        u_xlat0.xyz = u_xlat0.xxx * u_xlat2.xyz;
					        u_xlat2.xyz = (-u_xlat1.xyz) * _WorldSpaceLightPos0.www + _WorldSpaceLightPos0.xyz;
					        u_xlat9 = dot(u_xlat2.xyz, u_xlat2.xyz);
					        u_xlat9 = inversesqrt(u_xlat9);
					        u_xlat2.xyz = vec3(u_xlat9) * u_xlat2.xyz;
					        u_xlat9 = dot(u_xlat0.xyz, u_xlat2.xyz);
					        u_xlat9 = (-u_xlat9) * u_xlat9 + 1.0;
					        u_xlat9 = sqrt(u_xlat9);
					        u_xlat9 = u_xlat9 * unity_LightShadowBias.z;
					        u_xlat1.xyz = (-u_xlat0.xyz) * vec3(u_xlat9) + u_xlat1.xyz;
					    }
					    u_xlati0 = unity_StereoEyeIndex << 2;
					    u_xlat2 = u_xlat1.yyyy * unity_StereoMatrixVP[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4];
					    u_xlat2 = unity_StereoMatrixVP[u_xlati0 / 4][u_xlati0 % 4] * u_xlat1.xxxx + u_xlat2;
					    u_xlat2 = unity_StereoMatrixVP[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4] * u_xlat1.zzzz + u_xlat2;
					    u_xlat0 = unity_StereoMatrixVP[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4] * u_xlat1.wwww + u_xlat2;
					    u_xlat1.x = min(u_xlat0.w, u_xlat0.z);
					    u_xlat1.x = (-u_xlat0.z) + u_xlat1.x;
					    gl_Position.z = unity_LightShadowBias.y * u_xlat1.x + u_xlat0.z;
					    vs_TEXCOORD1.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
					    gl_Position.xyw = u_xlat0.xyw;
					    return;
					}"
				}
			}
			Program "fp" {
				SubProgram "d3d11 " {
					Keywords { "SHADOWS_DEPTH" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[3];
						float _Cutoff;
						vec4 _Color;
					};
					uniform  sampler2D _MainTex;
					in  vec2 vs_TEXCOORD1;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					bool u_xlatb0;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD1.xy);
					    u_xlat0.x = u_xlat0.w * _Color.w + (-_Cutoff);
					    u_xlatb0 = u_xlat0.x<0.0;
					    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
					    SV_Target0 = vec4(0.0, 0.0, 0.0, 0.0);
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SHADOWS_DEPTH" "UNITY_SINGLE_PASS_STEREO" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[3];
						float _Cutoff;
						vec4 _Color;
					};
					uniform  sampler2D _MainTex;
					in  vec2 vs_TEXCOORD1;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					bool u_xlatb0;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD1.xy);
					    u_xlat0.x = u_xlat0.w * _Color.w + (-_Cutoff);
					    u_xlatb0 = u_xlat0.x<0.0;
					    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
					    SV_Target0 = vec4(0.0, 0.0, 0.0, 0.0);
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SHADOWS_CUBE" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[3];
						float _Cutoff;
						vec4 _Color;
					};
					uniform  sampler2D _MainTex;
					in  vec2 vs_TEXCOORD1;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					bool u_xlatb0;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD1.xy);
					    u_xlat0.x = u_xlat0.w * _Color.w + (-_Cutoff);
					    u_xlatb0 = u_xlat0.x<0.0;
					    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
					    SV_Target0 = vec4(0.0, 0.0, 0.0, 0.0);
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[3];
						float _Cutoff;
						vec4 _Color;
					};
					uniform  sampler2D _MainTex;
					in  vec2 vs_TEXCOORD1;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					bool u_xlatb0;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD1.xy);
					    u_xlat0.x = u_xlat0.w * _Color.w + (-_Cutoff);
					    u_xlatb0 = u_xlat0.x<0.0;
					    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
					    SV_Target0 = vec4(0.0, 0.0, 0.0, 0.0);
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "INSTANCING_ON" "SHADOWS_DEPTH" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[3];
						float _Cutoff;
						vec4 _Color;
					};
					uniform  sampler2D _MainTex;
					in  vec2 vs_TEXCOORD1;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					bool u_xlatb0;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD1.xy);
					    u_xlat0.x = u_xlat0.w * _Color.w + (-_Cutoff);
					    u_xlatb0 = u_xlat0.x<0.0;
					    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
					    SV_Target0 = vec4(0.0, 0.0, 0.0, 0.0);
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "INSTANCING_ON" "SHADOWS_DEPTH" "UNITY_SINGLE_PASS_STEREO" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[3];
						float _Cutoff;
						vec4 _Color;
					};
					uniform  sampler2D _MainTex;
					in  vec2 vs_TEXCOORD1;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					bool u_xlatb0;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD1.xy);
					    u_xlat0.x = u_xlat0.w * _Color.w + (-_Cutoff);
					    u_xlatb0 = u_xlat0.x<0.0;
					    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
					    SV_Target0 = vec4(0.0, 0.0, 0.0, 0.0);
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "INSTANCING_ON" "SHADOWS_CUBE" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[3];
						float _Cutoff;
						vec4 _Color;
					};
					uniform  sampler2D _MainTex;
					in  vec2 vs_TEXCOORD1;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					bool u_xlatb0;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD1.xy);
					    u_xlat0.x = u_xlat0.w * _Color.w + (-_Cutoff);
					    u_xlatb0 = u_xlat0.x<0.0;
					    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
					    SV_Target0 = vec4(0.0, 0.0, 0.0, 0.0);
					    return;
					}"
				}
				SubProgram "d3d11 " {
					Keywords { "INSTANCING_ON" "SHADOWS_CUBE" "UNITY_SINGLE_PASS_STEREO" }
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
					#if HLSLCC_ENABLE_UNIFORM_BUFFERS
					#define UNITY_UNIFORM
					#else
					#define UNITY_UNIFORM uniform
					#endif
					#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
					#if UNITY_SUPPORTS_UNIFORM_LOCATION
					#define UNITY_LOCATION(x) layout(location = x)
					#define UNITY_BINDING(x) layout(binding = x, std140)
					#else
					#define UNITY_LOCATION(x)
					#define UNITY_BINDING(x) layout(std140)
					#endif
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[3];
						float _Cutoff;
						vec4 _Color;
					};
					uniform  sampler2D _MainTex;
					in  vec2 vs_TEXCOORD1;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					bool u_xlatb0;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD1.xy);
					    u_xlat0.x = u_xlat0.w * _Color.w + (-_Cutoff);
					    u_xlatb0 = u_xlat0.x<0.0;
					    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
					    SV_Target0 = vec4(0.0, 0.0, 0.0, 0.0);
					    return;
					}"
				}
			}
		}
	}
}