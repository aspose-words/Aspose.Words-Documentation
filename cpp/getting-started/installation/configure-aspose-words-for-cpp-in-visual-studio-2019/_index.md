---
title: Configure Aspose.Words for C++ in Visual Studio 2019
second_title: Aspose.Words for C++
articleTitle: Configure Aspose.Words for C++ in Visual Studio 2019
linktitle: Configure Aspose.Words for C++ in Visual Studio 2019
description: "Manually configure Aspose.Words for C++ in Visual Studio 2019."
type: docs
weight: 90
url: /cpp/configure-aspose-words-for-cpp-in-visual-studio-2019/
---

Aspose.Words for C++ API works with Visual Studio 2017 or later. To work with Visual Studio 2017 or 2019, you may need to install Visual C++ Redistributable available on [Microsoft official website](https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170).

You can use [MSBuild .targets files](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-dot-targets-files) or manually configure your project for Aspose.Words for C++.

Follow these steps to configure your project with [MSBuild .targets files](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-dot-targets-files):

**Add Import tags with Aspose.Words for C++ targets files into your vcxproj file**
1. Open your project `*.vcxproj` file in the text editor
2. Find `<ImportGroup Label="ExtensionTargets"></ImportGroup>` at the end of the file
3. Add the following `Import` tags inside `ImportGroup`, replace `<path-to>` with actual paths to Aspose.Words for C++:
	{{< highlight xml >}}
	<ImportGroup Label="ExtensionTargets">
	    <Import Project="<path-to>\CodePorting.Native.Cs2Cpp_api_22.3\CodePorting.Native.Cs2Cpp.API.targets" Condition="Exists('<path-to>\CodePorting.Native.Cs2Cpp_api_22.3\CodePorting.Native.Cs2Cpp.API.targets')" />
            <Import Project="<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets" Condition="Exists('<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets')" />
	</ImportGroup>
	</Project>
	{{< /highlight >}}

Follow these steps to manually configure Aspose.Words for C++ in Visual Studio 2019:

**Add the Additional Include Directories:**

1. Open Project Property
2. Go to C/C++ → General
3. Add the following Additional Include Directories:
* `Aspose.Words.Cpp\include`
* `CodePorting.Native.Cs2Cpp_api_22.3\include`

**Add the Additional Dependencies:**

1. Open Project Property
2. Select Configuration → All Configurations and Platform → All Platforms
2. Go to Linker → Input
* For Release configuration:
  * `Aspose.Words.Cpp\lib\x64\Release\Aspose.Words.Cpp_vc14x64.lib`
  * `CodePorting.Native.Cs2Cpp_api_22.3\lib\aspose_cpp_vc14x64.lib`
* For Debug configuration:
  * `Aspose.Words.Cpp\lib\x64\Debug\Aspose.Words.Cpp_vc14x64d.lib`
  * `CodePorting.Native.Cs2Cpp_api_22.3\lib\aspose_cpp_vc14x64d.lib`

**Add the Commands:**

1. Open Project Property
2. Go to Build Events → Post-Build Event
3. Add the following Commands:
* For Release configuration:
	{{< highlight bash >}}
	xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64.dll" "$(OutDir)"
	xcopy /y /d  "$(ProjectDir)CodePorting.Native.Cs2Cpp_api_22.3\lib\aspose_cpp_vc14x64.dll" "$(OutDir)"
	{{< /highlight >}}
* For Debug configuration:
	{{< highlight bash >}}
	xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64d.dll" "$(OutDir)"
	xcopy /y /d  "$(ProjectDir)CodePorting.Native.Cs2Cpp_api_22.3\lib\aspose_cpp_vc14x64d.dll" "$(OutDir)"
	{{< /highlight >}}