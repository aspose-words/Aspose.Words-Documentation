---
title: عرض الأشكال بشكل منفصل عن المستند
second_title: Aspose.Words ل Java
articleTitle: عرض الأشكال بشكل منفصل عن المستند
linktitle: عرض الأشكال بشكل منفصل عن المستند
description: "استخراج كائنات رسومية مختلفة، مثل الصور أو مربع النص الذي يحتوي على فقرات أو أشكال الأسهم، عند معالجة مستند، وتصديرها إلى موقع خارجي باستخدام Java."
type: docs
weight: 40
url: /ar/java/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

عند معالجة المستندات، تتمثل المهمة الشائعة في استخراج جميع الصور الموجودة في المستند وتصديرها إلى موقع خارجي. تصبح هذه المهمة بسيطة مع Aspose.Words API، والتي توفر بالفعل وظيفة لاستخراج وحفظ بيانات الصورة. ومع ذلك، قد ترغب في بعض الأحيان في استخراج أنواع أخرى من المحتوى الرسومي التي يتم تمثيلها بنوع مختلف من كائن الرسم، على سبيل المثال، مربع نص يحتوي على فقرات وأشكال أسهم وصورة صغيرة. لا توجد طريقة مباشرة لعرض هذا الكائن لأنه مزيج من عناصر المحتوى الفردية. قد تواجه أيضا حالة عندما يتم تجميع المحتويات معا في الكائن الذي يشبه صورة واحدة.

Aspose.Words يوفر وظائف لاستخراج هذا النوع من المحتوى بنفس الطريقة التي يمكنك استخراج صورة بسيطة من الشكل كمحتوى المقدمة. توضح هذه المقالة كيفية استخدام هذه الوظيفة لعرض الأشكال بشكل مستقل عن المستند.

## أنواع الأشكال في Aspose.Words

يتم تمثيل كل المحتوى في طبقة رسم المستند بواسطة [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) أو [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) عقدة في Aspose.Words وحدة كائن المستند (DOM). يمكن أن تكون هذه المحتويات مربعات نصية، صور ،AutoShapes، OLE كائنات، إلخ. يتم أيضا استيراد بعض الحقول كأشكال، على سبيل المثال، حقل `INCLUDEPICTURE`.

