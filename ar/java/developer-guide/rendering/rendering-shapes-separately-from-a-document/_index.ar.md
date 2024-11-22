---
title: الثرثرة منفصلة عن الوثيقة
second_title: Aspose.Words for Java
articleTitle: الثرثرة منفصلة عن الوثيقة
linktitle: الثرثرة منفصلة عن الوثيقة
description: "Extract various graphic objects, such as images, text box containing paragraphs, or arrow shapes, when processing a document, and export them to an external location using Java."
type: docs
weight: 40
url: /ar/java/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

وعند تجهيز الوثائق، تتمثل مهمة مشتركة في استخلاص جميع الصور الموجودة في الوثيقة وتصديرها إلى موقع خارجي. تصبح هذه المهمة بسيطة مع Aspose.Words API, التي توفر بالفعل القدرة على استخلاص بيانات الصور وحفظها. غير أنكم قد ترغبون أحياناً في أن تستخرجوا على نحو مماثل أنواعاً أخرى من المحتوى البياني التي تمثلها أنواع مختلفة من جسم الرسم، على سبيل المثال، صندوقاً نصياً يحتوي على فقرات وشكل سهم وصورة صغيرة. ولا توجد طريقة واضحة لجعل هذا الجسم لأنه مزيج من عناصر المحتوى الفردية. قد تواجهون أيضاً قضية عندما يتم تجميع المحتويات معاً في الجسم الذي يبدو كصورة واحدة

Aspose.Words يوفر القدرة على استخراج هذا النوع من المحتوى بنفس الطريقة التي يمكنك الحصول على صورة بسيطة من الشكل كما هو مضمون. وتصف هذه المادة كيفية استخدام هذه الوظيفة لجعل الأشكال مستقلة عن الوثيقة.

## الأشكال في Aspose.Words

جميع المحتويات في طبقة رسم الوثائق تمثلها [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) أو [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) العقد في Aspose.Words وحدة اعتراض الوثائقDOM) ويمكن أن تكون هذه المحتويات صناديق نصية، وصور، وأوتوشاب، وأجسام OLE، وما إلى ذلك. وتستورد بعض الحقول أيضا كشكل، على سبيل المثال، `INCLUDEPICTURE` الحقل

