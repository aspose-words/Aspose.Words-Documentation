---
title: كيفية تشغيل الأمثلة
second_title: Aspose.Words ل C++
articleTitle: كيفية تشغيل الأمثلة
linktitle: كيفية تشغيل الأمثلة
description: "تحميل Aspose.Words ل C++ أمثلة من مستودعنا GitHub وتعلم كيفية تشغيلها لتصبح أكثر دراية بالإمكانيات والميزات Aspose.Words."
type: docs
weight: 110
url: /ar/cpp/how-to-run-the-examples/
timestamp: 2024-07-11-16-13-28
---

لتصبح أكثر دراية بالإمكانيات والميزات Aspose.Words، نقدم أمثلة يمكن تنزيلها من مستودعنا GitHub وتشغيلها وتعلمها بالتفصيل.

في هذه المقالة، يمكنك العثور على متطلبات النظام، بالإضافة إلى معلومات حول كيفية تشغيل الأمثلة.

## Windows مع Nuget حزمة

### متطلبات البرامج والمتطلبات الأساسية

يرجى التأكد من تلبية المتطلبات التالية قبل تنزيل الأمثلة وتشغيلها:

1. Visual Studio رمز، Visual Studio 2022.
2. تثبيت NuGet مدير الحزم وأحدث NuGet API نسخة ل Visual Studio. (اختياري)
3. حدد **nuget.org** الخيار في مربع الحوار" أدوات-خيارات " ضمن "NuGet مدير الحزم-مصادر الحزمة".
4. اتصال إنترنت نشط لاستخدام ميزة استعادة الحزمة التلقائية `NuGet` في مشروع الأمثلة. إذا لم يكن لديك اتصال إنترنت نشط على الجهاز حيث سيتم تنفيذ الأمثلة اتبع الإرشادات من Windows مع حزمة Cmake.

### تحميل وتشغيل الأمثلة

الكل Aspose.Words ل C++ يتم استضافة الأمثلة على [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). يمكنك إما استنساخ مستودع باستخدام المفضلة لديك GitHub العميل أو تحميل [ملف ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

بعد الحصول على نسخة من المستودع، قد تجد ذلك:

- توجد جميع الأمثلة في المجلد **Examples**.
- هناك Visual Studio ملفات حل ل C++ تم إنشاؤها في Visual Studio 2022.

لتشغيل الأمثلة، افتح ملف الحل في Visual Studio وبناء المشروع:

- بالنسبة لأمثلة **API Reference**، يعتمد الهيكل على أسماء الفئات، وبالنسبة لأمثلة **Docs**، فإنه يعتمد في الغالب على [المطور جيلد](/words/cpp/developer-guide/) قسم التوثيق.
- في الجولة الأولى، سيتم تنزيل التبعيات تلقائيا عبر NuGet.
- المجلد **Data** في المجلد الجذر من **Examples** يحتوي على ملفات الإدخال التي تم استخدامها في الأمثلة.
- يمكن تشغيل جميع الأمثلة كاختبارات وحدة.

## Windows مع CMake حزمة

### متطلبات البرامج والمتطلبات الأساسية

يرجى التأكد من تلبية المتطلبات التالية قبل تنزيل الأمثلة وتشغيلها:

1. Visual Studio رمز، Visual Studio 2022.
2. [Cmake](https://cmake.org/download/) >= 3.16.0
3. تحميل أحدث CMake حزمة من https://downloads.aspose.com/words/cpp

### تحميل وتشغيل الأمثلة

الكل Aspose.Words ل C++ يتم استضافة الأمثلة على [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). يمكنك إما استنساخ مستودع باستخدام المفضلة لديك GitHub العميل أو تحميل [ملف ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

ضع المجلدات `Aspose.Words.Cpp` و `CodePorting.Native.Cs2Cpp_*` في جذر نسخة من المستودع.

توجد جميع الأمثلة في المجلد **Examples**.

لتشغيل الأمثلة تشغيل الأوامر التالية من جذر نسخة من المستودع:
{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S Examples\DocsExamples\ -B Examples\DocsExamples\build
{{< /highlight >}}

سيتم إنشاء حل Visual Studio في `Examples\DocsExamples\build`

لتشغيل الأمثلة، افتح ملف الحل في Visual Studio وبناء المشروع:

- بالنسبة لأمثلة **API Reference**، يعتمد الهيكل على أسماء الفئات، وبالنسبة لأمثلة **Docs**، فإنه يعتمد في الغالب على [المطور جيلد](/words/cpp/developer-guide/) قسم التوثيق.
- المجلد **Data** في المجلد الجذر من **Examples** يحتوي على ملفات الإدخال التي تم استخدامها في الأمثلة.
- يمكن تشغيل جميع الأمثلة كاختبارات وحدة.

## Linux

### متطلبات البرامج والمتطلبات الأساسية

يرجى التأكد من تلبية المتطلبات التالية قبل تنزيل الأمثلة وتشغيلها:

1. CLang >= 3.9.1
2. [Ninja](https://ninja-build.org/)
3. [Cmake](https://cmake.org/download/) >= 3.16.0
4. تحميل أحدث CMake حزمة من https://downloads.aspose.com/words/cpp

### تحميل وتشغيل الأمثلة

الكل Aspose.Words ل C++ يتم استضافة الأمثلة على [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). يمكنك إما استنساخ مستودع باستخدام المفضلة لديك GitHub العميل أو تحميل [ملف ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

ضع المجلدات `Aspose.Words.Cpp` و `CodePorting.Native.Cs2Cpp_*` في جذر نسخة من المستودع.

توجد جميع الأمثلة في المجلد **Examples**.

لتشغيل الأمثلة تشغيل الأوامر التالية من جذر نسخة من المستودع:
{{< highlight bash >}}
cmake -S Examples/DocsExamples -B Examples/DocsExamples/build -D CMAKE_BUILD_TYPE=Release
cmake --build Examples/DocsExamples/build

cmake -E chdir Examples/DocsExamples/build ctest --verbose
{{< /highlight >}}

- بالنسبة لأمثلة **API Reference**، يعتمد الهيكل على أسماء الفئات، وبالنسبة لأمثلة **Docs**، فإنه يعتمد في الغالب على [المطور جيلد](/words/cpp/developer-guide/) قسم التوثيق.
- المجلد **Data** في المجلد الجذر من **Examples** يحتوي على ملفات الإدخال التي تم استخدامها في الأمثلة.
- يمكن تشغيل جميع الأمثلة كاختبارات وحدة.

{{% alert color="primary" %}}

لا تتردد في التواصل باستخدام لدينا [Aspose.Words منتدى عائلة المنتج](https://forum.aspose.com/c/words/8) إذا كان لديك أي مشاكل في إعداد أو تشغيل الأمثلة.

{{% /alert %}}

## المساهمة في تحسين الأمثلة

إذا كنت ترغب في إضافة مثال أو تحسينه، فنحن نشجعك على المساهمة في المشروع. جميع الأمثلة ومشاريع العرض في هذا المستودع مفتوحة المصدر ويمكن استخدامها بحرية في تطبيقاتك.

يمكنك مفترق مستودع، تحرير شفرة المصدر، وإنشاء طلب سحب للمساهمة. سنقوم بمراجعة التغييرات وإدراجها في المستودع إذا وجدت مفيدة.

## أنظر أيضا

- [تفاصيل حول كيفية تثبيت NuGet مدير الحزم](https://docs.microsoft.com/nuget/guides/install-nuget)
