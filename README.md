# A simple Pong game made with vulkan

I followed [vulkan-tutorial.com](www.vulkan-tutorial.com), and modified the simple triangle to a pong game!

Follow the instruction [here](https://vulkan-tutorial.com/Development_environment) to get the build running.

Make sure you link the GLFW and vulkan SDK libraries (set the -lglfw and -lvulkan flags on your C++ compiler) when compiling. Make sure that the VK_ICD_FILENAMES, VK_LAYER_PATH, and LD_LIBRARY_PATH environment variables are set (LD_LIBRARY_PATH should contain the vulkan dynamic library) at run-time. Also don't forget to compile the shaders in the shaders directory with `cd shaders` then `glslc shader.vert -o vert.spv && glslc shader.frag -o frag.spv` (the glslc program is also included as part of the vulkan SDK).



