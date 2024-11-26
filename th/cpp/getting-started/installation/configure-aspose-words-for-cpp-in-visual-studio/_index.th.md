---
title: ปรับแต่งผลิตภัณฑ์ในVisual Studio
second_title: Aspose.WordsสำหรับC++
articleTitle: กำหนดค่า Aspose.WordsสำหรับC++ ในVisual Studio
linktitle: กำหนดค่า Aspose.WordsสำหรับC++ ในVisual Studio
description: "กำหนดค่าด้วยตนเอง Aspose.WordsสำหรับC++ ในVisual Studio."
type: docs
weight: 90
url: /th/cpp/configure-aspose-words-for-cpp-in-visual-studio/
timestamp: 2024-09-24-14-35-44
---

Aspose.WordsสำหรับC++ APIทำงานร่วมกับVisual Studio 2022หรือสูงกว่า ในการทำงานกับVisual Studioคุณอาจจำเป็นต้องติดตั้งVisual C++ Redistributableที่มีอยู่บน [Microsoftเว็บไซต์อย่างเป็นทางการ](https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170).

## กำหนดค่าด้วยMSBuildไฟล์เป้าหมาย

ทำตามขั้นตอนเหล่านี้เพื่อกำหนดค่าโครงการของคุณด้วย [MSBuild .ไฟล์เป้าหมาย](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-dot-targets-files):

**เพิ่มแท็กนำเข้าด้วย Aspose.WordsสำหรับC++ ไฟล์เป้าหมายลงในไฟล์ของคุณ**
1. เปิดแฟ้มโปรเจค`*.vcxproj`ในโปรแกรมแก้ไขข้อความ
2. ค้นหา`<ImportGroup Label="ExtensionTargets"></ImportGroup>`ที่ส่วนท้ายของแฟ้ม
3. เพิ่มแท็กต่อไปนี้`Import`ภายใน`ImportGroup`:
    {{< highlight xml >}}
    <ImportGroup Label="ExtensionTargets">
        <Import Project="<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets" Condition="Exists('<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets')" />
        <Import Project="<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets" Condition="Exists('<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets')" />
    </ImportGroup>
    </Project>
    {{< /highlight >}}

## กำหนดค่าด้วยตนเอง

ทำตามขั้นตอนเหล่านี้เพื่อกำหนดค่าด้วยตนเอง Aspose.WordsสำหรับC++ ในVisual Studio:

**เพิ่มเพิ่มเติมรวมถึงไดเรกทอรี:**

1. เปิดโครงการอสังหาริมทรัพย์
2. ไปที่ค/C++General ทั่วไป
3. เพิ่มต่อไปนี้เพิ่มเติมรวมถึงไดเรกทอรี:
`Aspose.Words.Cpp\include`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\include`

**เพิ่มการอ้างอิงเพิ่มเติม:**

1. เปิดโครงการอสังหาริมทรัพย์
2. เลือกการกำหนดค่า→การกำหนดค่าทั้งหมดและแพลตฟอร์ม→ทุกแพลตฟอร์ม
2. ไปที่การป้อนข้อมูลซีดีลิงก์
* สำหรับการกำหนดค่าการปล่อย:
`Aspose.Words.Cpp\lib\x64\Release\Aspose.Words.Cpp_vc14x64.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.lib`
* สำหรับการกำหนดค่าการดีบัก:
`Aspose.Words.Cpp\lib\x64\Debug\Aspose.Words.Cpp_vc14x64d.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.lib`

**เพิ่มคำสั่ง:**

1. เปิดโครงการอสังหาริมทรัพย์
2. ไปที่สร้างเหตุการณ์→โพสต์สร้างเหตุการณ์
3. เพิ่มคำสั่งต่อไปนี้:
* สำหรับการกำหนดค่าการปล่อย:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.dll" "$(OutDir)"
    {{< /highlight >}}
* สำหรับการกำหนดค่าการดีบัก:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64d.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.dll" "$(OutDir)"
    {{< /highlight >}}