A simple image is represented by a **Shape** Node of [ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE). هذا النموذج لا يوجد به ندوب أطفال لكن بيانات الصور الواردة في هذا النموذج يمكن الحصول عليها [Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) ملكية ومن جهة أخرى، يمكن أيضاً تكوين شكل من أشكال العديد من الأطفال. For instance, a text box shape, which is represented by the [ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX) يمكن أن تتألف الممتلكات من العديد من المعالم، مثل [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) و [Table](https://reference.aspose.com/words/java/com.aspose.words/table/). معظم الأشكال يمكن أن تشمل **Paragraph** و **Table** عقدة على مستوى الكتل. هذه هي نفس العقدة التي تظهر في الجسم الرئيسي. الشباك هي دائما أجزاء من بعض الفقرة، إما أن تكون مشمولة مباشرة أو مرسوسة إلى **الفقرة،** ولكن " تميل " في أي مكان في صفحة الوثيقة.

![rendering-shapes-separately-from-a-document-aspose-words-java-1](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

ويمكن أن تتضمن الوثيقة أيضا أشكالا تجمع معا. Groupيُمْكِنُ أَنْ يُمكّنَ في Microsoft Word باختيار أجسام متعددة والنقر " .Group" في القائمة الصحيحة.

![rendering-shapes-separately-from-a-document-aspose-words-java-2](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

In Aspose.Words, هذه المجموعات من الأشكال ممثلة من قبل [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) موكب ويمكن أيضا التذرع بها بنفس الطريقة لجعل المجموعة بأكملها على الصورة.

![rendering-shapes-separately-from-a-document-aspose-words-java-3](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

ويمكن أن يتضمن نموذج " DOCX " أنواعاً خاصة من الصور، مثل الرسوم البيانية أو الخرائط. وهذه الأشكال ممثلة أيضا من خلال **Shape** عقيدة Aspose.Words, التي توفر أيضا طريقة مماثلة لجعلها صورا. ومن خلال التصميم، لا يمكن للشكل أن يحتوي على شكل آخر كطفل، ما لم يكن هذا الشكل صورة ().**ShapeType.Image**) على سبيل المثال، Microsoft Word لا يسمح لك بإدخال صندوق نص داخل صندوق نص آخر

وتوفر أنواع الشكل المذكورة أعلاه طريقة خاصة لجعل الأشكال من خلال [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) الصف حالة **ShapeRenderer** تم إسترجاع الصف **Shape** أو **GroupShape** من خلال **GetShapeRenderer** طريقة أو بتجاوز **Shape** إلى مبني **ShapeRenderer** صف وتتيح هذه الفئة إمكانية الوصول إلى الأعضاء، مما يسمح بتشكيل ما يلي:

-أطير على القرص باستخدام [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) الإفراط في الحمولة
-تدريم باستخدام [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions) الإفراط في الحمولة
- الخرافية اعتراض باستخدام [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float) و [RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) الأساليب

{{% alert color="primary" %}}

عندما يصدر **Shape**" ويجب أن يكون جزءا من الهيكل الهرمي للوثائق. إذا **Shape** ليس جزءاً من شجره الوثائق حينها سيكون الناتج فارغاً **ShapeRenderer** طرق

{{% /alert %}}

## إلى (فايل أو سترايم)

The [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) الطريقة توفر تحميلات زائدة تجعل الشكل مباشرة إلى ملف أو مجرى. كلا الحمولة الزائدة تقبل حالة [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) الطبقة التي تسمح بتحديد خيارات لجعل الشكل هذا يعمل بنفس الطريقة التي يعمل بها [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) طريقة على الرغم من أن هذا البارامترات مطلوبة، يمكنك أن تمر بقيمة باطلة، تحدد أنه لا توجد خيارات عرفية.

The shape can be exported in any image format specified in the [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) العد For example, the image can be rendered as a raster image, such as JPEG by specifying the [SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG) تعداد، أو كصورة ناقلات، مثل EMF بتحديد [SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF).

ويوضح المثال الرمزي الوارد أدناه وضع شكل لصورة EMF بمعزل عن الوثيقة، والادخار إلى القرص:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

The code example below illustrates rendering a shape to a JPEG image separately from document, andving to a stream:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

The **ImageSaveOptions** الفصل يسمح لك بتحديد مجموعة متنوعة من الخيارات التي تتحكم في كيفية إصدار الصورة ويمكن تطبيق الوظيفة المبينة أعلاه بنفس الطريقة على **GroupShape** و **Shape** المشنقة

## ينتقل إلى `Graphics` اعتراض

مباشرة إلى **Graphics** الجسم يسمح لك بتحديد أماكنك الخاصة والولاية **Graphics** هدف السيناريو المشترك ينطوي على جعل الشكل مباشرة في **Graphics** الجسم المسترجع من Windows الاستمارة أو المزمار عندما **Shape** تم تقديم العقد، ستؤثر الظروف على الشكل على سبيل المثال، يمكنك التناوب أو مقياس الشكل باستخدام **RotateTransform** أو **ScaleTransform** أساليب **Graphics** هدف

ويبيّن المثال الوارد أدناه كيفية وضع شكل ما **Graphics** الجسم منفصل عن الوثيقة ويطبق التناوب على الصورة المقدمة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

بالمثل، إلى [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float) الطريقة، [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)الطريقة الموروثة من [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) ومن المفيد إيجاد إبهام لمحتوى الوثائق. يحدد حجم الشكل من خلال البناء. The **RenderToSize** الطريقة التي تقبل **Graphics** الجسم، الإكس و Y الإحداثيات من موقع الصورة، وحجم الصورة (الصفوف والطول) التي سترسم على **Graphics** هدف

The **Shape** يمكن أن يوضع على نطاق معين باستخدام [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) الطريقة الموروثة من [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) الصف هذا يشبه [Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) الطريقة التي تقبل نفس المعايير الرئيسية. الفرق بين هذين الأسلوبين هو **ShapeRenderer.RenderToScale** طريقة، بدلاً من حجم حرفي، تختار قيمة عائمة تُقَيّمُ الشكلَ خلال إصداره. وإذا كانت القيمة العائمة تساوي 1.0 تسبب في أن يصبح الشكل 100 في المائة من حجمه الأصلي. ومن شأن القيمة العائمة البالغة 0.5 أن تقلل من حجم الصورة بمقدار النصف.

## يَرْفعُ a ضربة عارية

The [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) وتمثّل الفئة أشياءاً في طبقة الرسم، مثل الأوتوماتشاب، أو صندوق النص، أو نظام أحراري، أو الجسم OLE، أو السيطرة على النفاثة، أو صورة. استخدام **Shape** الطبقة، يمكنك خلق أو تعديل الأشكال في Microsoft Word الوثيقة. الملكية الهامة للشكل هي [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). ويمكن أن تكون لتقاسم أنواع مختلفة قدرات مختلفة في وثيقة كلمة. فعلى سبيل المثال، لا يمكن إلا للصور والأشكال العائمة أن تكون لها صور داخلها في حين أن معظم الأشكال يمكن أن يكون لها نص فقط.

The following example shows how to render a Shape image to a JPEG image separately from the document and save it to the disk:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## إسترجاع حجم الظل

The [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) كما توفر الفئة وظيفة لاستعادة حجم الشكل في البكسل من خلال [GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) طريقة وتقبل هذه الطريقة بارامترين عائمين - الجدول وإدارة شؤون الإعلام، يستخدمان في حساب حجم الشكل عندما يصبح الشكل. الطريقة تعود [Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) الجسم الذي يحتوي على عرض وطول الحجم المحسوب وهذا أمر مفيد عندما يُطلب منه أن يعرف حجم الشكل المقدم مقدماً، مثلاً عندما يُنشئ خريطة جديدة من الناتج المقدم.

ويبيّن المثال الوارد أدناه كيفية إنشاء جسم جديد من نوع " بيتماب " و " غرافيز "، مع عرض وطول الشكل الذي يتعين تقديمه:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

عند استخدام **RenderToSize** أو **RenderToScale** والأساليب، يعاد أيضا حجم الصورة المصنوعة في [SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float) هدف ويمكن تخصيص ذلك لمتغير واستخدامه عند الضرورة.

The **SizeInPoints** إعادة الممتلكات إلى حجم الشايب المقيس في النقاط (انظر: [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)) النتيجة هي `SizeF` جسم يحتوي على البارود والطول
