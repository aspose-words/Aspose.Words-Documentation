---
title: العمل مع التوقيعات الرقمية في C#
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع التوقيعات الرقمية
linktitle: العمل مع التوقيعات الرقمية
description: "قم بتوقيع المستندات رقميًا واكتشف التوقيعات الرقمية الموجودة وعدها والتحقق منها وإزالتها باستخدام C#."
type: docs
weight: 40
url: /ar/net/working-with-digital-signatures/
---

التوقيع الرقمي هو تطبيق تكنولوجي للتوقيعات الإلكترونية لتوقيع المستندات والمصادقة على الموقع لضمان عدم تعديل المستند منذ التوقيع عليه. كل توقيع رقمي فريد لكل موقّع بسبب اتباع بروتوكول PKI لإنشاء المفاتيح العامة والخاصة. يعني توقيع مستند رقميًا إنشاء توقيع باستخدام المفتاح الخاص للموقع حيث يتم استخدام خوارزمية رياضية لتشفير التجزئة التي تم إنشاؤها.

يسمح لك Aspose.Words باكتشاف التوقيعات الرقمية الموجودة أو إحصائها أو التحقق منها، وكذلك إضافة توقيع جديد إلى مستندك لاكتشاف أي تلاعب فيه. يمكنك أيضًا إزالة جميع التوقيعات الرقمية من المستند. استخدم فئة [DigitalSignatureUtil](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/) للعمل مع التوقيعات الرقمية.

تشرح هذه المقالة كيفية القيام بكل ما سبق للتحقق من صحة وسلامة المستند الرقمي.

{{% alert color="primary" %}}

لاحظ أنه لا يمكنك الوصول إلى التوقيعات الرقمية لمستندك إلا عند تشغيل الإصدار .NET Framework 2.0 والإصدارات الأحدث.

{{% /alert %}}

{{% alert color="primary" %}}

**حاول عبر الإنترنت**

يمكنك تجربة هذه الوظيفة مع [توقيع مجاني على الانترنت](https://products.aspose.app/words/signature) الخاص بنا.

{{% /alert %}}

## التنسيقات المدعومة

يتيح لك Aspose.Words العمل مع التوقيعات الرقمية على مستندات DOC وOOXML وODT وتوقيع المستند الذي تم إنشاؤه بتنسيق PDF أو XPS.

## حدود التوقيعات الرقمية

يصف الجدول أدناه بعض القيود التي قد تواجهها أثناء العمل مع التوقيعات الرقمية من خلال Aspose.Words، بالإضافة إلى بعض الخيارات البديلة.

|  القيد |  الخيار البديل |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  فقدان التوقيعات الرقمية على المستند بعد تحميله وحفظه. لذلك، قد تؤدي معالجة المستند إلى الخادم إلى فقدان جميع التوقيعات الرقمية دون إشعار |  تحقق مما إذا كان المستند يحتوي على توقيعات رقمية واتخذ الإجراء المناسب في حالة العثور على أي منها. على سبيل المثال، قم بإرسال تنبيه إلى العملاء لإعلامهم بأن المستند الذي يقومون بتحميله يحتوي على توقيعات رقمية ستفقد إذا تمت معالجتها |
|  يدعم Aspose.Words العمل مع وحدات الماكرو في المستند. لكن Aspose.Words لا يدعم حتى الآن التوقيعات الرقمية على وحدات الماكرو |  قم بتصدير المستند مرة أخرى إلى أي تنسيق Word، واستخدم Microsoft Word لإضافة توقيع رقمي إلى وحدات الماكرو |

## كشف التوقيعات الرقمية وإحصائها والتحقق منها

يتيح لك Aspose.Words اكتشاف التوقيع الرقمي في المستند باستخدام طريقة [DetectFileFormat](https://reference.aspose.com/words/net/aspose.words/fileformatutil/detectfileformat/#detectfileformat/) وخاصية [HasDigitalSignature](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasdigitalsignature/). ومن الجدير بالذكر أن مثل هذا الفحص لن يكشف إلا عن حقيقة التوقيع، وليس عن صحته.

يمكن توقيع المستند أكثر من مرة، ويمكن أن يتم ذلك بواسطة مستخدمين مختلفين. للتحقق من صحة التوقيعات الرقمية، تحتاج إلى تحميلها من المستند باستخدام طريقة [LoadSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/#loadsignatures/) واستخدام خاصية [IsValid](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/isvalid/). كما يتيح لك Aspose.Words حساب مجموعة من كافة التوقيعات الرقمية داخل المستند باستخدام خاصية [Count](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/count/).

كل هذا يوفر طريقة فعالة وآمنة للتحقق من التوقيعات في المستند قبل معالجته.

يوضح مثال التعليمات البرمجية التالي كيفية اكتشاف وجود التوقيعات الرقمية والتحقق منها:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "detect-document-signatures.cs" >}}

## إنشاء التوقيع الرقمي {#create-a-digital-signature}

لإنشاء توقيع رقمي، سوف تحتاج إلى تحميل شهادة توقيع تؤكد الهوية. عند إرسال مستند موقع رقميًا، فإنك ترسل أيضًا شهادتك ومفتاحك العام.

يسمح لك Aspose.Words بإنشاء شهادة X.509، وهي شهادة رقمية تستخدم معيار X.509 PKI المقبول دوليًا للتحقق من أن المفتاح العام ينتمي إلى المُوقِّع المُدرج داخل الشهادة. للقيام بذلك، استخدم أسلوب [Create](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/create/) ضمن فئة [CertificateHolder](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/).

تشرح الأقسام التالية كيفية إضافة توقيع رقمي وسطر توقيع وكيفية توقيع مستند PDF تم إنشاؤه.

### التوقيع على وثيقة

يتيح لك Aspose.Words التوقيع على مستند DOC أو DOCX أو XPS أو ODT رقميًا باستخدام طريقة [Sign](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/sign/#sign/) وخصائص [SignOptions](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/).

يوضح مثال التعليمات البرمجية التالي كيفية توقيع المستندات باستخدام حامل الشهادة وخيارات التوقيع:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "sign-document.cs" >}}

