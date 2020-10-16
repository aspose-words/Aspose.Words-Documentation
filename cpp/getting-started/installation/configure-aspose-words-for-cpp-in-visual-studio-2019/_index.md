---
title: Configure Aspose.Words for C++ in Visual Studio 2019
type: docs
weight: 90
url: /cpp/configure-aspose-words-for-cpp-in-visual-studio-2019/
---

Aspose.Words for C++ API works with Visual Studio 2017 or higher versions. For working with Visual Studio 2017, you may need to install Visual C++ Redistributable available on [Microsoft official website](https://support.microsoft.com/en-us/help/2977003/the-latest-supported-visual-c-downloads).

For working with Visual Studio 2019, please follow the steps given below to manually configure Aspose.Words for C++ in Visual Studio 2019.

## Step - 1

1. Open Project Property
2. Go to C/C++ -> General
3. Add the following Additional Include Directories
- Aspose.Words.Cpp\include
- CodePorting.Native.Cs2Cpp_vc14_20.7\include

## Step - 2

1. Open Project Property
2. Go to Linker -> Input
3. Add the following Additional Dependencies

**For Release configuration**
- Aspose.Words.Cpp\lib\x64\Release\Aspose.Words.Cpp_vc14x64.lib
- CodePorting.Native.Cs2Cpp_vc14_20.7\lib\aspose_cpp_vc14x64.lib

**For Debug configuration**
- Aspose.Words.Cpp\lib\x64\Debug\Aspose.Words.Cpp_vc14x64d.lib
- CodePorting.Native.Cs2Cpp_vc14_20.7\lib\aspose_cpp_vc14x64d.lib

## Step - 3

1. Open Project Property
2. Go to Build Events -> Post-Build Event
3. Add the following Commands:

**For Release configuration:**
{{< highlight bash >}}
xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64.dll" "$(OutDir)"
xcopy /y /d  "$(ProjectDir)CodePorting.Native.Cs2Cpp_vc14_20.7\lib\aspose_cpp_vc14x64.dll" "$(OutDir)"
{{< /highlight >}}

**For Debug configuration:**
{{< highlight bash >}}
xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64d.dll" "$(OutDir)"
xcopy /y /d  "$(ProjectDir)CodePorting.Native.Cs2Cpp_vc14_20.7\lib\aspose_cpp_vc14x64d.dll" "$(OutDir)"
{{< /highlight >}}
