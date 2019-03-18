//--------------------------------------------------------------------------------------------------
// Final pass for diffuse material
//--------------------------------------------------------------------------------------------------
#include "lib\platform.fxh"
#include "lib\skinning.fxh"

//--------------------------------------------------------------------------------------------------
// Automatic Parameters
//--------------------------------------------------------------------------------------------------
float4x4 	mWorldViewProjection;

//--------------------------------------------------------------------------------------------------
// Material Parameters
//--------------------------------------------------------------------------------------------------
float3   	DiffuseMapModulator;

//--------------------------------------------------------------------------------------------------
// Automatic Colors Parameters
//--------------------------------------------------------------------------------------------------
float3		SelfIllumColor2 = {0.0f, 0.0f, 0.0f};

//--------------------------------------------------------------------------------------------------
// Vertex shader code
//--------------------------------------------------------------------------------------------------
void vs(VS_SKIN_INPUT vIn, out float4 position : POSITION)
{
    ISOLATE position = mul(vIn.position0, mWorldViewProjection);
}

//--------------------------------------------------------------------------------------------------
// Pixel shader code
//--------------------------------------------------------------------------------------------------
float4 ps(in float2 ScreenPos : VPOS) : COLOR
{
	float3 C = DiffuseMapModulator + SelfIllumColor2;
	return FXAALuminance(C);
}

//--------------------------------------------------------------------------------------------------
// Techniques definition
//--------------------------------------------------------------------------------------------------
technique Solid
{
	pass
	{
		VertexShader     = compile vs_3_0 vs();
		PixelShader      = compile ps_3_0 ps();
	}
}
technique SolidSkinning
{
	pass
	{
		VertexShader     = compile vs_3_0 vs();
		PixelShader      = compile ps_3_0 ps();
	}
}
