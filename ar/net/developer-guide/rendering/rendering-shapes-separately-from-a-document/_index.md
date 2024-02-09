---
title: عرض الأشكال بشكل منفصل عن المستند
second_title: Aspose.Words لـ .NET
articleTitle: عرض الأشكال بشكل منفصل عن المستند
linktitle: عرض الأشكال بشكل منفصل عن المستند
description: "قم باستخراج كائنات رسومية متنوعة، مثل الصور أو مربع النص الذي يحتوي على فقرات أو أشكال الأسهم، عند معالجة مستند، وتصديرها إلى موقع خارجي باستخدام C#."
type: docs
weight: 40
url: /ar/net/rendering-shapes-separately-from-a-document/
---

عند معالجة المستندات، تتمثل المهمة الشائعة في استخراج جميع الصور الموجودة في المستند وتصديرها إلى موقع خارجي. تصبح هذه المهمة بسيطة مع Aspose.Words API، الذي يوفر بالفعل وظيفة استخراج بيانات الصورة وحفظها. ومع ذلك، في بعض الأحيان قد ترغب في استخراج أنواع أخرى من المحتوى الرسومي الذي يتم تمثيله بواسطة نوع مختلف من الكائنات الرسومية، على سبيل المثال، مربع نص يحتوي على فقرات وأشكال أسهم وصورة صغيرة. لا توجد طريقة مباشرة لعرض هذا الكائن لأنه عبارة عن مجموعة من عناصر المحتوى الفردية. قد تواجه أيضًا حالة تم فيها تجميع المحتويات معًا في كائن يشبه صورة واحدة.

يوفر Aspose.Words وظيفة لاستخراج هذا النوع من المحتوى بنفس الطريقة التي يمكنك بها استخراج صورة بسيطة من شكل كمحتوى معروض. توضح هذه المقالة كيفية استخدام هذه الوظيفة لعرض الأشكال بشكل مستقل عن المستند.

## أنواع الأشكال في Aspose.Words

يتم تمثيل كل المحتوى الموجود في طبقة رسم المستند بواسطة عقدة [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) أو [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) في وحدة كائن مستند Aspose.Words (DOM). يمكن أن تكون هذه المحتويات عبارة عن مربعات نص، أو صور، أو أشكال تلقائية، أو كائنات OLE، وما إلى ذلك. ويتم أيضًا استيراد بعض الحقول كأشكال، على سبيل المثال، حقل `INCLUDEPICTURE`.

