Shader "Custom/VisibleThroughWalls"
{
    Properties
    {
        _Color("Color", Color) = (1,0,0,1)
        _EmissionColor("Emission Color", Color) = (1,0,0,1)
        _EmissionStrength("Emission Strength", Range(0, 1)) = 1.0
    }
    SubShader
    {
        Tags { "Queue" = "Overlay" } // Renders on top
        Pass
        {
            ZTest Always // Disable depth testing
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag

            struct appdata_t
            {
                float4 vertex : POSITION;
            };

            struct v2f
            {
                float4 pos : SV_POSITION;
            };

            float4 _Color;
            float4 _EmissionColor;
            float _EmissionStrength;

            v2f vert(appdata_t v)
            {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
                return o;
            }

            half4 frag(v2f i) : SV_Target
            {
                return _Color + (_EmissionColor * _EmissionStrength);
            }
            ENDCG
        }
    }
}
