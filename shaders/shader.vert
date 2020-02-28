

#version 450
#extension GL_ARB_separate_shader_objects : enable

layout(binding = 0) uniform UniformBufferObject {
    mat4 model;
    mat4 view;
    mat4 proj;
    vec2 unused;
} ubo;

layout(location = 0) in vec2 inPosition;
layout(location = 1) in vec3 inColor;

layout(location = 0) out vec3 fragColor;
layout(location = 1) out vec2 interpolatedCirclePosition;


void main() {

    gl_Position = ubo.proj * ubo.view * ubo.model * vec4(inPosition, 0.0, 1.0);
    fragColor = inColor;


    if (gl_VertexIndex == 4 ){
        interpolatedCirclePosition = vec2(-1,-1);
    } else if (gl_VertexIndex == 5){
        interpolatedCirclePosition = vec2(1,-1);
    } else if (gl_VertexIndex == 6){
        interpolatedCirclePosition = vec2(1,1);
    } else if (gl_VertexIndex == 7){
        interpolatedCirclePosition = vec2(-1,1);
    }
}