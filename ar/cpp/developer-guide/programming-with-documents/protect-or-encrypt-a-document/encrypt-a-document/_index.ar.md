---
title: تشفير مستند في C++
second_title: Aspose.Words ل C++
articleTitle: تشفير مستند
linktitle: تشفير مستند
description: "قم بتشفير المستند باستخدام خوارزميات التشفير المناسبة لتنسيقات مستندات محددة."
type: docs
weight: 20
url: /ar/cpp/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

التشفير هو العملية التي تترجم النص المقروء إلى تسلسلات لا معنى لها من وحدات البايت بحيث لا يمكن قراءتها إلا من قبل الشخص الذي لديه مفتاح فك التشفير أو الرمز السري. تلعب هذه العملية دورا مهما في تأمين المحتوى الخاص بك. يساعد على ترميز المحتوى، والتحقق من أصل المستند، وإثبات أن المحتوى لم يتم تعديله بعد إرساله، والتأكد من أن البيانات من المستند آمنة.

تشرح هذه المقالة كيف تسمح لك Aspose.Words بتشفير مستند وكيفية التحقق مما إذا كان المستند يحتوي على تشفير أم لا.

## تشفير بكلمة مرور

لتشفير مستند، استخدم خاصية **Password** لتوفير كلمة مرور تعمل كمفتاح تشفير. سيؤدي هذا إلى تعديل محتوى المستند الخاص بك وجعله غير قابل للقراءة. سيتطلب المستند المشفر إدخال كلمة المرور هذه قبل فتحها.

{{% alert color="primary" %}}

يمكنك العثور على خاصية **Password** المناسبة للتنسيق المطلوب. يحتوي كل تنسيق حفظ مستند في [Saving Namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.saving) على فئة مقابلة تحتوي على خيارات حفظ لهذا التنسيق. على سبيل المثال، الخاصية [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) في فئة [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) لـ DOC، أو الخاصية [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/get_password/) في فئة [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/) لـ DOCX, DOCM, DOTX, DOTM, و FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

لاحظ أن تنسيقات مستندات معينة فقط تدعم التشفير. على سبيل المثال، RTF لا يدعم التشفير.

{{% /alert %}}

يسرد الجدول أدناه التنسيقات وخوارزميات التشفير التي يدعمها Aspose.Words:

| الشكل | التشفير المدعوم أثناء التحميل | التشفير المدعوم أثناء الحفظ |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | XOR تشفير40 بت RC4 EncryptionCryptoAPI RC4 التشفير | RC4 التشفير (40 بت) |
| DOCX, DOTX, DOCM, DOTM, فلاتوبك, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | ECMA-376 التشفير القياسيةECMA-376 التشفير رشيقة | ECMA-376 التشفير القياسي (AES128 + SHA1) |
| ODT, OTT | ODF التشفير (السمكة المنتفخة / AES) | ODF التشفير (AES256 + SHA256) |
| PDF | RC4 التشفير (40/128 بت) |

يوضح مثال الكود التالي كيفية تشفير مستند بكلمة مرور:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "encrypt-document-with-password.h" >}}

## تحقق مما إذا كان المستند مشفرا

في بعض الحالات، قد يكون لديك مستند غير قابل للقراءة وتريد التأكد من أن المستند مشفر وغير تالف أو مضغوط.

لاكتشاف ما إذا كان المستند مشفرا وإذا كانت كلمة المرور مطلوبة، يمكنك استخدام خاصية [IsEncrypted](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_isencrypted/) لفئة [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo). ستسمح لك هذه الخاصية أيضا بتنفيذ بعض الإجراءات قبل تحميل مستند، على سبيل المثال، إعلام المستخدم بتقديم كلمة مرور.

يوضح مثال التعليمات البرمجية التالية كيفية اكتشاف تشفير المستند:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "verify-encrypted-document.h" >}}

## افتح مستندا بكلمة مرور أو بدونها

عندما نتأكد من تشفير مستند، يمكننا محاولة فتح هذا المستند بدون كلمة مرور، مما يؤدي إلى استثناء.

يوضح مثال الكود التالي كيفية محاولة فتح مستند مشفر بدون كلمة مرور:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-encrypted-document-without-password.h" >}}

بعد أن رأينا أنه لا يمكن فتح مستند مشفر بدون كلمة مرور، يمكننا محاولة فتحه عن طريق إدخال كلمة المرور.

يوضح مثال الكود التالي كيفية محاولة فتح مستند مشفر بكلمة مرور:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-save-encrypted-document.h" >}}
