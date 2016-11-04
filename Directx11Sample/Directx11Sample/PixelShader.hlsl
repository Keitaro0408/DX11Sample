struct pixcelIn
{
	float4 pos : SV_POSITION;
	float4 col : COLOR;
	float2 tex : TEXCOORD0;
};

Texture2D txDiffuse : register(t0);
SamplerState samLinear : register(s0);

float4 ps_main(pixcelIn IN) : SV_Target
{
	pixcelIn OUT;

	//カラーをそのまま返す
	OUT.col = txDiffuse.Sample(samLinear, IN.tex);

	return OUT.col;
}