### أضف خط التوقيع

سطر التوقيع هو تمثيل مرئي للتوقيع الرقمي في المستند. يتيح لك Aspose.Words إدراج سطر التوقيع باستخدام طريقة [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertsignatureline/). يمكنك أيضًا تعيين المعلمات لهذا التمثيل باستخدام فئة [SignatureLineOptions](https://reference.aspose.com/words/net/aspose.words/signaturelineoptions/).

على سبيل المثال، الصورة أدناه توضح كيف يمكن عرض التوقيعات الصالحة وغير الصالحة.

<img src="/words/net/working-with-digital-signatures/valid.png" alt="رسم" style="width:300px"/>

<img src="/words/net/working-with-digital-signatures/invalid.png" alt="رسم" style="width:300px"/>

وأيضًا، إذا كان المستند يحتوي على سطر توقيع ولا يحتوي على توقيع رقمي، فهناك ميزة تطلب من المستخدم إضافة توقيع.

يوضح مثال التعليمات البرمجية التالي كيفية توقيع مستند باستخدام شهادة شخصية وسطر توقيع محدد:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "create-new-signature-line-and-set-provider-id.cs" >}}

### قم بالتوقيع على وثيقة PDF التي تم إنشاؤها {#sign-a-generated-pdf-document}

يتيح لك Aspose.Words التوقيع والحصول على جميع تفاصيل مستند PDF باستخدام خصائص [PdfDigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfdigitalsignaturedetails/).

يوضح مثال التعليمات البرمجية التالي كيفية التوقيع على ملف PDF تم إنشاؤه:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "digitally-signed-pdf-using-certificate-holder.cs" >}}

## استرداد قيمة التوقيع الرقمي

يوفر Aspose.Words أيضًا القدرة على استرداد قيمة التوقيع الرقمي من مستند موقع رقميًا كمصفوفة بايت باستخدام خاصية [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/).

يوضح مثال التعليمات البرمجية التالي كيفية الحصول على قيمة التوقيع الرقمي كمصفوفة بايت من مستند:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "signature-value.cs" >}}

## إزالة التوقيعات الرقمية

يتيح لك Aspose.Words إزالة جميع التوقيعات الرقمية من مستند موقع باستخدام طريقة [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/#removeallsignatures/).

يوضح مثال التعليمات البرمجية التالي كيفية تحميل التوقيعات الرقمية وإزالتها من المستند:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "remove-signatures.cs" >}}

{{% alert color="primary" %}}

لاحظ أنه لا يمكنك إزالة توقيع رقمي واحد فقط من وثيقتك.

{{% /alert %}}
