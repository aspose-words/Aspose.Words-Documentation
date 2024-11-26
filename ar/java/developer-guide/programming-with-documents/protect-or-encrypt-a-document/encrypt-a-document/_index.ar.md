---
title: تشفير مستند في Java
second_title: Aspose.Words ل Java
articleTitle: تشفير مستند
linktitle: تشفير مستند
description: "قم بتشفير المستند باستخدام خوارزميات التشفير المناسبة لتنسيقات مستندات محددة في Java."
type: docs
weight: 20
url: /ar/java/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

التشفير هو العملية التي تترجم النص المقروء إلى تسلسلات لا معنى لها من وحدات البايت بحيث لا يمكن قراءتها إلا من قبل الشخص الذي لديه مفتاح فك التشفير أو الرمز السري. تلعب هذه العملية دورا مهما في تأمين المحتوى الخاص بك. يساعد على ترميز المحتوى، والتحقق من أصل المستند، وإثبات أن المحتوى لم يتم تعديله بعد إرساله، والتأكد من أن البيانات من المستند آمنة.

تشرح هذه المقالة كيف تسمح لك Aspose.Words بتشفير مستند وكيفية التحقق مما إذا كان المستند يحتوي على تشفير أم لا.

## تشفير بكلمة مرور

لتشفير مستند، استخدم خاصية **Password** لتوفير كلمة مرور تعمل كمفتاح تشفير. سيؤدي هذا إلى تعديل محتوى المستند الخاص بك وجعله غير قابل للقراءة. سيتطلب المستند المشفر إدخال كلمة المرور هذه قبل فتحها.

{{% alert color="primary" %}}

يمكنك العثور على خاصية **Password** المناسبة للتنسيق المطلوب. يحتوي كل تنسيق لحفظ المستند على فئة مقابلة تحتوي على خيارات حفظ لهذا التنسيق. على سبيل المثال، الخاصية [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#getPassword) في فئة [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) لـ DOC، أو الخاصية [Password](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/#getPassword) في فئة [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/) لـ DOCX, DOCM, DOTX, DOTM, و FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

لاحظ أن تنسيقات مستندات معينة فقط تدعم التشفير. على سبيل المثال، RTF لا يدعم التشفير.

{{% /alert %}}

يسرد الجدول أدناه التنسيقات وخوارزميات التشفير التي يدعمها Aspose.Words:

| الشكل | التشفير المدعوم أثناء التحميل | التشفير المدعوم أثناء الحفظ |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | XOR تشفير40 بت RC4 EncryptionCryptoAPI RC4 التشفير | RC4 التشفير (40 بت) |
| DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | ECMA-376 معيار EncryptionECMA-376 التشفير رشيقة | ECMA-376 التشفير القياسي (AES128 + SHA1) |
| ODT, OTT | ODF التشفير (السمكة المنتفخة / AES) | ODF التشفير (AES256 + SHA256) |
| PDF |  | RC4 التشفير (40/128 بت) |

يوضح مثال الكود التالي كيفية تشفير مستند بكلمة مرور:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "encrypt-document-with-password.java" >}}

## تحقق مما إذا كان المستند مشفرا

في بعض الحالات، قد يكون لديك مستند غير قابل للقراءة وتريد التأكد من أن المستند مشفر وغير تالف أو مضغوط.

لاكتشاف ما إذا كان المستند مشفرا وإذا كانت كلمة المرور مطلوبة، يمكنك استخدام خاصية [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) لفئة [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/). ستسمح لك هذه الخاصية أيضا بتنفيذ بعض الإجراءات قبل تحميل مستند، على سبيل المثال، إعلام المستخدم بتقديم كلمة مرور.

يوضح مثال التعليمات البرمجية التالية كيفية اكتشاف تشفير المستند:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "verify-encrypted-document.java" >}}

## افتح مستندا بكلمة مرور أو بدونها

عندما نتأكد من تشفير مستند، يمكننا محاولة فتح هذا المستند بدون كلمة مرور، مما يؤدي إلى استثناء.

يوضح مثال الكود التالي كيفية محاولة فتح مستند مشفر بدون كلمة مرور:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-encrypted-document-without-password.java" >}}

بعد أن رأينا أنه لا يمكن فتح مستند مشفر بدون كلمة مرور، يمكننا محاولة فتحه عن طريق إدخال كلمة المرور.

يوضح مثال الكود التالي كيفية محاولة فتح مستند مشفر بكلمة مرور:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-save-encrypted-document.java" >}}
