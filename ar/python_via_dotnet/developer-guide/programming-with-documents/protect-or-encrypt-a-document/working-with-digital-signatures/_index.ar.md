---
title: العمل مع التوقيعات الرقمية
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع التوقيعات الرقمية
linktitle: العمل مع التوقيعات الرقمية
description: "قم بتوقيع المستندات رقميًا واكتشف التوقيعات الرقمية الموجودة وعدها والتحقق منها وإزالتها باستخدام Python."
type: docs
weight: 40
url: /ar/python-net/working-with-digital-signatures/
---

يتم استخدام التوقيع الرقمي لمصادقة المستند لإثبات أن مرسل المستند هو من يقولون أنه لم يتم التلاعب بمحتوى المستند.

يدعم Aspose.Words المستندات ذات التوقيعات الرقمية ويوفر الوصول إليها مما يسمح لك باكتشاف التوقيعات الرقمية على المستند والتحقق من صحتها وتوقيع مستند PDF تم إنشاؤه باستخدام الشهادة المرفقة. في الوقت الحالي، يتم دعم التوقيعات الرقمية على مستندات DOC وOOXML وODT. يتم دعم توقيع المستندات التي تم إنشاؤها بتنسيق PDF.

{{% alert color="primary" %}}

**حاول عبر الإنترنت**

