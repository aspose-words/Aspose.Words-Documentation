---
title: تحديث الحقول Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: تحديث الحقول
linktitle: تحديث الحقول
description: "قم بتحديث الحقول في مستند بطرق مختلفة وباستخدام خيار مختلف في Python."
type: docs
weight: 30
url: /ar/python-net/update-fields/
timestamp: 2024-01-27-14-07-04
---

عادةً، يحتوي الحقل المدرج في Microsoft Word بالفعل على قيمة محدثة. على سبيل المثال، إذا كان الحقل عبارة عن صيغة أو رقم صفحة، فسوف يحتوي على القيمة المحسوبة الصحيحة للإصدار المحدد من المستند. ولكن إذا كان لديك تطبيق يقوم بإنشاء أو تعديل مستند يحتوي على حقول مثل دمج مستندين أو ملؤه بالبيانات، فمن الأفضل أن يتم تحديث جميع الحقول حتى يكون المستند مفيدًا.

## كيفية تحديث الحقول

عندما يتم تحميل مستند، يحاكي Aspose.Words سلوك Microsoft Word مع إيقاف تشغيل خيار تحديث الحقول تلقائيًا. ويمكن تلخيص السلوك على النحو التالي:

- عند فتح/حفظ مستند تظل الحقول سليمة
- يمكنك تحديث كافة الحقول في المستند بشكل صريح (على سبيل المثال، إعادة إنشاء جدول المحتويات) عندما تحتاج إلى ذلك
- عند الطباعة/العرض إلى PDF أو XPS، يتم تحديث الحقول المتعلقة بترقيم الصفحات في الرؤوس/التذييلات
- عند تنفيذ mail merge، يتم تحديث جميع الحقول تلقائيًا

### تحديث الحقول برمجيا

لتحديث الحقول بشكل صريح في المستند بأكمله، ما عليك سوى الاتصال بـ [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/). لتحديث الحقول الموجودة في جزء من المستند، احصل على كائن [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) واستدعاء أسلوب [update_fields](https://reference.aspose.com/words/python-net/aspose.words/range/update_fields/). في Aspose.Words، يمكنك الحصول على **Range** لأي عقدة في شجرة المستندات، مثل [Section](https://reference.aspose.com/words/python-net/aspose.words/section/)، و[HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)، و[Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)، وما إلى ذلك باستخدام خاصية [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/). يمكنك تحديث نتيجة حقل واحد عن طريق الاتصال بالطريقة [update](https://reference.aspose.com/words/python-net/aspose.words.fields/field/update/).

### التحديث التلقائي للحقول ذات الصلة بالصفحة أثناء العرض

عند تنفيذ تحويل مستند إلى تنسيق صفحة ثابتة، على سبيل المثال، إلى PDF أو XPS، سيقوم Aspose.Words تلقائيًا بتحديث الحقول المرتبطة بتخطيط الصفحة `PAGE` و`PAGEREF` الموجودة في رؤوس/تذييلات المستند. يحاكي هذا السلوك سلوك Microsoft Word عند طباعة مستند.

إذا كنت تريد تحديث كافة الحقول الأخرى في المستند، فأنت بحاجة إلى الاتصال بـ [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) قبل عرض المستند.

يوضح مثال التعليمات البرمجية التالي كيفية تحديث جميع الحقول قبل عرض المستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-UpdateDocFields.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### التحديث الميداني التلقائي أثناء Mail Merge

عند تنفيذ mail merge، سيتم تحديث جميع الحقول في المستند تلقائيًا. وذلك لأن mail merge هو حالة تحديث ميداني. يواجه البرنامج حقل mail merge ويحتاج إلى تحديث نتيجته، والتي تتضمن الحصول على القيمة من مصدر البيانات وإدراجها في الحقل. المنطق بالطبع أكثر تعقيدًا، على سبيل المثال، عند الوصول إلى نهاية منطقة المستند/mail merge ولكن لا يزال هناك المزيد من البيانات التي يتعين دمجها، فيجب تكرار المنطقة وتحديث المجموعة الجديدة من الحقول.

## تحديث الحقول ذات السمات القذرة

w:dirty هي سمة على مستوى الحقل ستقوم فقط بتحديث الحقل الذي تحدده عند فتح المستند. يخبر MS Word بتحديث هذا الحقل فقط في المرة التالية التي يتم فيها فتح المستند. يمكنك استخدام خاصية [update_dirty_fields](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/update_dirty_fields/) لتحديد ما إذا كان سيتم تحديث الحقول بالسمة القذرة. عند تعيين قيمة **update_dirty_fields** على `True`، يتم تحديث جميع الحقول التي لها قيمة `True` لخاصية [Field.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/field/is_dirty/) أو [FieldChar.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/is_dirty/) عند تحميل المستند.

يوضح مثال التعليمات البرمجية التالي كيفية تحديث الحقول التي تحتوي على السمة القذرة:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UpdateDirtyFields.py" >}}

## قم بتحديث خاصية LastSavedTime قبل الحفظ

يمكنك استخدام خاصية [SaveOptions.update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) سواء لتحديث خاصية المستند المضمنة المقابلة [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) عند حفظ المستند.

يوضح مثال التعليمات البرمجية التالي كيفية تحديث هذه الخاصية:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

