//���͗p
struct vertexIn
{
	float4 pos : POSITION0;
	float4 col : COLOR0;
};

//�o�͗p
struct vertexOut
{
	float4 pos : SV_POSITION;
	float4 col : COLOR;
};

vertexOut vs_main(vertexIn IN)
{
	vertexOut OUT;

	OUT.pos = IN.pos;
	OUT.col = IN.col;

	return OUT;
}