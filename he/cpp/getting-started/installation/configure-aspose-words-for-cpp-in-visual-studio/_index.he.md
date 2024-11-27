---
title: הגדר את המוצר ב Visual Studio
second_title: Aspose.Words עבור C++
articleTitle: הגדר Aspose.Words עבור C++ ב Visual Studio
linktitle: הגדר Aspose.Words עבור C++ ב Visual Studio
description: "הגדר ידנית Aspose.Words עבור C++ ב Visual Studio."
type: docs
weight: 90
url: /he/cpp/configure-aspose-words-for-cpp-in-visual-studio/
timestamp: 2024-09-24-14-35-44
---

Aspose.Words עבור C++ API עובד עם Visual Studio 2022 או מאוחר יותר. כדי לעבוד עם Visual Studio, ייתכן שיהיה עליך להתקין Visual C++ Redistributable זמין ב [Microsoft אתר רשמי](https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170).

## הגדר עם MSBuild .מטרות קבצים

בצע את השלבים הבאים כדי להגדיר את הפרויקט שלך באמצעות [MSBuild .מטרות קבצים](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-dot-targets-files):

**הוסף תגי ייבוא עם Aspose.Words עבור C++ יעדי קבצים לקובץ שלך**
1. פתח את הפרוייקט `*.vcxproj` קובץ בעורך הטקסט
2. מצא `<ImportGroup Label="ExtensionTargets"></ImportGroup>` בסוף הקובץ
3. הוסף את התגים הבאים `Import` בתוך `ImportGroup`:
    {{< highlight xml >}}
    <ImportGroup Label="ExtensionTargets">
        <Import Project="<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets" Condition="Exists('<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets')" />
        <Import Project="<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets" Condition="Exists('<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets')" />
    </ImportGroup>
    </Project>
    {{< /highlight >}}

## הגדר באופן ידני

בצע את השלבים הבאים כדי להגדיר באופן ידני Aspose.Words עבור C++ ב Visual Studio:

**הוסף את הספריות כוללות נוספות:**

1. נכס פרויקט פתוח
2. עבור אל ג / C++
3. הוסף את הספריות הנוספות הבאות:
* `Aspose.Words.Cpp\include`
* `CodePorting.Translator.Cs2Cpp.Framework_<version>\include`

**הוסף את התלות הנוספת:**

1. נכס פרויקט פתוח
2. בחר תצורה לכל התצורות ופלטפורמה לכל הפלטפורמות
2. עבור אל מקשר קלט
* עבור תצורת שחרור:
  * `Aspose.Words.Cpp\lib\x64\Release\Aspose.Words.Cpp_vc14x64.lib`
  * `CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.lib`
* עבור באגים תצורה:
  * `Aspose.Words.Cpp\lib\x64\Debug\Aspose.Words.Cpp_vc14x64d.lib`
  * `CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.lib`

**הוסף את הפקודות:**

1. נכס פרויקט פתוח
2. עבור אל בניית אירועים לאחר אירוע
3. הוסף את הפקודות הבאות:
* עבור תצורת שחרור:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.dll" "$(OutDir)"
    {{< /highlight >}}
* עבור באגים תצורה:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64d.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.dll" "$(OutDir)"
    {{< /highlight >}}
