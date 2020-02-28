# A simple Pong game made with vulkan

I followed [vulkan-tutorial.com](www.vulkan-tutorial.com), and modified the simple triangle to a pong game!

Make sure you link the GLFW and vulkan SDK libraries (set the -lglfw and -lvulkan flags on your C++ compiler) when compiling. Also don't forget to compile the shaders in the shaders directory with `cd shaders` then `glslc shader.vert -o vert.spv && glslc shader.frag -o frag.spv` (the glslc program is also included as part of the vulkan SDK).



