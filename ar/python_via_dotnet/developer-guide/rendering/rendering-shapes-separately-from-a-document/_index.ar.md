---
title: الأشكال بشكل منفصل عن المستند
second_title: Aspose.Words لـ Python via .NET
articleTitle: عرض الأشكال بشكل منفصل عن المستند
linktitle: عرض الأشكال بشكل منفصل عن المستند
description: "قم باستخراج كائنات رسومية متنوعة، مثل الصور أو مربع النص الذي يحتوي على فقرات أو أشكال الأسهم، عند معالجة مستند، وتصديرها إلى موقع خارجي باستخدام Python."
type: docs
weight: 40
url: /ar/python-net/rendering-shapes-separately-from-a-document/
---

عند معالجة المستندات، تتمثل المهمة الشائعة في استخراج جميع الصور الموجودة في المستند وتصديرها إلى موقع خارجي. تصبح هذه المهمة بسيطة مع Aspose.Words API، الذي يوفر بالفعل وظيفة استخراج بيانات الصورة وحفظها. ومع ذلك، في بعض الأحيان قد ترغب في استخراج أنواع أخرى من المحتوى الرسومي الذي يتم تمثيله بواسطة نوع مختلف من الكائنات الرسومية، على سبيل المثال، مربع نص يحتوي على فقرات وأشكال أسهم وصورة صغيرة. لا توجد طريقة مباشرة لعرض هذا الكائن لأنه عبارة عن مجموعة من عناصر المحتوى الفردية. قد تواجه أيضًا حالة تم فيها تجميع المحتويات معًا في كائن يشبه صورة واحدة.

يوفر Aspose.Words وظيفة لاستخراج هذا النوع من المحتوى بنفس الطريقة التي يمكنك بها استخراج صورة بسيطة من شكل كمحتوى معروض. توضح هذه المقالة كيفية استخدام هذه الوظيفة لعرض الأشكال بشكل مستقل عن المستند.

## أنواع الأشكال في Aspose.Words

يتم تمثيل كل المحتوى الموجود في طبقة رسم المستند بواسطة عقدة [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) أو [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) في وحدة كائن مستند Aspose.Words (DOM). يمكن أن تكون هذه المحتويات عبارة عن مربعات نص، أو صور، أو أشكال تلقائية، أو كائنات OLE، وما إلى ذلك. ويتم أيضًا استيراد بعض الحقول كأشكال، على سبيل المثال، حقل `INCLUDEPICTURE`.

