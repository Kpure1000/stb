project "stb"
	kind "StaticLib"
	language "C++"
	staticruntime "On"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"stb_image.h",
		"stb_image_write.h",
		"stb_vorbis.c",
	}

	defines
	{
		"STB_IMAGE_IMPLEMENTATION",
		"STB_IMAGE_WRITE_IMPLEMENTATION",
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		buildoptions "/MTd"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		buildoptions "/MT"
		optimize "on"
