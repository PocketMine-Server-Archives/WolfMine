#include "ShaderConstants.fxh"


struct PS_Input
{
    float4 position : SV_Position;
    float4 color : COLOR;
};

struct PS_Output
{
    float4 color : SV_Target;
};

ROOT_SIGNATURE
void main(in PS_Input PSInput, out PS_Output PSOutput)
{
  PSOutput.color.rgb = lerp(PSInput.color.rgb, CURRENT_COLOR.rgb, PSInput.color.a);
  PSOutput.color.a = 1;
}