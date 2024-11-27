---
title: עבודה עם Word מסמכים ב Qt
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם Word מסמכים ב Qt
linktitle: עבודה עם Word מסמכים ב Qt
type: docs
description: "Aspose.Words עבור C++ ניתן לשלב בתוך Qt כדי ליצור ולטפל Word מסמכים ב Qt יישומים."
keywords: "create a document Qt Creator, load a document Qt Creator, use Aspose C++ with Qt creator, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 120
url: /he/cpp/work-with-word-documents-in-qt/
timestamp: 2024-07-11-16-13-28
---

Qt היא מסגרת פיתוח יישומים חוצה פלטפורמות מבוססת C++ המשמשת באופן נרחב לפיתוח מגוון יישומי מערכת שולחניים, ניידים ומשובצים. Aspose.Words עבור C++ ניתן לשלב בתוך Qt על מנת ליצור ולטפל Word מסמכים ביישומים Qt שלך.
תוכל למצוא דוגמה שלמה Qt בכתובת [GitHub](https://github.com/btolfa/Aspose.Words-for-C/tree/master/Showcases/DocumentExplorer)

## שימוש Aspose.Words עבור C++ בתוך Qt יוצר

לשימוש Aspose.Words עבור C++ ביישום Qt שלך הורד את הגרסה האחרונה של API מה - [הורדות](https://releases.aspose.com/words/cpp/) סעיף. לאחר הורדת API, אתה יכול להשתמש לשלב את הספרייה C++ בתוך Qt יוצר או שאתה יכול להשתמש עם Visual Studio.

על מנת לשלב ולהשתמש Aspose.Words עבור C++ ספרייה בתוך Qt יישום קונסולה שפותח ב Qt יוצר, אנא בצע את השלבים המפורטים להלן:

- פתח Qt יוצר וצור *Qt Console Application*חדש

- בחר באפשרות `QMake` מהתפריט הנפתח *Build System*

- בחר את הערכה המתאימה וסיים את האשף.
- העתק *Aspose.Words.Cpp* ו *CodePorting.Native.Cs2Cpp* תיקיות מהחבילה שחולצה של Aspose.Words עבור C++ לשורש הפרויקט

- על מנת להוסיף נתיבים לליב ולכלול תיקיות, לחץ באמצעות לחצן העכבר הימני על הפרויקט בחלונית LHS ובחר *Add Library*

- בחר באפשרות הספרייה החיצונית ועיין בנתיבים כדי לכלול ותיקיות ליב אחת אחת

- לאחר שתסיים, קובץ הפרוייקט שלך יכיל את הערכים הבאים

- בנה את היישום וסיימת עם האינטגרציה

- בחר באפשרות הספרייה החיצונית ועיין בנתיבים כדי לכלול ותיקיות ליב אחת אחת

- לאחר שתסיים, קובץ הפרוייקט שלך יכיל את הערכים הבאים

- בנה את היישום וסיימת עם האינטגרציה

## שימוש Aspose.Words עבור C++ ב Qt יישומים בתוך Visual Studio

לפיתוח יישום Qt באמצעות Visual Studio, עליך להתקין [Qt Visual Studio Tools](https://marketplace.visualstudio.com/items?itemName=TheQtCompany.QtVisualStudioTools-19123). לאחר ההתקנה, הורד את הגרסה האחרונה של API מה - [הורדות](https://releases.aspose.com/pdf/cpp/) סעיף ובצע את השלבים המפורטים להלן:

- הורד והתקן [CMake](https://github.com/Kitware/CMake/releases/download/v3.17.1/cmake-3.17.1-win64-x64.msi).
- הורד ופרוק [Aspose.Words עבור C++](https://releases.aspose.com/words/cpp/).
- צור תיקיה חדשה עבור קבצי הפרויקט שלך והעתק / הדבק *Aspose.Words.Cpp* ו *CodePorting.Native.Cs2Cpp* תיקיות מחבילה שלא ארוזה.
- צור קובץ חדש בשם *CMakeLists.txt* באותה תיקיה.
- העתק והדבק את התוכן הבא בתוך הקובץ *CMakeLists.txt*.

{{< highlight cpp >}}
cmake_minimum_required(VERSION 3.1.0 FATAL_ERROR)
project(Qt_AsposeWords_CMake)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)
find_package(Qt5 COMPONENTS Widgets REQUIRED)
find_package(CodePorting.Native.Cs2Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
find_package(Aspose.Words.Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
add_executable(Qt_AsposeWords_CMake
    main.cpp
)
target_link_libraries(Qt_AsposeWords_CMake PRIVATE Qt5::Widgets Aspose::Words) 
set_directory_properties(PROPERTIES VS_STARTUP_PROJECT Qt_AsposeWords_CMake)
file(TO_NATIVE_PATH "${Aspose.Words.Cpp_DIR}/lib/${CMAKE_VS_PLATFORM_NAME}" Aspose.Words.Cpp_DLL_PATH)
file(TO_NATIVE_PATH "${CodePorting.Native.Cs2Cpp_DIR}/lib" CodePorting.Native.Cs2Cpp_DLL_PATH)
file(TO_NATIVE_PATH "${Qt5_DIR}/../../../bin" Qt5_DLL_PATH)
set_target_properties(Qt_AsposeWords_CMake PROPERTIES VS_DEBUGGER_ENVIRONMENT "PATH=${Aspose.Words.Cpp_DLL_PATH}\\$<CONFIG>;${CodePorting.Native.Cs2Cpp_DLL_PATH};${Qt5_DLL_PATH};$(Path)")
{{< /highlight >}}

- פתח את *Command Prompt* ו *cd* לתיקיית הפרויקט.
- הפעל את הפקודה הבאה על ידי החלפה *<path-to-qt5>* עם הנתיב לקובץ *Qt5Config.cmake*.

{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S . -B build -D"Qt5_DIR=<path-to-qt5>"
{{< /highlight >}}

- לאחר שתשלים את השלבים שהוזכרו לעיל, ייווצר פתרון Visual Studio בתיקיה. כעת אתה מוכן לשימוש Aspose.Words עבור C++ תכונות בתוך היישום Qt.


