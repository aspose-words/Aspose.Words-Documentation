---
title: العمل بالتوقيعات الرقمية Java
second_title: Aspose.Words for Java
articleTitle: العمل مع التوقيعات الرقمية
linktitle: العمل مع التوقيعات الرقمية
description: "التوقيع الرقمي على الوثائق والكشف عن التوقيعات الرقمية الموجودة وحصرها والتحقق منها وإزالتها باستخدام Java."
type: docs
weight: 30
url: /ar/java/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

والتوقيع الرقمي هو التنفيذ التكنولوجي للتوقيعات الإلكترونية لتوقيع الوثائق وتوثيق هوية الموقّع لضمان عدم تعديل الوثيقة منذ التوقيع عليها. وكل توقيع رقمي فريد لكل موقّع بسبب اتباع بروتوكول PKI لتوليد مفاتيح عامة وخاصة على حد سواء. توقيع وثيقة رقمية يعني إنشاء توقيع باستخدام مفتاح اللافتة الخاص حيث يتم استخدام خوارزمية رياضية لتشفير الحشيش المولد

Aspose.Words وتسمح لك بالكشف عن التوقيعات الرقمية الموجودة أو العد أو التحقق منها، وتضيف أيضا توقيعا جديدا إلى وثيقتك لمعرفة أي تلاعب فيها. يمكنك أيضا إزالة جميع التوقيعات الرقمية من وثيقة. استخدام [DigitalSignatureUtil](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/) درجة للعمل مع التوقيعات الرقمية.

وتوضح هذه المادة كيفية القيام بكل ما سبق للتحقق من صحة الوثيقة الرقمية وسلامتها.

{{% alert color="primary" %}}

ملاحظة أنه يمكنك الحصول على التوقيعات الرقمية لوثيقتك فقط عند إدارة Java 6 نسخ وما فوق.

{{% /alert %}}

{{% alert color="primary" %}}

**حاول على الإنترنت**

يمكنك أن تجرب هذه الوظيفة معنا [التوقيع الحر على الإنترنت](https://products.aspose.app/words/signature).

{{% /alert %}}

## النماذج المدعومة

Aspose.Words يُمكِنُك أَنْ تَعْملَ بالتوقيعاتِ الرقميةِ على DOC، OOOXML، ووثائق ODT ويُوقّعُ الوثيقةَ المُولّدةَ في PDF أَو XPS شكل

## حدود التوقيعات الرقمية

الجدول الوارد أدناه يصف بعض القيود التي قد تواجهها أثناء العمل مع التوقيعات الرقمية من خلال Aspose.Words, وكذلك بعض الخيارات البديلة.

|  التقادم |  الخيار البديل |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  Loss of digital signatures on a document after loading and save it. ومن ثم، فإن تجهيز وثيقة إلى الخادم قد يتسبب في فقدان جميع التوقيعات الرقمية دون إخطار |  تحقق إذا كانت الوثيقة تحمل توقيعات رقمية وتتخذ الإجراء المناسب إذا وجدت. فعلى سبيل المثال، إرسال إنذار إلى العملاء الذين يبلغونهم بأن الوثيقة التي يرفعونها تحتوي على توقيعات رقمية ستفقد إذا تم تجهيزها |
|  Aspose.Words تؤيد العمل مع الكليات في وثيقة. لكن Aspose.Words لا يدعم حتى الآن التوقيعات الرقمية على التاج |  :: تصدير الوثيقة إلى أي شكل من أشكال الكلمات واستخدامها Microsoft Word لإضافة توقيع رقمي إلى (ككرو) |

## التوقيعات الرقمية

Aspose.Words يسمح لك بالكشف عن التوقيع الرقمي في وثيقة تستخدم [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.io.InputStream) الأسلوب والأسلوب [HasDigitalSignature](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasDigitalSignature) ملكية وتجدر الإشارة إلى أن هذا الشيك لن يكشف سوى حقيقة التوقيع، ولكن ليس صحته.

ويمكن توقيع وثيقة أكثر من مرة، ويمكن لمستعملين مختلفين القيام بذلك. للتحقق من صحة التوقيعات الرقمية، تحتاج إلى تحميلها من الوثيقة باستخدام [LoadSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#loadSignatures-java.io.InputStream) طريقة واستخدام [IsValid](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#isValid) ملكية أيضا Aspose.Words يُمكِنُك أَنْ تَحْسبَ a مجموعة مِنْ كُلّ التوقيعاتِ الرقميةِ ضمن a وثيقة تَستعملُ [Count](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#getCount) ملكية

ويوفر كل ذلك وسيلة فعالة وآمنة للتحقق من وثيقة للتوقيع قبل تجهيزها.

ويبين المثال الرمزي التالي كيفية كشف وجود التوقيعات الرقمية والتحقق منها:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "detect-document-signatures.java" >}}