يتم تمثيل صورة بسيطة بواسطة عقدة **Shape** الخاصة بـ [ShapeType.Image](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/). لا تحتوي عقدة الشكل هذه على عقد فرعية ولكن يمكن الوصول إلى بيانات الصورة الموجودة داخل عقدة الشكل هذه بواسطة خاصية [Shape.ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/). من ناحية أخرى، يمكن أيضًا أن يتكون الشكل من العديد من العقد الفرعية. على سبيل المثال، يمكن أن يتكون شكل مربع النص، الذي يتم تمثيله بواسطة خاصية [ShapeType.TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/)، من العديد من العقد، مثل [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) و[Table](https://reference.aspose.com/words/net/aspose.words.tables/table/). يمكن أن تتضمن معظم الأشكال العقد على مستوى الكتلة **Paragraph** و**Table**. هذه هي نفس العقد التي تظهر في الجسم الرئيسي. الأشكال هي دائمًا أجزاء من بعض الفقرات، إما مضمنة مباشرة في السطر أو مثبتة في **فقرة،** ولكنها "عائمة" في أي مكان في صفحة المستند.

![rendering-shapes-separately-from-a-document_1](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

يمكن أن يحتوي المستند أيضًا على أشكال مجمعة معًا. يمكن تمكين Grouping في Microsoft Word عن طريق تحديد كائنات متعددة والنقر فوق "Group" في قائمة النقر بزر الماوس الأيمن.

![rendering-shapes-separately-from-a-document_2](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

في Aspose.Words، يتم تمثيل مجموعات الأشكال هذه بواسطة عقدة [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/). يمكن أيضًا استدعاء هذه العناصر بنفس الطريقة لعرض المجموعة بأكملها على شكل صورة.

![rendering-shapes-separately-from-a-document_3](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

يمكن أن يحتوي تنسيق DOCX على أنواع خاصة من الصور، مثل الرسوم البيانية أو المخططات. ويتم تمثيل هذه الأشكال أيضًا من خلال عقدة **Shape** في Aspose.Words، والتي توفر أيضًا طريقة مشابهة لعرضها كصور. حسب التصميم، لا يمكن أن يحتوي الشكل على شكل آخر كطفل، إلا إذا كان هذا الشكل عبارة عن صورة (**ShapeType.Image**). على سبيل المثال، لا يسمح لك Microsoft Word بإدراج مربع نص داخل مربع نص آخر.

توفر أنواع الأشكال الموضحة أعلاه طريقة خاصة لعرض الأشكال من خلال فئة [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/). يتم استرداد مثيل فئة **ShapeRenderer** لـ **Shape** أو **GroupShape** من خلال أسلوب **GetShapeRenderer** أو عن طريق تمرير **Shape** إلى مُنشئ فئة **ShapeRenderer**. توفر هذه الفئة الوصول إلى الأعضاء، مما يسمح بتقديم شكل لما يلي:

- الملف الموجود على القرص باستخدام طريقة التحميل الزائد [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/)
- الدفق باستخدام طريقة التحميل الزائد [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/)
- كائن رسومي .NET باستخدام طريقتي [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) و[RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/)

{{% alert color="primary" %}}

عند تقديم **Shape**، يجب أن يكون جزءًا من التسلسل الهرمي للمستند. إذا لم يكن **Shape** جزءًا من شجرة المستندات، فستكون المخرجات المعروضة فارغة بعد استدعاء أساليب **ShapeRenderer**.

{{% /alert %}}

## التقديم إلى ملف أو دفق

توفر طريقة [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) حمولات زائدة تعرض الشكل مباشرة إلى ملف أو دفق. يقبل كلا التحميلين الزائدين مثيلًا لفئة [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/)، مما يسمح بتحديد خيارات عرض الشكل. يعمل هذا بنفس طريقة طريقة [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save). على الرغم من أن هذه المعلمة مطلوبة، يمكنك تمرير قيمة فارغة، مع تحديد عدم وجود خيارات مخصصة.

يمكن تصدير الشكل بأي تنسيق صورة محدد في تعداد [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/). على سبيل المثال، يمكن عرض الصورة كصورة نقطية، مثل JPEG عن طريق تحديد تعداد [SaveFormat.Jpeg](https://reference.aspose.com/words/net/aspose.words/saveformat/)، أو كصورة متجهة، مثل EMF عن طريق تحديد [SaveFormat.Emf](https://reference.aspose.com/words/net/aspose.words/saveformat/).

يوضح مثال التعليمات البرمجية أدناه عرض شكل لصورة EMF بشكل منفصل عن المستند وحفظه على القرص:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToDisk.cs" >}}

يوضح مثال التعليمات البرمجية أدناه عرض شكل إلى صورة JPEG بشكل منفصل عن المستند وحفظه في دفق:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToStream.cs" >}}

تسمح لك فئة **ImageSaveOptions** بتحديد مجموعة متنوعة من الخيارات التي تتحكم في كيفية عرض الصورة. يمكن تطبيق الوظيفة الموضحة أعلاه بنفس الطريقة على عقدتي **GroupShape** و**Shape**.

## التقديم إلى كائن رسومي .NET

يتيح لك العرض مباشرة إلى كائن **Graphics** تحديد الإعدادات الخاصة بك وحالة كائن **Graphics**. يتضمن السيناريو الشائع عرض شكل مباشرةً في كائن **Graphics** تم استرداده من نموذج Windows أو صورة نقطية. عندما يتم عرض عقدة **Shape**، ستؤثر الإعدادات على مظهر الشكل. على سبيل المثال، يمكنك تدوير الشكل أو تغيير حجمه باستخدام أساليب **RotateTransform** أو **ScaleTransform** لكائن **Graphics**.

يوضح المثال أدناه كيفية تقديم شكل إلى كائن .**NET Graphics** بشكل منفصل عن المستند وتطبيق التدوير على الصورة المعروضة:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cs" >}}

وبالمثل، بالنسبة إلى طريقة [RenderToSize](https://reference.aspose.com/words/net/aspose.words/document/rendertosize/)، فإن طريقة [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) الموروثة من [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) مفيدة لإنشاء صور مصغرة لمحتوى المستند. يتم تحديد حجم الشكل من خلال المنشئ. تقبل طريقة **RenderToSize** كائن **Graphics**، وإحداثيات X وY لموضع الصورة، وحجم الصورة (العرض والارتفاع) التي سيتم رسمها على كائن **Graphics**.

يمكن عرض **Shape** على نطاق معين باستخدام طريقة [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) الموروثة من فئة [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/). وهذا مشابه لأسلوب [Document.RenderToScale](https://reference.aspose.com/words/net/aspose.words/document/rendertoscale/) الذي يقبل نفس المعلمات الرئيسية. الفرق بين هاتين الطريقتين هو أنه باستخدام طريقة **ShapeRenderer.RenderToScale**، بدلاً من الحجم الحرفي، يمكنك اختيار قيمة عائمة تعمل على قياس الشكل أثناء عرضه. إذا كانت القيمة العائمة تساوي 1.0، فسيتم عرض الشكل بنسبة 100% من حجمه الأصلي. ستؤدي القيمة العائمة البالغة 0.5 إلى تقليل حجم الصورة بمقدار النصف.

## تقديم صورة الشكل

تمثل فئة [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) الكائنات الموجودة في طبقة الرسم، مثل الشكل التلقائي أو مربع النص أو الشكل الحر أو كائن OLE أو عنصر تحكم ActiveX أو الصورة. باستخدام فئة **Shape**، يمكنك إنشاء أو تعديل الأشكال في مستند Microsoft Word. الخاصية المهمة للشكل هي [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shape/base/properties/shapetype). يمكن أن تحتوي الأشكال ذات الأنواع المختلفة على إمكانات مختلفة في مستند Word. على سبيل المثال، يمكن أن تحتوي أشكال الصور وأشكال OLE فقط على صور بداخلها بينما يمكن أن تحتوي معظم الأشكال على نص فقط.

يوضح المثال التالي كيفية عرض صورة الشكل إلى صورة JPEG بشكل منفصل عن المستند وحفظها على القرص:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeImage.cs" >}}

## استرداد حجم الشكل

توفر فئة [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) أيضًا وظيفة استرداد حجم الشكل بالبكسل من خلال طريقة [GetSizeInPixels](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/). تقبل هذه الطريقة معلمتين عائمتين (مفردتين) - المقياس وDPI، اللتين تستخدمان في حساب حجم الشكل عند عرض الشكل. تقوم الطريقة بإرجاع كائن [Size](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/)، الذي يحتوي على عرض وارتفاع الحجم المحسوب. يكون هذا مفيدًا عندما يكون مطلوبًا معرفة حجم الشكل المعروض مسبقًا، على سبيل المثال عند إنشاء صورة نقطية جديدة من المخرجات المعروضة.

يوضح المثال أدناه كيفية إنشاء كائن نقطي ورسومات جديد بعرض وارتفاع الشكل المراد عرضه:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-FindShapeSizes.cs" >}}

عند استخدام أساليب **RenderToSize** أو **RenderToScale**، يتم أيضًا إرجاع حجم الصورة المعروضة في كائن [SizeF](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/). يمكن تعيين هذا لمتغير واستخدامه إذا لزم الأمر.

تقوم الخاصية **SizeInPoints** بإرجاع حجم الشكل المقاس بالنقاط (راجع [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/). والنتيجة هي كائن `SizeF` يحتوي على العرض والارتفاع.
