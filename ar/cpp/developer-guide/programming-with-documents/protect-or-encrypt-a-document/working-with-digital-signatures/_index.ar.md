---
title: العمل مع التوقيعات الرقمية في C++
second_title: Aspose.Words ل C++
articleTitle: العمل مع التوقيعات الرقمية
linktitle: العمل مع التوقيعات الرقمية
description: "قم بتوقيع المستندات رقميا واكتشف التوقيعات الرقمية الموجودة وعدها والتحقق منها وإزالتها."
type: docs
weight: 160
url: /ar/cpp/working-with-digital-signatures/
---

التوقيع الرقمي هو تطبيق تكنولوجي للتوقيعات الإلكترونية لتوقيع المستندات والمصادقة على الموقع لضمان عدم تعديل المستند منذ توقيعه. كل توقيع رقمي فريد لكل موقع بسبب اتباع بروتوكول PKI لإنشاء مفاتيح عامة وخاصة. يعني توقيع مستند رقميا إنشاء توقيع باستخدام المفتاح الخاص للموقع حيث يتم استخدام خوارزمية رياضية لتشفير التجزئة التي تم إنشاؤها.

Aspose.Words يسمح لك باكتشاف التوقيعات الرقمية الموجودة أو عدها أو التحقق منها، وكذلك إضافة توقيع جديد إلى المستند الخاص بك لمعرفة أي تلاعب فيه. يمكنك أيضا إزالة جميع التوقيعات الرقمية من مستند. استخدم فئة [DigitalSignatureUtil](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/) للعمل مع التوقيعات الرقمية.

تشرح هذه المقالة كيفية القيام بكل ما سبق للتحقق من صحة وسلامة المستند الرقمي.

{{% alert color="primary" %}}

**جرب عبر الإنترنت**

يمكنك تجربة هذه الوظيفة من خلال [توقيع مجاني على الإنترنت](https://products.aspose.app/words/signature).

{{% /alert %}}

## التنسيقات المدعومة

Aspose.Words يسمح لك بالعمل مع التوقيعات الرقمية على DOC و OOXML و ODT المستندات والتوقيع على المستند الذي تم إنشاؤه بتنسيق PDF أو XPS.

## قيود التوقيعات الرقمية

يصف الجدول أدناه بعض القيود التي قد تواجهها أثناء العمل مع التوقيعات الرقمية من خلال Aspose.Words، بالإضافة إلى بعض الخيارات البديلة.

| القيد | خيار بديل |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| فقدان التوقيعات الرقمية على مستند بعد تحميله وحفظه. لذلك، قد تؤدي معالجة مستند إلى خادم إلى فقدان جميع التوقيعات الرقمية دون إشعار. | تحقق مما إذا كان المستند يحتوي على توقيعات رقمية واتخذ الإجراء المناسب إن وجد. على سبيل المثال، أرسل تنبيها إلى العملاء لإبلاغهم بأن المستند الذي يقومون بتحميله يحتوي على توقيعات رقمية ستفقد إذا تمت معالجتها. |
| Aspose.Words يدعم العمل مع وحدات الماكرو في مستند. لكن Aspose.Words لا يدعم حتى الآن التوقيعات الرقمية على وحدات الماكرو. | قم بتصدير المستند مرة أخرى إلى أي تنسيق ورد، واستخدم Microsoft Word لإضافة توقيع رقمي إلى وحدات الماكرو. |

## كشف، عد، والتحقق من التوقيعات الرقمية

Aspose.Words يسمح لك باكتشاف التوقيع الرقمي في مستند باستخدام طريقة [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) وخاصية [HasDigitalSignature](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_hasdigitalsignature/). تجدر الإشارة إلى أن مثل هذا الفحص سيكتشف فقط حقيقة التوقيع، ولكن ليس صلاحيته.

يمكن توقيع المستند أكثر من مرة، ويمكن القيام بذلك بواسطة مستخدمين مختلفين. للتحقق من صحة التوقيعات الرقمية، تحتاج إلى تحميلها من المستند باستخدام طريقة [LoadSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/) واستخدام خاصية [IsValid](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_isvalid/). يسمح لك Aspose.Words أيضا بحساب مجموعة من جميع التوقيعات الرقمية داخل مستند باستخدام خاصية [Count](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_count/).

يوفر كل هذا طريقة فعالة وآمنة للتحقق من المستند بحثا عن التوقيعات قبل معالجته.

يوضح مثال الكود التالي كيفية اكتشاف وجود التوقيعات الرقمية والتحقق منها:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "detect-document-signatures.h" >}}

