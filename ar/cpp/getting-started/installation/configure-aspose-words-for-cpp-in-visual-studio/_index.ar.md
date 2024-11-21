---
title: تكوين المنتج في Visual Studio
second_title: Aspose.Words ل C++
articleTitle: تكوين Aspose.Words ل C++ في Visual Studio
linktitle: تكوين Aspose.Words ل C++ في Visual Studio
description: "تكوين يدويا Aspose.Words ل C++ في Visual Studio."
type: docs
weight: 90
url: /ar/cpp/configure-aspose-words-for-cpp-in-visual-studio/
timestamp: 2024-09-24-14-35-44
---

Aspose.Words ل C++ API يعمل مع Visual Studio 2022 أو في وقت لاحق. للعمل مع Visual Studio، قد تحتاج إلى تثبيت Visual C++ Redistributable متوفر على [Microsoft الموقع الرسمي](https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170).

## تكوين مع MSBuild .ملفات الأهداف

اتبع هذه الخطوات لتكوين مشروعك باستخدام [MSBuild .ملفات الأهداف](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-dot-targets-files):

**إضافة علامات الاستيراد مع Aspose.Words ل C++ استهداف الملفات في ملف فكسبروج الخاص بك**
1. افتح ملف مشروعك `*.vcxproj` في محرر النصوص
2. ابحث عن `<ImportGroup Label="ExtensionTargets"></ImportGroup>` في نهاية الملف
3. أضف العلامات `Import` التالية داخل `ImportGroup`:
    {{< highlight xml >}}
    <ImportGroup Label="ExtensionTargets">
        <Import Project="<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets" Condition="Exists('<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets')" />
        <Import Project="<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets" Condition="Exists('<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets')" />
    </ImportGroup>
    </Project>
    {{< /highlight >}}

## تكوين يدويا

اتبع هذه الخطوات لتكوين يدويا Aspose.Words ل C++ في Visual Studio:

**إضافة إضافية تشمل الدلائل:**

1. خاصية المشروع المفتوح
2. انتقل إلى ج / C++ General عام
3. أضف الدلائل الإضافية التالية:
`Aspose.Words.Cpp\include`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\include`

**أضف التبعيات الإضافية:**

1. خاصية المشروع المفتوح
2. حدد التكوين All جميع التكوينات والنظام الأساسي All جميع المنصات
2. انتقل إلى رابط-إدخال
* لتكوين الإصدار:
`Aspose.Words.Cpp\lib\x64\Release\Aspose.Words.Cpp_vc14x64.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.lib`
* لتكوين التصحيح:
`Aspose.Words.Cpp\lib\x64\Debug\Aspose.Words.Cpp_vc14x64d.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.lib`

**أضف الأوامر:**

1. خاصية المشروع المفتوح
2. انتقل إلى إنشاء الأحداث-حدث ما بعد الإنشاء
3. أضف الأوامر التالية:
* لتكوين الإصدار:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.dll" "$(OutDir)"
    {{< /highlight >}}
* لتكوين التصحيح:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64d.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.dll" "$(OutDir)"
    {{< /highlight >}}
