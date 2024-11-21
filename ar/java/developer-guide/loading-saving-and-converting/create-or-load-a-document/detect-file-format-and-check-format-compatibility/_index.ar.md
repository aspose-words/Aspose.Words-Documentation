---
title: الشكل النهائي
second_title: Aspose.Words for Java
articleTitle: Detect File Format and check Format Comp
linktitle: Detect File Format and check Format Comp
description: "الحصول على معلومات عن شكل الوثيقة قبل فتحها لتجنب استثناء إذا لم تكن متأكداً ما هو المحتوى الفعلي للملف الذي يستخدمه Java."
type: docs
weight: 20
url: /ar/java/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

وفي بعض الأحيان، من الضروري تحديد شكل وثيقة قبل فتحها لأن تمديد الملف لا يضمن ملاءمة محتويات الملف. فعلى سبيل المثال، من المعروف أن تقارير كريستال كثيرا ما تُنتج وثائق في شكل فرقة العمل المعنية بالتنفيذ في مجال مكافحة الإرهاب، ولكنها تعطيها تمديدا للدوائر.

Aspose.Words يوفر القدرة على الحصول على معلومات عن نوع الملف من أجل تجنب الاستثناء إذا كنت غير متأكد من المحتوى الفعلي للملف.

## Detect File Format without an exceptionion

عندما تتعاملين مع وثائق متعددة في أشكال مختلفة من الملفات، قد تحتاجي إلى فصل تلك الملفات التي يمكن تجهيزها Aspose.Words من أولئك الذين لا يستطيعون قد ترغبون أيضاً في معرفة سبب عدم إمكانية تجهيز بعض الوثائق

إذا حاولت تحميل ملف في [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) الجسم Aspose.Words لا يمكن أن يعترف بشكل الملف أو أن الشكل غير مدعم، Aspose.Words سيضع استثناءً يمكنك الإمساك بتلك الاستثناءات وتحليلها، لكن Aspose.Words يوفر أيضا [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.lang.String) الطريقة التي تسمح لنا بتحديد شكل الملف بسرعة دون تحميل وثيقة مع استثناءات محتملة. هذه الطريقة تعود [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) الجسم الذي يحتوي على المعلومات المكتشفة عن نوع الملف

{{% alert color="primary" %}}

Detect File ولا تدقق الصيغة إلا في شكل الملف ولكنها لا تصادق على شكل الملف. ولا يوجد ضمان بأن يُفتح الملف بنجاح، حتى وإن كان **DetectFileFormat** يعود إلى أنه أحد الأشكال المدعومة. هذا بسبب **DetectFileFormat** ولا تُقرأ الطريقة إلا بيانات جزئية عن شكل الملفات، كافية للتحقق من شكل الملف، ولكنها غير كافية للتحقق الكامل.

{{% /alert %}}

## فحص الملفات

ويمكننا أن نتحقق من التوافق الشكلي لجميع الملفات في الملف المختار ونصنفها حسب الشكل إلى الملفات الفرعية المقابلة.

بما أننا نتعامل مع المحتويات في الملف أول شيء علينا فعله هو الحصول على مجموعة من الملفات في هذا الملف **GetFiles** طريقة `Directory` الفئة (من) `System.IO` مكان الاسم.

ويبين المثال الرمزي التالي كيفية الحصول على قائمة بجميع الملفات في الملف:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-GetListOfFilesInFolder.java" >}}

عندما يتم جمع جميع الملفات، ينجز بقية العمل **DetectFileFormat** الطريقة التي تفحص شكل الملف

The following code example shows how to iterate over the collected list of files, check the format of each file, and moves each file to the appropriate folder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-CheckFormatCompatibility.java" >}}

يتم نقل الملفات إلى ملفات فرعية مناسبة باستخدام `Move` طريقة `File` من نفس الصف `System.IO` مكان الاسم

The following files are used in the example above. اسم الملف على اليسار ووصفه على اليمين:

| Group of Files | الوثيقة | النوع |
|  :-  |  :-  |  :-  |
| صيغ الملفات المدعومة | ملف الاختبار (دوك) | Microsoft Word 95/6.0 أو Microsoft Word 97 - وثيقة عام 2003. |
|  | ملف الاختبار )الباب( | Microsoft Word 95/6.0 أو Microsoft Word 97 - نموذج عام 2003. |
|  | ملف الاختبار (الدوك) | المكتب المفتوح باب العضوية م. م. |
|  | ملف الاختبار (المكتب) | المكتب المفتوح باب العضوية م. م. |
|  | ملف الاختبار (دوتكس) | المكتب المفتوح باب العضوية نموذج ML. |
|  | ملف الاختبار (Dotm).dotm | المكتب المفتوح باب العضوية نموذج ML مع الثدييات. |
|  | ملف الاختبار (XML) | -وثيقة (فلاتوبك ) |
|  | ملف الاختبار (RTF) | وثيقة نسيج فورمات |
|  | ملف الاختبار (WordML) | Microsoft Word تجهيز الكلمات ML document. |
|  | Test File (HTML).html | HTML document. |
|  | ملف الاختبار (MHTML).mhtml | MHTML (Web archive) document. |
|  | ملف الاختبار (Odt).odt | نص الوثائق المفتوحة (كاتب المكتب). |
|  | ملف الاختبار (Ott) | نموذج وثيقة الإفتتاح |
|  | ملف الاختبار (DocPreWord60).doc | Microsoft Word 2.0 وثيقة. |
| الوثائق المشفرة | ملف الاختبار (Enc).doc | المشفرة Microsoft Word 95/6.0 أو Microsoft Word 97 - وثيقة عام 2003. |
|  | ملف الاختبار (Enc).docx | المكتب المشفر ML document. |
| صيغ الملفات غير المدعومة | ملف الاختبار (JPG). jpg | ملف صورة (جي بي جي) |