## إنشاء توقيع رقمي {#create-a-digital-signature}

لإنشاء توقيع رقمي، ستحتاج إلى تحميل شهادة توقيع تؤكد الهوية. عند إرسال مستند موقع رقميا، يمكنك أيضا إرسال الشهادة والمفتاح العام.

Aspose.Words يسمح لك بإنشاء شهادة س. 509، وهي شهادة رقمية تستخدم معيار س. 509 PKI المقبول دوليا للتحقق من أن المفتاح العمومي ينتمي إلى الموقع المضمن داخل الشهادة. للقيام بذلك، استخدم طريقة [Create](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder/create/) ضمن فئة [CertificateHolder](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder).

تشرح الأقسام التالية كيفية إضافة توقيع رقمي وسطر توقيع وكيفية التوقيع على مستند تم إنشاؤه PDF.

### التوقيع على وثيقة

Aspose.Words يسمح لك بالتوقيع على DOC أو DOCX أو ODT مستندا رقميا باستخدام طريقة [Sign](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/sign/) وخصائص [SignOptions](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/signoptions/).

يوضح مثال الكود التالي كيفية توقيع المستندات باستخدام حامل الشهادة وخيارات التوقيع:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "sign-document.h" >}}

### أضف سطر توقيع

خط التوقيع هو تمثيل مرئي للتوقيع الرقمي في المستند. Aspose.Words يسمح لك بإدراج سطر توقيع باستخدام طريقة [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertsignatureline/). يمكنك أيضا تعيين المعلمات لهذا التمثيل باستخدام فئة [SignatureLineOptions](https://reference.aspose.com/words/cpp/aspose.words/signaturelineoptions/).

على سبيل المثال، توضح الصورة أدناه كيف يمكن عرض التوقيعات الصالحة وغير الصالحة.

<img src="valid.png" alt="valid-signature" style="width:300px"/>

<img src="invalid.png" alt="invalid-signature" style="width:300px"/>

أيضا، إذا كان المستند يحتوي على سطر توقيع ولا يوجد توقيع رقمي، فهناك ميزة تطلب من المستخدم إضافة توقيع.

يوضح مثال الكود التالي كيفية توقيع مستند بشهادة شخصية وسطر توقيع محدد:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "create-new-signature-line-and-set-provider-id.h" >}}

### توقيع مستند تم إنشاؤه PDF {#sign-a-generated-pdf-document}

Aspose.Words يسمح لك بالتوقيع والحصول على جميع تفاصيل مستند PDF باستخدام خصائص [PdfDigitalSignatureDetails](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfdigitalsignaturedetails/).

يوضح مثال التعليمات البرمجية التالية كيفية التوقيع على إنشاء PDF:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "digitally-signed-pdf-using-certificate-holder.h" >}}

## استرجاع قيمة التوقيع الرقمي

Aspose.Words يوفر أيضا القدرة على استرداد قيمة التوقيع الرقمي من مستند موقع رقميا كمصفوفة بايت باستخدام خاصية [SignatureValue](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignature/get_signaturevalue/).

يوضح مثال التعليمات البرمجية التالية كيفية الحصول على قيمة التوقيع الرقمي كمصفوفة بايت من مستند:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "signature-value.h" >}}

## إزالة التوقيعات الرقمية

Aspose.Words يسمح لك بإزالة جميع التوقيعات الرقمية من مستند موقع باستخدام طريقة [RemoveAllSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/).

يوضح مثال التعليمات البرمجية التالية كيفية تحميل وإزالة التوقيعات الرقمية من مستند:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "remove-signatures.h" >}}

{{% alert color="primary" %}}

لاحظ أنه لا يمكنك إزالة توقيع رقمي واحد فقط داخل المستند.

{{% /alert %}}
