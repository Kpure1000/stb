project "stb"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "On"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"%{prj.name}/src/**.h",
		"%{prj.name}/src/**.c",
	}

	defines 
	{
		"_CRT_SECURE_NO_WARNINGS",
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