## إنشاء توقيع رقمي {#create-a-digital-signature}

لخلق توقيع رقمي، سوف تحتاج إلى تحميل شهادة التوقيع التي تؤكد الهوية. عندما ترسلين وثيقة موقعة رقمياً ترسلين أيضاً شهادة ومفتاحك العام

Aspose.Words يسمح لك بصنع شهادة X.509، شهادة رقمية تستخدم المعيار المقبول دوليا X.509 PKI للتحقق من أن المفتاح العمومي ينتمي للعلامة المدرجة في الشهادة. للقيام بذلك، استخدام [Create](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/#create-byte---java.lang.String) الطريقة داخل [CertificateHolder](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/) الصف

وتوضح الفروع التالية كيفية إضافة توقيع رقمي، وخط توقيع، وكيفية التوقيع على وثيقة من وثائق PDF.

### التوقيع على الوثيقة

Aspose.Words يسمح لك بتوقيع وثيقة دو سي أو دي سي أو وثيقة دي تي رقمياً [Sign](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#sign-java.io.InputStream-java.io.OutputStream-com.aspose.words.CertificateHolder) الطريقة [SignOptions](https://reference.aspose.com/words/java/com.aspose.words/signoptions/) الممتلكات.

ويبين المثال الرمزي التالي كيفية التوقيع على الوثائق باستخدام حامل شهادة وخيارات التوقيع:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "sign-document.java" >}}

### يضاف خط التوقيع

A signature line is a visual representation of a digital signature in a document. Aspose.Words يسمح لك بإدخال خط التوقيع باستخدام [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertSignatureLine-com.aspose.words.SignatureLineOptions) طريقة يمكنك أيضاً تحديد معايير هذا التمثيل باستخدام [SignatureLineOptions](https://reference.aspose.com/words/java/com.aspose.words/signaturelineoptions/) الصف

فعلى سبيل المثال، تبين الصورة الواردة أدناه كيف يمكن عرض التوقيعات الصحيحة والباطلة.

<img src="/words/java/working-with-digital-signatures/valid.png" alt="valid-digital-signature" style="width:300px"/>

<img src="/words/java/working-with-digital-signatures/invalid.png" alt="invalid-digital-signature" style="width:300px"/>

كذلك، إذا كانت الوثيقة تحتوي على خط توقيع ولا توقيع رقمي، فإن هناك سمة لطلب من المستخدم إضافة توقيع.

ويبين المثال الرمزي التالي كيفية توقيع وثيقة تحمل شهادة شخصية وخط توقيع محدد:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "create-new-signature-line-and-set-provider-id.java" >}}

### توقيع وثيقة مولدة من PDF {#sign-a-generated-pdf-document}

Aspose.Words يسمح لك بالتوقيع والحصول على كل تفاصيل وثيقة PDF باستخدام [PdfDigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfdigitalsignaturedetails/) الممتلكات.

The following code example shows how to sign a generated PDF:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "digitally-signed-pdf-using-certificate-holder.java" >}}

وتبين الصورة الواردة أدناه أن الوثيقة المولدة عن قوة الدفاع الشعبي قد فتحت في Adobe Acrobat ويتحقق من التوقيع الرقمي باعتباره حاضرا وصحيحا.

![create-digital-signed-pdf-aspose-words-java](/words/java/working-with-digital-signatures/signed-pdf-aspose-words-java.png)

## استرداد قيمة التوقيع الرقمي

Aspose.Words كما يوفر القدرة على استرداد قيمة التوقيع الرقمي من وثيقة موقعة رقمياً كصفيفة فرعية تستخدم [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) ملكية

ويبين المثال الرمزي التالي كيفية الحصول على قيمة التوقيع الرقمي كصفيفة فرعية من الوثيقة:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "signature-value.java" >}}

## إزالة التوقيعات الرقمية

Aspose.Words يسمح لك بإزالة جميع التوقيعات الرقمية من وثيقة موقعة باستخدام [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) طريقة

ويبين المثال الرمزي التالي كيفية تحميل وإزالة التوقيعات الرقمية من الوثيقة:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "remove-signatures.java" >}}

{{% alert color="primary" %}}

ملاحظة أنه لا يمكنك إزالة توقيع رقمي واحد فقط في وثيقتك

{{% /alert %}}