يمكنك تجربة هذه الوظيفة مع [توقيع مجاني على الانترنت](https://products.aspose.app/words/signature) الخاص بنا.

{{% /alert %}}

## لا يتم الاحتفاظ بالتوقيعات الرقمية عند الفتح والحفظ

هناك نقطة مهمة يجب ملاحظتها وهي أن المستند الذي تم تحميله ثم حفظه باستخدام Aspose.Words سيفقد أي توقيعات رقمية موقعة على المستند. يتم ذلك حسب التصميم حيث يضمن التوقيع الرقمي عدم تعديل المحتوى ويصادق أيضًا على هوية الشخص الذي قام بالتوقيع على المستند. سيتم إبطال هذه المبادئ إذا تم نقل التوقيعات الأصلية إلى الوثيقة الناتجة.

ونتيجة لذلك، إذا قمت بمعالجة المستندات التي تم تحميلها إلى الخادم، فقد يعني ذلك أنك قد تتلف مستندًا تم تحميله إلى الخادم الخاص بك بهذه الطريقة دون علمك. ولذلك فمن الأفضل التحقق من التوقيعات الرقمية على المستند واتخاذ الإجراء المناسب إذا تم العثور على أي منها، على سبيل المثال يمكن إرسال تنبيه إلى العميل لإعلامه بأن المستند الذي يقوم بتمريره يحتوي على توقيعات رقمية ستفقد إذا تم ذلك. معالجتها. يمكنك تنزيل ملف القالب لهذا المثال من [هنا](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-DetectDocumentSignatures.py" >}}

يستخدم الكود أعلاه طريقة [FileFormatUtil.detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) لاكتشاف ما إذا كان المستند يحتوي على توقيعات رقمية دون تحميل المستند أولاً. وهذا يوفر طريقة فعالة وآمنة للتحقق من التوقيعات في المستند قبل معالجتها. عند التنفيذ، تقوم الطريقة بإرجاع كائن [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) الذي يوفر الخاصية [FileFormatInfo.has_digital_signature](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_digital_signature/). تقوم هذه الخاصية بإرجاع true إذا كانت الوثيقة تحتوي على توقيع رقمي واحد أو أكثر. من المهم ملاحظة أن هذه الطريقة لا تتحقق من صحة التوقيعات، بل تحدد فقط ما إذا كانت التوقيعات موجودة أم لا. تتم تغطية التحقق من صحة التوقيعات الرقمية في القسم التالي.

{{% alert color="primary" %}}

يمكنك أيضًا التحقق مما إذا كان المستند يحتوي على توقيعات رقمية بعد التحميل عن طريق التحقق من خاصية `Count` لمجموعة [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/).

{{% /alert %}}

## التوقيعات الرقمية على وحدات الماكرو (مشاريع VBA)

لا يمكن الوصول إلى التوقيعات الرقمية على وحدات الماكرو أو توقيعها. وذلك لأن Aspose.Words لا يتعامل مباشرة مع وحدات الماكرو في المستند. ومع ذلك، يتم الاحتفاظ بالتوقيعات الرقمية على وحدات الماكرو عند تصدير المستند مرة أخرى إلى أي تنسيق Word. يمكن الاحتفاظ بهذه التوقيعات على كود VBA لأن المحتوى الثنائي لوحدات الماكرو لا يتغير حتى إذا تم تعديل المستند نفسه.

### الوصول والتحقق من التوقيعات الرقمية

يمكن أن تحتوي الوثيقة على توقيعات رقمية متعددة. يمكن الوصول إلى هذه التوقيعات من خلال مجموعة [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/). كل كائن تم إرجاعه هو [DigitalSignature](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/) الذي يمثل توقيعًا رقميًا واحدًا ينتمي إلى المستند. يوفر هذا للأعضاء ما يسمح لك بالتحقق من صحة التوقيع.

الخاصية الأكثر أهمية للتحقق من التوقيعات الرقمية هي صحة كل توقيع في الوثيقة. يمكن التحقق من صحة جميع التوقيعات الموجودة في المستند مرة واحدة عن طريق استدعاء خاصية [DigitalSignatureCollection.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignaturecollection/is_valid/). سيؤدي هذا إلى إرجاع true إذا كانت جميع التوقيعات الموجودة في المستند صالحة أو إذا كان المستند لا يحتوي على توقيعات وfalse إذا كان توقيع رقمي واحد على الأقل غير صالح.

يمكن أيضًا التحقق من صحة كل توقيع بشكل فردي عن طريق الاتصال بـ [DigitalSignature.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/is_valid/). يمكن أن يعود التوقيع غير صالح لعدة أسباب، على سبيل المثال، تم تغيير المستند منذ التوقيع أو انتهاء صلاحية الشهادة. بالإضافة إلى ذلك يمكن أيضًا الوصول إلى تفاصيل إضافية للتوقيع. يوضح نموذج التعليمات البرمجية أدناه كيفية التحقق من صحة كل توقيع في مستند وعرض المعلومات الأساسية حول التوقيع. يمكنك تنزيل ملف القالب لهذا المثال من [هنا](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-AccessAndVerifySignature.py" >}}

## التوقيع على مستندات Word

توفر فئة [DigitalSignatureUtil](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/) طرقًا لتوقيع المستند. تقوم طريقة [DigitalSignatureUtil.sign](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/sign/) بتوقيع المستند المصدر باستخدام [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) المحدد مع التوقيع الرقمي وتكتب المستند الموقع إلى التدفق الوجهة

يوضح المثال أدناه كيفية التوقيع على وثيقة بسيطة

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SingDocument.py" >}}

يوضح المثال أدناه كيفية توقيع مستند مشفر

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningEncryptedDocument.py" >}}

### توقيع مستند Word بخط التوقيع

يمكنك توقيع المستند المصدر باستخدام [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) و[SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) مع التوقيع الرقمي وكتابة المستند الموقع إلى الملف الوجهة. باستخدام فئة [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) يمكنك تحديد خيارات لتوقيع المستندات. يوضح المثال أدناه كيفية إنشاء سطر توقيع جديد وتوقيع المستند

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreatingAndSigningNewSignatureLine.py" >}}

يوضح المثال أدناه كيفية تعديل سطر التوقيع الحالي وتوقيع المستند

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningExistingSignatureLine.py" >}}

### توقيع مستند Word باستخدام معرف موفر التوقيع

يوضح المثال أدناه كيفية توقيع مستند Word باستخدام معرف موفر التوقيع. يعد موفر خدمة التشفير (CSP) وحدة برمجية مستقلة تقوم بالفعل بتنفيذ خوارزميات التشفير للمصادقة والتشفير والتشفير. يحتفظ MS Office بالقيمة {00000000-0000-0000-0000-000000000000} لموفر التوقيع الافتراضي الخاص به.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SetSignatureProviderID.py" >}}

### قم بإنشاء مستند Word لتوقيع سطر التوقيع الجديد باستخدام معرف الموفر

يوضح المثال أدناه كيفية إنشاء سطر التوقيع وتوقيع مستند Word باستخدام معرف موفر التوقيع.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreateNewSignatureLineAndSetProviderID.py" >}}

## استرداد قيمة التوقيع الرقمي

يوفر Aspose.Words أيضًا القدرة على استرداد قيمة التوقيع الرقمي من مستند موقع رقميًا كمصفوفة بايت باستخدام خاصية [SignatureValue](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/).

يوضح مثال التعليمات البرمجية التالي كيفية الحصول على قيمة التوقيع الرقمي كمصفوفة بايت من مستند:

{{< highlight csharp >}}
doc = aw.Document(MY_DIR + "Digitally signed.docx")

for digital_signature in doc.digital_signatures:
    signature_value = base64.b64encode(digital_signature.signature_value)
    print(f"Base64 signature value is: {signature_value}")
{{< /highlight >}}