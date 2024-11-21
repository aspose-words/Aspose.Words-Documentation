---
title: پیکربندی محصول در Visual Studio
second_title: Aspose.Words برای C++
articleTitle: پیکربندی Aspose.Words برای C++ در Visual Studio
linktitle: پیکربندی Aspose.Words برای C++ در Visual Studio
description: "پیکربندی دستی Aspose.Words برای C++ در Visual Studio."
type: docs
weight: 90
url: /fa/cpp/configure-aspose-words-for-cpp-in-visual-studio/
timestamp: 2024-09-24-14-35-44
---

Aspose.Words برای C++ API با Visual Studio 2022 یا بالاتر کار می کند. برای کار با Visual Studio، ممکن است لازم باشد Visual C++ Redistributable موجود در [Microsoft وب سایت رسمی](https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170).

## با MSBuild پیکربندی کنید .فایل های هدف

این مراحل را برای پیکربندی پروژه خود با [MSBuild .فایل های هدف](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-dot-targets-files):

**اضافه کردن برچسب های واردات با Aspose.Words برای C++ فایل ها را به فایل vcxproj شما هدف قرار می دهد**
1. فایل پروژه `*.vcxproj` خود را در ویرایشگر متن باز کنید
2. `<ImportGroup Label="ExtensionTargets"></ImportGroup>` را در انتهای فایل پیدا کنید
3. برچسب‌های `Import` زیر را در `ImportGroup` اضافه کنید:
    {{< highlight xml >}}
    <ImportGroup Label="ExtensionTargets">
        <Import Project="<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets" Condition="Exists('<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets')" />
        <Import Project="<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets" Condition="Exists('<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets')" />
    </ImportGroup>
    </Project>
    {{< /highlight >}}

## پیکربندی دستی

این مراحل را برای پیکربندی دستی دنبال کنید Aspose.Words برای C++ در Visual Studio:

**اضافه کردن دایرکتوری های اضافی شامل:**

1. املاک پروژه باز
2. به C/C++ → عمومی بروید
3. دایرکتوری های اضافی زیر را اضافه کنید:
`Aspose.Words.Cpp\include`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\include`

**وابستگی های اضافی را اضافه کنید:**

1. املاک پروژه باز
2. Configuration → All Configurations And Platform → All Platforms
2. به Linker → Input بروید
* برای پیکربندی انتشار:
`Aspose.Words.Cpp\lib\x64\Release\Aspose.Words.Cpp_vc14x64.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.lib`
* برای پیکربندی اشکال زدایی:
`Aspose.Words.Cpp\lib\x64\Debug\Aspose.Words.Cpp_vc14x64d.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.lib`

**دستورات را اضافه کنید:**

1. املاک پروژه باز
2. به Build Events → رویداد پس از ساخت بروید
3. دستورات زیر را اضافه کنید:
* برای پیکربندی انتشار:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.dll" "$(OutDir)"
    {{< /highlight >}}
* برای پیکربندی اشکال زدایی:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64d.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.dll" "$(OutDir)"
    {{< /highlight >}}
