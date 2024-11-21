---
title: 在Visual Studio中配置产品
second_title: Aspose.Words为C++
articleTitle: 配置 Aspose.Words为C++ 在Visual Studio
linktitle: 配置 Aspose.Words为C++ 在Visual Studio
description: "手动配置 Aspose.Words为C++ 在Visual Studio。"
type: docs
weight: 90
url: /zh/cpp/configure-aspose-words-for-cpp-in-visual-studio/
timestamp: 2024-09-24-14-35-44
---

Aspose.Words 对应 C++ API 适用于 Visual Studio 2022 或更高版本。要使用 Visual Studio，您可能需要安装 Visual C++ Redistributable[ Microsoft 官方网站](https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170)。

## 使用MSBuild配置。目标文件

按照以下步骤配置项目 [MSBuild .目标文件](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-dot-targets-files):

**添加导入标签 Aspose.Words为C++ 目标文件到您的vcxproj文件**
1. 在文本编辑器中打开项目`*.vcxproj`文件
2. 在文件末尾找到`<ImportGroup Label="ExtensionTargets"></ImportGroup>`
3. 在`ImportGroup`内添加以下`Import`标记:
    {{< highlight xml >}}
    <ImportGroup Label="ExtensionTargets">
        <Import Project="<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets" Condition="Exists('<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets')" />
        <Import Project="<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets" Condition="Exists('<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets')" />
    </ImportGroup>
    </Project>
    {{< /highlight >}}

## 手动配置

按照以下步骤手动配置 Aspose.Words为C++ 在Visual Studio:

**添加其他包含目录:**

1. 开放项目属性
2. 转到C/C++→一般
3. 添加以下附加Include目录:
`Aspose.Words.Cpp\include`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\include`

**添加其他依赖项:**

1. 开放项目属性
2. 选择配置→所有配置和平台→所有平台
2. 转到链接器→输入
* 对于发布配置:
`Aspose.Words.Cpp\lib\x64\Release\Aspose.Words.Cpp_vc14x64.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.lib`
* 对于调试配置:
`Aspose.Words.Cpp\lib\x64\Debug\Aspose.Words.Cpp_vc14x64d.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.lib`

**添加命令:**

1. 开放项目属性
2. 转到构建事件→构建后事件
3. 添加以下命令:
* 对于发布配置:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.dll" "$(OutDir)"
    {{< /highlight >}}
* 对于调试配置:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64d.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.dll" "$(OutDir)"
    {{< /highlight >}}
