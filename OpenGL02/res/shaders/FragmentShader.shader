#version 330 core

in vec3 Color;
in vec2 Texcoord;

out vec4 outColor;

uniform sampler2D Kitten;
uniform sampler2D Puppy;

void main()
{
	vec4 kitten = texture(Kitten, Texcoord);
	vec4 puppy = texture(Puppy, Texcoord);
	vec4 texColor = mix(kitten, puppy, 0.5);
	outColor = vec4(Color, 1.0) * texColor;
}