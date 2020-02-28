#version 450
#extension GL_ARB_separate_shader_objects : enable

layout(binding = 0) uniform UniformBufferObject {
    mat4 model;
    mat4 view;
    mat4 proj;
    vec2 unused;
} ubo;


layout(location = 0) in vec3 fragColor;
layout(location = 1) in vec2 interpolatedCirclePosition;

layout(location = 0) out vec4 outColor;

void main() {
    outColor = vec4(fragColor,1.0);


    
    if (ubo.unused == vec2(0.6,0.6)) { // if ball
        outColor = vec4(0.0,0.0,0.0, 1.0);
        if (length(interpolatedCirclePosition) <= 1.0){
            outColor = vec4(1.0,0.0,1.0, 1.0);
        }

    }
    
}