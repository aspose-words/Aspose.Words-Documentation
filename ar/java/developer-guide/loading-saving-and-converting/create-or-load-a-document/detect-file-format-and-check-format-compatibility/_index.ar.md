---
title: كشف تنسيق الملف
second_title: Aspose.Words ل Java
articleTitle: كشف تنسيق الملف والتحقق من توافق التنسيق
linktitle: كشف تنسيق الملف والتحقق من توافق التنسيق
description: "احصل على معلومات حول تنسيق المستند قبل فتحه لتجنب استثناء إذا لم تكن متأكدا من المحتوى الفعلي للملف الذي يستخدمه Java."
type: docs
weight: 20
url: /ar/java/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

في بعض الأحيان يكون من الضروري تحديد تنسيق المستند قبل الفتح لأن امتداد الملف لا يضمن أن محتويات الملف مناسبة. على سبيل المثال، فمن المعروف أن تقارير كريستال في كثير من الأحيان مخرجات الوثائق في RTF شكل, ولكن يعطيها .ملحق الوثيقة.

Aspose.Words يوفر القدرة على الحصول على معلومات حول نوع الملف لتجنب استثناء إذا لم تكن متأكدا من المحتوى الفعلي للملف.

## كشف تنسيق الملف دون استثناء

عندما تتعامل مع مستندات متعددة بتنسيقات ملفات مختلفة، فقد تحتاج إلى فصل تلك الملفات التي يمكن معالجتها بواسطة Aspose.Words عن تلك التي لا يمكنها ذلك. قد ترغب أيضا في معرفة سبب عدم إمكانية معالجة بعض المستندات.

إذا حاولت تحميل ملف في كائن [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) و Aspose.Words لا يمكن التعرف على تنسيق الملف أو التنسيق غير مدعوم، Aspose.Words سوف يلقي استثناء. يمكنك التقاط هذه الاستثناءات وتحليلها، ولكن Aspose.Words يوفر أيضا طريقة [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.lang.String) التي تسمح لنا بتحديد تنسيق الملف بسرعة دون تحميل مستند مع استثناءات محتملة. تقوم هذه الطريقة بإرجاع كائن [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) يحتوي على المعلومات المكتشفة حول نوع الملف.

{{% alert color="primary" %}}

DetectFileFormat يتحقق فقط من تنسيق الملف ولكنه لا يتحقق من صحة تنسيق الملف. ليس هناك ما يضمن أنه سيتم فتح الملف بنجاح، حتى إذا كان **DetectFileFormat** يعود إلى أنه أحد التنسيقات المدعومة. هذا بسبب **DetectFileFormat** طريقة يقرأ البيانات تنسيق ملف جزئي فقط، كافية للتحقق من تنسيق الملف، ولكن ليس بما فيه الكفاية للتحقق من صحة كاملة.

{{% /alert %}}

## تحقق من توافق تنسيق الملفات

يمكننا التحقق من توافق التنسيق لجميع الملفات في المجلد المحدد وفرزها حسب التنسيق في مجلدات فرعية مقابلة.

نظرا لأننا نتعامل مع محتويات في مجلد، فإن أول شيء يتعين علينا القيام به هو الحصول على مجموعة من جميع الملفات الموجودة في هذا المجلد باستخدام طريقة **GetFiles** لفئة `Directory` (من مساحة الاسم `System.IO`).

يوضح مثال التعليمات البرمجية التالية كيفية الحصول على قائمة بجميع الملفات الموجودة في المجلد:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-GetListOfFilesInFolder.java" >}}

عندما يتم جمع جميع الملفات، يتم تنفيذ بقية العمل بواسطة طريقة **DetectFileFormat**، والتي تتحقق من تنسيق الملف.

يوضح مثال التعليمات البرمجية التالية كيفية التكرار عبر قائمة الملفات المجمعة، والتحقق من تنسيق كل ملف، ونقل كل ملف إلى المجلد المناسب:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-CheckFormatCompatibility.java" >}}

يتم نقل الملفات إلى المجلدات الفرعية المناسبة باستخدام طريقة `Move` من فئة `File`، من نفس مساحة الاسم `System.IO`.

يتم استخدام الملفات التالية في المثال أعلاه. اسم الملف على اليسار ووصفه على اليمين:

| مجموعة من الملفات | وثيقة الإدخال | النوع |
| :- | :- | :- |
| تنسيقات الملفات المدعومة | Test File (Doc).doc | Microsoft Word 95/6.0 أو Microsoft Word 97-2003 وثيقة. |
|  | Test File (Dot).dot | Microsoft Word 95/6.0 أو Microsoft Word 97-2003 قالب. |
|  | Test File (Docx).docx | مكتب مفتوح XML WordprocessingML وثيقة بدون وحدات الماكرو. |
|  | Test File (Docm).docm | مكتب مفتوح XML WordprocessingML وثيقة مع وحدات الماكرو. |
|  | Test File (Dotx).dotx | مكتب مفتوح XML WordprocessingML قالب. |
|  | Test File (Dotm).dotm | مكتب مفتوح XML WordprocessingML قالب مع وحدات الماكرو. |
|  | Test File (XML).xml | FlatOPC OOXML وثيقة. |
|  | Test File (RTF).rtf | وثيقة تنسيق النص المنسق. |
|  | Test File (WordML).xml | Microsoft Word 2003 WordprocessingML وثيقة. |
|  | Test File (HTML).html | HTML وثيقة. |
|  | Test File (MHTML).mhtml | MHTML (أرشيف الويب) وثيقة. |
|  | Test File (Odt).odt | OpenDocument نص (OpenOffice كاتب). |
|  | Test File (Ott).ott | OpenDocument قالب المستند. |
|  | Test File (DocPreWord60).doc | Microsoft Word 2.0 وثيقة. |
| المستندات المشفرة | Test File (Enc).doc | مشفرة Microsoft Word 95/6.0 أو Microsoft Word 97 – 2003 وثيقة. |
|  | Test File (Enc).docx | مكتب مشفر مفتوح XML WordprocessingML وثيقة. |
| تنسيقات الملفات غير المدعومة | Test File (JPG).jpg | JPEG ملف الصورة. |

