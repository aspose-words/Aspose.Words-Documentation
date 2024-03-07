---
title: تشفير مستند في C#
second_title: Aspose.Words لـ .NET
articleTitle: تشفير مستند
linktitle: تشفير مستند
description: "قم بتشفير مستندك باستخدام خوارزميات التشفير المناسبة لتنسيقات مستندات محددة في C#."
type: docs
weight: 20
url: /ar/net/encrypt-a-document/
---

التشفير هو العملية التي تترجم النص المقروء إلى تسلسلات لا معنى لها من البايتات بحيث لا يمكن قراءتها إلا من قبل الشخص الذي لديه مفتاح فك التشفير أو الرمز السري. تلعب هذه العملية دورًا مهمًا في تأمين المحتوى الخاص بك. فهو يساعد على تشفير المحتوى، والتحقق من أصل المستند، وإثبات عدم تعديل المحتوى بعد إرساله، والتأكد من أن البيانات من المستند آمنة.

تشرح هذه المقالة كيف يسمح لك Aspose.Words بتشفير مستند وكيفية التحقق مما إذا كان المستند مشفرًا أم لا.

## تشفير بكلمة مرور

لتشفير مستند، استخدم خاصية **Password** لتوفير كلمة مرور تعمل كمفتاح تشفير. سيؤدي هذا إلى تعديل محتوى المستند الخاص بك وجعله غير قابل للقراءة. سيتطلب المستند المشفر إدخال كلمة المرور هذه قبل فتحه.

{{% alert color="primary" %}}

يمكنك العثور على خاصية **Password** المناسبة للتنسيق المطلوب. يحتوي كل تنسيق حفظ مستند في [حفظ مساحة الاسم](https://reference.aspose.com/words/ar/net/aspose.words.saving/) على فئة مقابلة تحتوي على خيارات حفظ لهذا التنسيق. على سبيل المثال، خاصية [Password](https://reference.aspose.com/words/ar/net/aspose.words.saving/docsaveoptions/password/) في فئة [DocSaveOptions](https://reference.aspose.com/words/ar/net/aspose.words.saving/docsaveoptions/) لـ DOC، أو خاصية [Password](https://reference.aspose.com/words/ar/net/aspose.words.saving/ooxmlsaveoptions/password/) في فئة [OoxmlSaveOptions](https://reference.aspose.com/words/ar/net/aspose.words.saving/ooxmlsaveoptions/) لـ DOCX، وDOCM، وDOTX، وDOTM، وFlatOpc.

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
|  بي دي إف |  -                                                            |  تشفير RC4 (40/128 بت) |

يوضح مثال التعليمات البرمجية التالي كيفية تشفير مستند بكلمة مرور:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "encrypt-document-with-password.cs" >}}

## تحقق مما إذا كان المستند مشفرًا

في بعض الحالات، قد يكون لديك مستند غير قابل للقراءة وتريد التأكد من أن المستند مشفر وغير تالف أو مضغوط.

لاكتشاف ما إذا كان المستند مشفرًا وما إذا كانت كلمة المرور مطلوبة، يمكنك استخدام خاصية [IsEncrypted](https://reference.aspose.com/words/ar/net/aspose.words/fileformatinfo/isencrypted/) لفئة [FileFormatInfo](https://reference.aspose.com/words/ar/net/aspose.words/fileformatinfo/). ستسمح لك هذه الخاصية أيضًا بتنفيذ بعض الإجراءات قبل تحميل مستند، على سبيل المثال، إعلام المستخدم بتقديم كلمة مرور.

يوضح مثال التعليمات البرمجية التالي كيفية اكتشاف تشفير المستند:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "verify-encrypted-document.cs" >}}

## افتح مستندًا بكلمة مرور أو بدونها

عندما نتأكد من تشفير المستند، يمكننا محاولة فتح هذا المستند بدون كلمة مرور، مما يؤدي إلى حدوث استثناء.

يوضح مثال التعليمات البرمجية التالي كيفية محاولة فتح مستند مشفر بدون كلمة مرور:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-encrypted-document-without-password.cs" >}}

بعد أن رأينا أنه لا يمكن فتح مستند مشفر بدون كلمة مرور، يمكننا محاولة فتحه عن طريق إدخال كلمة المرور.

يوضح مثال التعليمات البرمجية التالي كيفية محاولة فتح مستند مشفر بكلمة مرور:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-save-encrypted-document.cs" >}}
