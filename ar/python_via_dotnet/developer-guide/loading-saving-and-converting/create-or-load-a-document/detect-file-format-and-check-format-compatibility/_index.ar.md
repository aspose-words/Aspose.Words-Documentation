---
title: كشف تنسيق الملف عند التحميل
second_title: Aspose.Words لـ Python via .NET
articleTitle: كشف تنسيق الملف والتحقق من توافق التنسيق
linktitle: كشف تنسيق الملف والتحقق من توافق التنسيق
description: "حدد تنسيق الملف في Python إذا لم تكن متأكدًا من المحتوى الفعلي للملف، أو للتحقق من توافق التنسيق."
type: docs
weight: 20
url: /ar/python-net/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

في بعض الأحيان يكون من الضروري تحديد تنسيق المستند قبل فتحه لأن امتداد الملف لا يضمن أن محتويات الملف مناسبة. على سبيل المثال، من المعروف أن تقارير Crystal غالبًا ما تقوم بإخراج المستندات بتنسيق RTF، ولكنها تمنحها الامتداد .doc.

يوفر Aspose.Words القدرة على الحصول على معلومات حول نوع الملف لتجنب الاستثناء إذا لم تكن متأكدًا من المحتوى الفعلي للملف.

## كشف تنسيق الملف دون استثناء

عندما تتعامل مع مستندات متعددة بتنسيقات ملفات مختلفة، قد تحتاج إلى فصل الملفات التي يمكن معالجتها بواسطة Aspose.Words عن تلك التي لا يمكن معالجتها. قد ترغب أيضًا في معرفة سبب عدم إمكانية معالجة بعض المستندات.

إذا حاولت تحميل ملف إلى كائن [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) ولم يتمكن Aspose.Words من التعرف على تنسيق الملف أو كان التنسيق غير مدعوم، فسيطرح Aspose.Words استثناءً. يمكنك التقاط هذه الاستثناءات وتحليلها، لكن Aspose.Words يوفر أيضًا طريقة [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) التي تتيح لنا تحديد تنسيق الملف بسرعة دون تحميل مستند مع استثناءات محتملة. تقوم هذه الطريقة بإرجاع كائن [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) الذي يحتوي على المعلومات المكتشفة حول نوع الملف.

{{% alert color="primary" %}}

يتحقق [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) من تنسيق الملف فقط ولكنه لا يتحقق من صحة تنسيق الملف. ليس هناك ما يضمن أنه سيتم فتح الملف بنجاح، حتى لو أعاد [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) أنه أحد التنسيقات المدعومة. وذلك لأن طريقة [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) تقرأ بيانات تنسيق الملف جزئيًا فقط، وهو ما يكفي للتحقق من تنسيق الملف، ولكنه ليس كافيًا للتحقق الكامل من الصحة.

{{% /alert %}}

## التحقق من توافق تنسيق الملفات

يمكننا التحقق من توافق التنسيق لجميع الملفات الموجودة في المجلد المحدد وفرزها حسب التنسيق في المجلدات الفرعية المقابلة.

نظرًا لأننا نتعامل مع محتويات مجلد، فإن أول شيء يتعين علينا القيام به هو الحصول على مجموعة من جميع الملفات الموجودة في هذا المجلد باستخدام طريقة **listdir** لوحدة **نظام التشغيل**.

يوضح مثال التعليمات البرمجية التالي كيفية الحصول على قائمة بجميع الملفات الموجودة في المجلد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-GetListOfFilesInFolder.py" >}}

عندما يتم جمع كافة الملفات، يتم تنفيذ بقية العمل من خلال طريقة [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/)، التي تتحقق من تنسيق الملف.

يوضح مثال التعليمات البرمجية التالي كيفية التكرار على قائمة الملفات المجمعة، والتحقق من تنسيق كل ملف، ونقل كل ملف إلى المجلد المناسب:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-CheckFormatCompatibility.py" >}}

يتم نقل الملفات إلى المجلدات الفرعية المناسبة باستخدام طريقة **نسخة ارشيف** لوحدة **Shutil**.

يتم استخدام الملفات التالية في المثال أعلاه. اسم الملف على اليسار ووصفه على اليمين:

| Group للملفات | مستند الإدخال | يكتب |
|  :-  |  :-  |  :-  |
| تنسيقات الملفات المدعومة | ملف الاختبار (Doc).doc | مستند Microsoft Word 95/6.0 أو Microsoft Word 97 – 2003. |
|  | ملف الاختبار (`Dot`).dot | قالب Microsoft Word 95/6.0 أو Microsoft Word 97 – 2003. |
|  | ملف الاختبار (Docx).docx | مستند Office Open XML WordprocessingML بدون وحدات ماكرو. |
|  | ملف الاختبار (Docm).docm | مستند Office Open XML WordprocessingML مع وحدات الماكرو. |
|  | ملف الاختبار (دوتكس).dotx | قالب Office Open XML لمعالجة النصوص ML. |
|  | ملف الاختبار (Dotm).dotm | قالب Office Open XML WordprocessingML مع وحدات الماكرو. |
|  | ملف الاختبار (XML).xml | مستند FlatOPC OOXML. |
|  | ملف الاختبار (RTF).rtf | مستند بتنسيق نص منسق. |
|  | ملف الاختبار (WordML).xml | مستند Microsoft Word 2003 لمعالجة الكلمات ML. |
|  | ملف الاختبار (HTML).html | وثيقة HTML. |
|  | ملف الاختبار (MHTML).mhtml | وثيقة MHTML (أرشيف الويب). |
|  | ملف الاختبار (Odt).odt | نص OpenDocument (كاتب OpenOffice). |
|  | ملف الاختبار (أوت).ott | قالب مستند OpenDocument. |
|  | ملف الاختبار (DocPreWord60).doc | Microsoft Word مستند 2.0. |
| المستندات المشفرة | ملف الاختبار (Enc).doc | مستند Microsoft Word 95/6.0 أو Microsoft Word 97 – 2003 مشفر. |
|  | ملف الاختبار (Enc).docx | مستند مشفر لـ Office Open XML WordprocessingML. |
| تنسيقات الملفات غير المدعومة | ملف الاختبار (JPG).jpg | ملف صورة JPEG. |

