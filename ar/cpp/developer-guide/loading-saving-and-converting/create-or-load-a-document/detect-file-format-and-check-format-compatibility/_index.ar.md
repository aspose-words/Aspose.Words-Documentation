---
title: كشف تنسيق الملف والتحقق من توافق التنسيق
second_title: Aspose.Words ل C++
articleTitle: كشف تنسيق الملف والتحقق من توافق التنسيق
linktitle: كشف تنسيق الملف والتحقق من توافق التنسيق
description: "حدد تنسيق الملف في C++ إذا لم تكن متأكدا من المحتوى الفعلي للملف، أو للتحقق من توافق التنسيق."
type: docs
weight: 20
url: /ar/cpp/detect-file-format-and-check-format-compatibility/
---

في بعض الأحيان يكون من الضروري تحديد تنسيق المستند قبل الفتح لأن امتداد الملف لا يضمن أن محتويات الملف مناسبة. على سبيل المثال، فمن المعروف أن تقارير كريستال في كثير من الأحيان مخرجات الوثائق في RTF شكل, ولكن يعطيها .ملحق الوثيقة.

Aspose.Words يوفر القدرة على الحصول على معلومات حول نوع الملف لتجنب استثناء إذا لم تكن متأكدا من المحتوى الفعلي للملف.

## كشف تنسيق الملف دون استثناء

عندما تتعامل مع مستندات متعددة بتنسيقات ملفات مختلفة، فقد تحتاج إلى فصل تلك الملفات التي يمكن معالجتها بواسطة Aspose.Words عن تلك التي لا يمكنها ذلك. قد ترغب أيضا في معرفة سبب عدم إمكانية معالجة بعض المستندات.

إذا حاولت تحميل ملف في كائن [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) و Aspose.Words لا يمكن التعرف على تنسيق الملف أو التنسيق غير مدعوم، Aspose.Words سوف يلقي استثناء. يمكنك التقاط هذه الاستثناءات وتحليلها، ولكن Aspose.Words يوفر أيضا طريقة [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) التي تسمح لنا بتحديد تنسيق الملف بسرعة دون تحميل مستند مع استثناءات محتملة. تقوم هذه الطريقة بإرجاع كائن [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/) يحتوي على المعلومات المكتشفة حول نوع الملف.

{{% alert color="primary" %}}

DetectFileFormat يتحقق فقط من تنسيق الملف ولكنه لا يتحقق من صحة تنسيق الملف. ليس هناك ما يضمن أنه سيتم فتح الملف بنجاح، حتى إذا كان **DetectFileFormat** يعود إلى أنه أحد التنسيقات المدعومة. هذا بسبب **DetectFileFormat** طريقة يقرأ البيانات تنسيق ملف جزئي فقط، كافية للتحقق من تنسيق الملف، ولكن ليس بما فيه الكفاية للتحقق من صحة كاملة.

{{% /alert %}}

## تحقق من توافق تنسيق الملفات

يمكننا التحقق من توافق التنسيق لجميع الملفات في المجلد المحدد وفرزها حسب التنسيق في مجلدات فرعية مقابلة.

وبما أننا نتعامل مع محتويات في مجلد، فإن أول شيء يتعين علينا القيام به هو الحصول على مجموعة من جميع الملفات في هذا المجلد باستخدام طريقة **GetFiles** من فئة `Directory` (من `System.IO` مساحة الاسم).

يوضح مثال التعليمات البرمجية التالية كيفية الحصول على قائمة بجميع الملفات الموجودة في المجلد:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-GetListOfFilesInFolder.cpp" >}}

عندما يتم جمع جميع الملفات، يتم تنفيذ بقية العمل بواسطة طريقة **DetectFileFormat**، والتي تتحقق من تنسيق الملف.

يوضح مثال التعليمات البرمجية التالية كيفية التكرار عبر قائمة الملفات المجمعة، والتحقق من تنسيق كل ملف، ونقل كل ملف إلى المجلد المناسب:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-CheckFormatCompatibility.cpp" >}}

يتم نقل الملفات إلى المجلدات الفرعية المناسبة باستخدام طريقة `Move` من فئة `File`، من نفس مساحة الاسم `System.IO`.

يتم استخدام الملفات التالية في المثال أعلاه. اسم الملف على اليسار ووصفه على اليمين:

| مجموعة من الملفات | وثيقة الإدخال | النوع |
| :- | :- | :- |
| تنسيقات الملفات المدعومة | Test File (DOC).doc | Microsoft Word 95/6.0 أو Microsoft Word 97-2003 وثيقة. |
|  | Test File (DOT).dot | Microsoft Word 95/6.0 أو Microsoft Word 97-2003 قالب. |
|  | Test File (DOCX).docx | مكتب مفتوح XML وردبروسيسينغمل وثيقة دون وحدات الماكرو. |
|  | Test File (DOCM).docm | مكتب مفتوح XML وردبروسيسينغمل وثيقة مع وحدات الماكرو. |
|  | Test File (DOTX).dotx | فتح المكتب XML قالب معالجة الكلمات. |
|  | Test File (DOTM).dotm | فتح المكتب XML قالب وردبروسيسينغمل مع وحدات الماكرو. |
|  | Test File (XML).xml | فلاتوبك OOXML وثيقة. |
|  | Test File (RTF).rtf | وثيقة تنسيق النص المنسق. |
|  | Test File (WordML).xml | Microsoft Word 2003 وردبروسيسينغمل وثيقة. |
|  | Test File (HTML).html | HTML وثيقة. |
|  | Test File (MHTML).mhtml | MHTML (أرشيف الويب) وثيقة. |
|  | Test File (ODT).odt | OpenDocument نص (OpenOffice كاتب). |
|  | Test File (OTT).ott | OpenDocument قالب المستند. |
|  | ملف الاختبار (DocPreWord60).دوك | Microsoft Word 2.0 وثيقة. |
| المستندات المشفرة | Test File (Enc).doc | مشفرة Microsoft Word 95/6.0 أو Microsoft Word 97 – 2003 وثيقة. |
|  | Test File (Enc).docx | فتح مكتب مشفر XML وردبروسيسينغمل وثيقة. |
| تنسيقات الملفات غير المدعومة | Test File (JPG).jpg | JPEG ملف الصورة. |