يتم تمثيل صورة بسيطة بواسطة عقدة [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) الخاصة بـ [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#image). لا تحتوي عقدة الشكل هذه على عقد فرعية ولكن يمكن الوصول إلى بيانات الصورة الموجودة داخل عقدة الشكل هذه بواسطة خاصية [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/). من ناحية أخرى، يمكن أيضًا أن يتكون الشكل من العديد من العقد الفرعية. على سبيل المثال، يمكن أن يتكون شكل مربع النص، الذي يتم تمثيله بواسطة خاصية [ShapeType.TEXT_BOX](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#text_box)، من العديد من العقد، مثل [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) و[Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). يمكن أن تتضمن معظم الأشكال العقد على مستوى الكتلة [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) و[Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). هذه هي نفس العقد التي تظهر في الجسم الرئيسي. تكون الأشكال دائمًا أجزاء من بعض الفقرات، إما مضمنة مباشرة في السطر أو مثبتة في [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)، ولكنها "عائمة" في أي مكان في صفحة المستند.

![rendering-shapes-separately-from-a-document_1](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

يمكن أن يحتوي المستند أيضًا على أشكال مجمعة معًا. يمكن تمكين Grouping في Microsoft Word عن طريق تحديد كائنات متعددة والنقر فوق "Group" في قائمة النقر بزر الماوس الأيمن.

![rendering-shapes-separately-from-a-document_2](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

في Aspose.Words، يتم تمثيل مجموعات الأشكال هذه بواسطة عقدة [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/). يمكن أيضًا استدعاء هذه العناصر بنفس الطريقة لعرض المجموعة بأكملها على شكل صورة.

![rendering-shapes-separately-from-a-document_3](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

يمكن أن يحتوي تنسيق DOCX على أنواع خاصة من الصور، مثل الرسوم البيانية أو المخططات. ويتم تمثيل هذه الأشكال أيضًا من خلال عقدة [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) في Aspose.Words، والتي توفر أيضًا طريقة مشابهة لعرضها كصور. حسب التصميم، لا يمكن أن يحتوي الشكل على شكل آخر كطفل، إلا إذا كان هذا الشكل عبارة عن صورة ([ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image)). على سبيل المثال، لا يسمح لك Microsoft Word بإدراج مربع نص داخل مربع نص آخر.

توفر أنواع الأشكال الموضحة أعلاه طريقة خاصة لعرض الأشكال من خلال فئة [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/). يتم استرداد مثيل فئة [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) لـ [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) أو [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) من خلال أسلوب [get_shape_renderer](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/get_shape_renderer/) أو عن طريق تمرير [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) إلى مُنشئ فئة [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/). توفر هذه الفئة الوصول إلى الأعضاء، مما يسمح بتقديم شكل لما يلي:

- الملف على القرص
- تدفق

{{% alert color="primary" %}}

عند تقديم [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)، يجب أن يكون جزءًا من التسلسل الهرمي للمستند. إذا لم يكن [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) جزءًا من شجرة المستندات، فستكون المخرجات المعروضة فارغة بعد استدعاء أساليب [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).

{{% /alert %}}

## التقديم إلى ملف أو دفق

توفر طريقة [save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/) حمولات زائدة تعرض الشكل مباشرة إلى ملف أو دفق. يقبل كلا التحميلين الزائدين مثيلًا لفئة [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/)، مما يسمح بتحديد خيارات عرض الشكل. يعمل هذا بنفس طريقة طريقة [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). على الرغم من أن هذه المعلمة مطلوبة، يمكنك تمرير قيمة فارغة، مع تحديد عدم وجود خيارات مخصصة.

يمكن تصدير الشكل بأي تنسيق صورة محدد في تعداد [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/). على سبيل المثال، يمكن عرض الصورة كصورة نقطية، مثل JPEG عن طريق تحديد تعداد [SaveFormat.JPEG](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#jpeg)، أو كصورة متجهة، مثل EMF عن طريق تحديد [SaveFormat.EMF](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#emf).

يوضح مثال التعليمات البرمجية أدناه عرض شكل لصورة EMF بشكل منفصل عن المستند وحفظه على القرص:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the JPEG raster format.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.EMF)
imageOptions.scale = 1.5
        
# Save the rendered image to disk.
r.save(docs_base.artifacts_dir + "TestFile.RenderToDisk_out.emf", imageOptions)
{{< /highlight >}}

يوضح مثال التعليمات البرمجية أدناه عرض شكل إلى صورة JPEG بشكل منفصل عن المستند وحفظه في دفق:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the vector format EMF.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
        
# Output the image in gray scale
imageOptions.image_color_mode = aw.saving.ImageColorMode.GRAYSCALE

# Reduce the brightness a bit (default is 0.5f).
imageOptions.image_brightness = 0.45
        
stream =  io.FileIO(docs_base.artifacts_dir + "TestFile.RenderToStream_out.jpg", "w+b")

# Save the rendered image to the stream using different options.
r.save(stream, imageOptions)

# Close the stream
stream.close()
{{< /highlight >}}

تسمح لك فئة [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) بتحديد مجموعة متنوعة من الخيارات التي تتحكم في كيفية عرض الصورة. يمكن تطبيق الوظيفة الموضحة أعلاه بنفس الطريقة على عقدتي [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) و[Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).

## تقديم صورة الشكل

تمثل فئة [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) الكائنات الموجودة في طبقة الرسم، مثل الشكل التلقائي أو مربع النص أو الشكل الحر أو كائن OLE أو عنصر تحكم ActiveX أو الصورة. باستخدام فئة [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)، يمكنك إنشاء أو تعديل الأشكال في مستند Microsoft Word. الخاصية المهمة للشكل هي [shape_type](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shape_type/) الخاص به. يمكن أن تحتوي الأشكال ذات الأنواع المختلفة على إمكانات مختلفة في مستند Word. على سبيل المثال، يمكن أن تحتوي أشكال الصور وأشكال OLE فقط على صور بداخلها بينما يمكن أن تحتوي معظم الأشكال على نص فقط.

يوضح المثال التالي كيفية عرض صورة الشكل إلى صورة JPEG بشكل منفصل عن المستند وحفظها على القرص:

{{< highlight python >}}
# Save the rendered image to disk.
shape.get_shape_renderer().save(docs_base.artifacts_dir + "TestFile.RenderShapeImage.jpeg", None)
{{< /highlight >}}

## استرداد حجم الشكل

توفر فئة [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) أيضًا وظيفة استرداد حجم الشكل بالبكسل من خلال طريقة [get_size_in_pixels](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/get_size_in_pixels/). تقبل هذه الطريقة معلمتين عائمتين (مفردتين) - المقياس وDPI، اللتين تستخدمان في حساب حجم الشكل عند عرض الشكل. تقوم الطريقة بإرجاع كائن **Size**، الذي يحتوي على عرض وارتفاع الحجم المحسوب. يكون هذا مفيدًا عندما يلزم معرفة حجم الشكل المعروض مسبقًا. تقوم الخاصية [size_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/size_in_points/) بإرجاع حجم الشكل المقاس بالنقاط. والنتيجة هي كائن **SizeF** يحتوي على العرض والارتفاع. كما يمكنك استخدام خاصية [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) للحصول على الحدود الفعلية للشكل.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}