يتم تمثيل صورة بسيطة بواسطة عقدة **Shape** من [ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE). لا تحتوي عقدة الشكل هذه على عقد فرعية ولكن يمكن الوصول إلى بيانات الصورة الموجودة داخل عقدة الشكل هذه بواسطة [Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) خاصية. من ناحية أخرى، يمكن أيضا أن يتكون الشكل من العديد من العقد الفرعية. على سبيل المثال، يمكن أن يتكون شكل مربع النص، الذي يتم تمثيله بخاصية [ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX)، من العديد من العقد، مثل [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) و [Table](https://reference.aspose.com/words/java/com.aspose.words/table/). يمكن أن تتضمن معظم الأشكال **Paragraph** و **Table** العقد على مستوى الكتلة. هذه هي نفس العقد مثل تلك التي تظهر في الجسم الرئيسي. الأشكال هي دائما أجزاء من فقرة ما، إما مضمنة مباشرة أو مرتبطة بـ **Paragraph,** ولكن "عائمة" في أي مكان في صفحة المستند.

![rendering-shapes-separately-from-a-document-aspose-words-java-1](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

يمكن أن يحتوي المستند أيضا على أشكال مجمعة معا. يمكن تمكين التجميع في Microsoft Word عن طريق تحديد كائنات متعددة والنقر على "مجموعة" في قائمة النقر بزر الماوس الأيمن.

![rendering-shapes-separately-from-a-document-aspose-words-java-2](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

في Aspose.Words، يتم تمثيل هذه المجموعات من الأشكال بواسطة عقدة [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/). يمكن أيضا استدعاء هذه بنفس الطريقة لتقديم المجموعة بأكملها إلى الصورة.

![rendering-shapes-separately-from-a-document-aspose-words-java-3](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

يمكن أن يحتوي تنسيق DOCX على أنواع خاصة من الصور، مثل الرسوم البيانية أو الرسوم البيانية. يتم تمثيل هذه الأشكال أيضا من خلال عقدة **Shape** في Aspose.Words، والتي توفر أيضا طريقة مماثلة لعرضها كصور. حسب التصميم، لا يمكن أن يحتوي الشكل على شكل آخر كطفل، ما لم يكن هذا الشكل صورة (**ShapeType.Image**). على سبيل المثال، Microsoft Word لا يسمح لك بإدراج مربع نص داخل مربع نص آخر.

توفر أنواع الأشكال الموضحة أعلاه طريقة خاصة لعرض الأشكال من خلال فئة [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/). يتم استرداد مثيل من فئة **ShapeRenderer** لـ **Shape** أو **GroupShape** من خلال طريقة **GetShapeRenderer** أو بتمرير **Shape** إلى منشئ فئة **ShapeRenderer**. توفر هذه الفئة الوصول إلى الأعضاء، مما يسمح بتقديم شكل إلى ما يلي:

- ملف على القرص باستخدام طريقة [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) الزائد
- تيار باستخدام طريقة [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions) الزائد
- كائن الرسومات باستخدام طرق [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float) و [RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float)

{{% alert color="primary" %}}

عند تقديم **Shape**، يجب أن يكون جزءا من التسلسل الهرمي للمستند. إذا لم يكن **Shape** جزءا من شجرة المستندات، فسيكون الإخراج المعروض فارغا بعد استدعاء طرق **ShapeRenderer**.

{{% /alert %}}

## التقديم إلى ملف أو دفق

توفر طريقة [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) حمولات زائدة تعرض شكلا مباشرة إلى ملف أو دفق. يقبل كلا الحمولين الزائدين مثيل فئة [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/)، مما يسمح بتحديد الخيارات لعرض الشكل. يعمل هذا بنفس طريقة [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions). على الرغم من أن هذه المعلمة مطلوبة، يمكنك تمرير قيمة فارغة، مع تحديد عدم وجود خيارات مخصصة.

يمكن تصدير الشكل بأي تنسيق صورة محدد في [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) تعداد. على سبيل المثال، يمكن عرض الصورة كصورة نقطية، مثل JPEG عن طريق تحديد [SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG) التعداد، أو كصورة متجهة، مثل EMF عن طريق تحديد [SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF).

يوضح مثال الكود أدناه عرض شكل على صورة EMF بشكل منفصل عن المستند، والحفظ على القرص:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

يوضح مثال الكود أدناه عرض شكل على صورة JPEG بشكل منفصل عن المستند، والحفظ في دفق:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

تتيح لك فئة **ImageSaveOptions** تحديد مجموعة متنوعة من الخيارات التي تتحكم في كيفية عرض الصورة. يمكن تطبيق الوظيفة الموضحة أعلاه بنفس الطريقة على العقدتين **GroupShape** و **Shape**.

## التقديم إلى كائن `Graphics`

يتيح لك التقديم مباشرة إلى كائن **Graphics** تحديد الإعدادات الخاصة بك وحالة الكائن **Graphics**. يتضمن السيناريو الشائع تقديم شكل مباشرة إلى **Graphics** كائن تم استرداده من Windows شكل أو صورة نقطية. عندما يتم عرض العقدة **Shape**، ستؤثر الإعدادات على مظهر الشكل. على سبيل المثال، يمكنك تدوير الشكل أو قياسه باستخدام طرق **RotateTransform** أو **ScaleTransform** للكائن **Graphics**.

يوضح المثال أدناه كيفية عرض شكل إلى كائن **Graphics** بشكل منفصل عن المستند وتطبيق التدوير على الصورة المعروضة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

وبالمثل، بالنسبة لطريقة [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)، فإن طريقة [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)الموروثة من [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) مفيدة لإنشاء صور مصغرة لمحتوى المستند. يتم تحديد حجم الشكل من خلال المنشئ. تقبل طريقة **RenderToSize** الكائن **Graphics**، والإحداثيات س و ص لموضع الصورة، وحجم الصورة (العرض والارتفاع) التي سيتم رسمها على الكائن **Graphics**.

يمكن تقديم **Shape** إلى مقياس معين باستخدام طريقة [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) الموروثة من فئة [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/). هذا مشابه لطريقة [Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) التي تقبل نفس المعلمات الرئيسية. الفرق بين هاتين الطريقتين هو أنه باستخدام طريقة **ShapeRenderer.RenderToScale**، بدلا من الحجم الحرفي، يمكنك اختيار قيمة عائمة تقيس الشكل أثناء عرضه. إذا كانت قيمة التعويم تساوي 1.0 يتسبب في عرض الشكل بنسبة 100 ٪ من حجمه الأصلي. ستؤدي القيمة العائمة 0.5 إلى تقليل حجم الصورة بمقدار النصف.

## تقديم صورة الشكل

تمثل فئة [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) كائنات في طبقة الرسم، مثل AutoShape أو مربع نص أو شكل حر أو OLE كائن أو عنصر تحكم أكتيفكس أو صورة. باستخدام فئة **Shape**، يمكنك إنشاء أو تعديل الأشكال في مستند Microsoft Word. خاصية مهمة للشكل هي [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). يمكن أن يكون للأشكال من أنواع مختلفة قدرات مختلفة في مستند ورد. على سبيل المثال، يمكن أن تحتوي الصور والأشكال OLE فقط على صور بداخلها بينما يمكن أن تحتوي معظم الأشكال على نص فقط.

يوضح المثال التالي كيفية عرض صورة شكل إلى صورة JPEG بشكل منفصل عن المستند وحفظها على القرص:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## استرجاع حجم الشكل

توفر فئة [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) أيضا وظائف لاسترداد حجم الشكل بالبكسل من خلال طريقة [GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float). تقبل هذه الطريقة معلمتين عائمتين (مفردة) - المقياس و DPI، والتي تستخدم في حساب حجم الشكل عند تقديم الشكل. تقوم الطريقة بإرجاع الكائن [Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float)، الذي يحتوي على عرض وارتفاع الحجم المحسوب. يكون هذا مفيدا عندما يكون مطلوبا معرفة حجم الشكل المعروض مسبقا، على سبيل المثال عند إنشاء صورة نقطية جديدة من الإخراج المعروض.

يوضح المثال أدناه كيفية إنشاء صورة نقطية وكائن رسومات جديد مع عرض وارتفاع الشكل المراد عرضه:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

عند استخدام أساليب **RenderToSize** أو **RenderToScale**، يتم إرجاع حجم الصورة المقدمة أيضا في الكائن [SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float). يمكن تعيين هذا لمتغير واستخدامه إذا لزم الأمر.

ترجع الخاصية **SizeInPoints** حجم الشكل المقاس بالنقاط (انظر [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)). والنتيجة هي `SizeF` كائن يحتوي على العرض والارتفاع.
