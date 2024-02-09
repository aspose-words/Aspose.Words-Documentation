---
title: تشفير مستند في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: تشفير مستند
linktitle: تشفير مستند
description: "قم بتشفير مستندك باستخدام خوارزميات التشفير المناسبة لتنسيقات مستندات محددة في Python."
type: docs
weight: 20
url: /ar/python-net/encrypt-a-document/
---

التشفير هو العملية التي تترجم النص المقروء إلى تسلسلات لا معنى لها من البايتات بحيث لا يمكن قراءتها إلا من قبل الشخص الذي لديه مفتاح فك التشفير أو الرمز السري. تلعب هذه العملية دورًا مهمًا في تأمين المحتوى الخاص بك. فهو يساعد على تشفير المحتوى، والتحقق من أصل المستند، وإثبات عدم تعديل المحتوى بعد إرساله، والتأكد من أن البيانات الواردة من المستند آمنة.

تشرح هذه المقالة كيف يسمح لك Aspose.Words بتشفير مستند وكيفية التحقق مما إذا كان المستند مشفرًا أم لا.

## تشفير بكلمة مرور

لتشفير مستند، استخدم خاصية **كلمة المرور** لتوفير كلمة مرور تعمل كمفتاح تشفير. سيؤدي هذا إلى تعديل محتوى المستند الخاص بك وجعله غير قابل للقراءة. سيتطلب المستند المشفر إدخال كلمة المرور هذه قبل فتحه.

{{% alert color="primary" %}}

يمكنك العثور على خاصية **كلمة المرور** المناسبة للتنسيق المطلوب. يحتوي كل تنسيق حفظ مستند في وحدة [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) على فئة مقابلة تحتوي على خيارات حفظ لهذا التنسيق. على سبيل المثال، خاصية [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) في فئة [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) لـ DOC، أو خاصية [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) في فئة [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) لـ DOCX، وDOCM، وDOTX، وDOTM، وFlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

لاحظ أن تنسيقات معينة فقط من المستندات تدعم التشفير. على سبيل المثال، لا يدعم RTF التشفير.

{{% /alert %}}

يسرد الجدول أدناه التنسيقات وخوارزميات التشفير التي يدعمها Aspose.Words:

| شكل |  التشفير المدعوم أثناء التحميل |  التشفير المدعوم أثناء الحفظ |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  مستند، DOT |  تشفير XOR تشفير RC4 40 بت تشفير API RC4 |  تشفير RC4 (40 بت) |
|  DOCX، DOTX، DOCM، DOTM، FlatOPC، FlatOpcTemplate، FlatOpcMacroEnabled، FlatOpcTemplateMacroEnabled |  التشفير القياسي ECMA-376 التشفير السريع ECMA-376 |  التشفير القياسي ECMA-376 (AES128 + SHA1) |
|  أو دي تي، أو تي تي |  تشفير ODF (السمكة المنتفخة/AES) |  تشفير ODF (AES256 + SHA256) |
|  بي دي إف |                                                          |  تشفير RC4 (40/128 بت) |

يوضح مثال التعليمات البرمجية التالي كيفية تشفير مستند بكلمة مرور:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# DocSaveOptions only applies to Doc and Dot save formats.
options = aw.saving.DocSaveOptions(aw.SaveFormat.DOC);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.save(artifacts_dir + "DocSaveOptions.SaveAsDoc.doc", options)
{{< /highlight >}}

## تحقق مما إذا كان المستند مشفرًا

في بعض الحالات، قد يكون لديك مستند غير قابل للقراءة وتريد التأكد من أن المستند مشفر وغير تالف أو مضغوط.

لاكتشاف ما إذا كان المستند مشفرًا وما إذا كانت كلمة المرور مطلوبة، يمكنك استخدام خاصية [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) لفئة [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/). ستسمح لك هذه الخاصية أيضًا بتنفيذ بعض الإجراءات قبل تحميل مستند، على سبيل المثال، إعلام المستخدم بتقديم كلمة مرور.

يوضح مثال التعليمات البرمجية التالي كيفية اكتشاف تشفير المستند:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
saveOptions = aw.saving.OdtSaveOptions(aw.SaveFormat.ODT)
saveOptions.password = "MyPassword"

doc.Save(artifacts_dir + "File.DetectDocumentEncryption.odt", saveOptions)
            
# Create a `FileFormatInfo` object for this document.
info = aw.FileFormatUtil.detect_file_format(artifacts_dir + "File.DetectDocumentEncryption.odt")

# Verify the encryption status of our document.
self.assertTrue(info.is_encrypted)
{{< /highlight >}}

## افتح مستندًا بكلمة مرور أو بدونها

عندما نتأكد من تشفير المستند، يمكننا محاولة فتح هذا المستند بدون كلمة مرور، مما يؤدي إلى حدوث استثناء.

يوضح مثال التعليمات البرمجية التالي كيفية محاولة فتح مستند مشفر بدون كلمة مرور:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
options = aw.saving.OoxmlSaveOptions(aw.SaveFormat.DOCX)

# Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.Save(artifacts_dir + "OoxmlSaveOptions.SaveAsDocx.docx", options)

# We will not be able to open this document with Microsoft Word or
# Aspose.Words without providing the correct password.
# The following line will throw an exception.
doc = aw.Document(artifacts_dir + "OoxmlSaveOptions.Password.docx"))
{{< /highlight >}}

بعد أن رأينا أنه لا يمكن فتح مستند مشفر بدون كلمة مرور، يمكننا محاولة فتحه عن طريق إدخال كلمة المرور.

يوضح مثال التعليمات البرمجية التالي كيفية محاولة فتح مستند مشفر بكلمة مرور:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
options = aw.saving.OoxmlSaveOptions(aw.SaveFormat.DOCX)

# Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.Save(artifacts_dir + "OoxmlSaveOptions.SaveAsDocx.docx", options)

# Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = aw.Document(artifacts_dir + "OoxmlSaveOptions.Password.docx", aw.loading.LoadOptions("MyPassword"))

self.assertEqual("Hello world!", doc.get_text().strip())
{{< /highlight >}}
