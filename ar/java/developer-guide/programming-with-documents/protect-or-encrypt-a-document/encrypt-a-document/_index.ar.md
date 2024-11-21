---
title: أدخل الوثيقة Java
second_title: Aspose.Words for Java
articleTitle: Encrypt a Document
linktitle: Encrypt a Document
description: "اشتر وثيقتك باستخدام خوارزميات التشفير المناسبة لأشكال محددة من الوثائق Java."
type: docs
weight: 20
url: /ar/java/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

والتشفير هو العملية التي تترجم النص القابل للقراءة إلى تسلسل لا معنى له من النوافذ بحيث لا يمكن قراءة هذا النص إلا من قبل الشخص الذي يملك مفتاح فك التشفير أو الرمز السري. هذه العملية تؤدي دوراً هاماً في تأمين مضمونك وهو يساعد على تحديد محتوى الوثيقة والتحقق من مصدرها، ويثبت أن المحتوى لم يعدل بعد إرسالها، ويكفل سلامة البيانات الواردة في الوثيقة.

توضح هذه المادة كيف Aspose.Words يُمكِنُك أَنْ تُشفّرَ a وثيقة و كَيفَ تَتأكّدُ إذا a مستند عِنْدَهُ تشفيرُ أَو لا.

## مشفرة بكلمة المرور

لتشفير وثيقة، استخدام **Password** الممتلكات لتوفير كلمة سر تعمل كمفتاح تشفير وهذا سيعدل مضمون وثيقتكم وسيجعلها غير قابلة للقراءة. وستتطلب الوثيقة المشفرة إدخال كلمة السر هذه قبل فتحها.

{{% alert color="primary" %}}

يمكنك أن تجد المناسب **Password** ممتلكات بالشكل المطلوب. ولكل شكل من أشكال الوثائق صنف مناظر يحتوي على خيارات لهذا الشكل. على سبيل المثال، [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#getPassword) الممتلكات في [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) درجة لـ (دو سي) أو [Password](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/#getPassword) الممتلكات في [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/) درجة لـ (دي سي إكس) DOTX, DOTM, and FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Note that only certain document formats support encryption. For example, RTF does not support encryption.

{{% /alert %}}

ويورد الجدول الوارد أدناه الأشكال والأغلفة المشفرة التي تدعمها Aspose.Words:

| الشكل |  دعم المشاهير في حين |  دعم التشفير أثناء الإنقاذ |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  (دوك) DOT |  XOR encryption40-bit RC4 EncryptionCryptoAPI RC4 |  RC4 Encryption (40-bit) |
|  دي سيكس DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  ECMA-376 Standard EncryptionECMA-376 Agile Encryption |  ECMA-376 Standard Encryption (AES128 + SHA1) |
|  ODT, OTT |  ODF Encryption (Blowfish/AES) |  ODF Encryption (AES256 + SHA256) |
|  PDF |  -                                                            |  RC4 Encryption (40/128 bit) |

ويوضح المثال الرمزي التالي كيفية تشفير وثيقة تحمل كلمة سر:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "encrypt-document-with-password.java" >}}

## تحقق إذا كانت الوثيقة مشفرة

وفي بعض الحالات، قد يكون لديك وثيقة غير قابلة للقراءة، وتريد التأكد من أن الوثيقة مشفرة ولا تفسد أو تضغط.

للكشف إذا تم تشفير الوثيقة وإذا كان الأمر يتطلب كلمة سر، يمكنك استخدام [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) ممتلكات [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) صف هذه الممتلكات ستسمح لك أيضاً بالقيام ببعض الإجراءات قبل تحميل وثيقة، على سبيل المثال، إبلاغ المستخدم بتقديم كلمة سر.

ويبين المثال الرمزي التالي كيفية كشف تشفير الوثيقة:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "verify-encrypted-document.java" >}}

## فتح وثيقة مع أو بدون كلمة سر

وعندما نكون قد تأكدنا من أن وثيقة مشفرة، يمكننا أن نحاول فتح هذه الوثيقة بدون كلمة سر، التي ينبغي أن تؤدي إلى استثناء.

ويبين المثال الرمزي التالي كيفية محاولة فتح وثيقة مشفرة دون كلمة سر:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-encrypted-document-without-password.java" >}}

وبعد أن رأينا أن وثيقة مشفرة لا يمكن فتحها بدون كلمة سر، يمكننا أن نحاول فتحها بدخول كلمة السر.

ويبين المثال الرمزي التالي كيفية محاولة فتح وثيقة مشفرة بكلمة سر:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-save-encrypted-document.java" >}}
