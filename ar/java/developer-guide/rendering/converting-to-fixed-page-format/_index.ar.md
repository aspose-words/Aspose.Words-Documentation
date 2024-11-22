---
title: "ترجمة: Java"
second_title: Aspose.Words for Java
articleTitle: تحويل إلى صفحة ثابتة
linktitle: تحويل إلى صفحة ثابتة
description: "Aspose.Words for Java يُنفّذ محرك تخطيط صفحاته الخاص الذي يمكّنه من إنتاج جميع أشكال الصفحات الثابتة، مثل PDF، XPS, ومختلف أشكال الصور."
type: docs
weight: 10
url: /ar/java/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words يُنفّذُ مُحرّكَ تخطيط صفحاته الخاصّ. وقبل التطرق إلى مواصفاته، يجدر أولا مناقشة الوثيقة على مستوى عال. وعند التفكير في وثيقة ما، يتصور المستعملون عادة عددا من الورقات التي تتضمن الكلمات والصور والجداول والرسوم البيانية. ويمكن أن تكون الوثائق من مختلف الأنواع، مثل النص، وصحائف النشر، والشرائح، ورسومات السحب، والرسومات التدفقية، وبالتالي، يمكن أن يكون لها مخططات مختلفة أساسا. وتسمح معظم التطبيقات بإرسال الوثائق إلى الطابعة؛ وهذا هو الوقت الذي يمكن فيه للمستعمل أن ينظر فعلا إلى المظهر النهائي المقصود للوثيقة.

## عرض وثيقة في تطبيقات مختلفة

(ب) إتاحة الفرصة لمستعملي الوثائق المختلفة التي تنظر في الطلبات أو تنشرها لفتح أبوابها (ب)Adobe Acrobat, XPS Viewer), and sometimes edit ( literature InDesign) documents of specific formats. هذه التطبيقات تُنتج عادة ما يُسمى بوثائق "صفحة ثابتة" ويصف شكل الوثيقة هذا بدقة المكان الذي يوضع فيه مضمون الوثيقة على كل صفحة. داخلي، قوات الدفاع الشعبي أو XPS ويتضمن الشكل وصفاً لكل صفحة، فضلاً عن تعليمات السحب، مع تحديد مخطط المحتوى في الصفحة. ويشبه ذلك أشكال الصور، التي تصف المكان الذي يُعرض فيه المحتوى إما في شكل مستقيم أو ناقل.

وعلى النقيض من ذلك، فإن بعض طلبات تحرير النصوص لا تؤيد النظر في صفحات الوثيقة. على سبيل المثال Microsoft وتدعم المذكرة عددا قليلا جدا من المهام غير مجرد عرض النص وتحريره وطباعته. والملاحظة الهامة هنا هي أن مثل هذه التطبيقات لا يمكن أن تبين صفحات الوثيقة ولا أن تخبر المستخدم بعددها الذي سيطبع، ولا تسمح إلا بالنظر إلى محتوى الوثيقة. ويمكن توفير هذه الوثيقة في شكل نصي واضح ويمكن فتحها بواسطة العديد من الطلبات الأخرى. وباستخدام طلب يسمح برؤية المحتوى الثنائي لملف تعسفي يمكن للمرء أن يرى ما هو مخزن في ملف الوثيقة - فهو مجرد نص عادي، لا يوجد فيه شيء آخر.

تطبيقات تحرير نصوص أكثر تطوراً، مثل Microsoft WordPad, save the document in Rich Text Format (RTF), which supports more formatting functions, such as insertion of images, character formatting, paragraph margins and spacing. غير أن شكل فرقة العمل لا يتضمن أيضا سوى مضمون الوثيقة، وليس لديه أي معلومات عن الصفحات.

Microsoft Word هو أكثر تطبيقات تحرير النصوص تقدما Windows اليوم وهو يصيغ الملفات في شكل الوثيقة DOCX، الذي يصف مضمون الوثيقة بمرونة وعلى نطاق واسع، مما يتيح للمستعملين تحديد حجم الصفحات، والتوجه إلى قسم من الوثائق، وبما أن تطبيقاً من تطبيقات الشبكة العالمية لسواتل الملاحة يبين صفحات الوثائق على الشاشة. ومع ذلك، لا توجد حتى الآن أي معلومات عن كيفية عرض محتوى الوثيقة على الصفحات المتاحة في ملف الوثيقة. ولا يصف ملف الوثيقة سوى المحتوى نفسه، وتعترض علاقة الوثائق على بعضها البعض، إلى جانب بعض القيود الجغرافية. ونتيجة لذلك، قبل عرض وثيقة، Microsoft Word يحسب تلك المعلومات نفسها. هذا هو المكان الذي يبدأ فيه تصميم الصفحات.

## ما هي الصفحة

A document page layout is a data structure, describing where a particular object is located on pages for all document objects. وبالإضافة إلى ذلك، وبما أن للأشياء خصائص تؤثر على مظهرها، مثل حجمها أو آثارها المظلة أو السحب، فإنكم بحاجة إلى أن لا تعرفوا مكان الجسم فحسب، بل أيضاً أي مجال (مجال) من الصفحة التي تحتلها، وما إذا كان سيطبق على صفحات متعددة حتى لا تتداخل الأجسام الأخرى في نفس المجال (المجالات).

Aspose.Words (ب) تنفيذ وظيفة تخطيط الصفحات لتمكينه داخلياً من إنتاج جميع أشكال الصفحات الثابتة، مثل PDF، XPS, ومختلف أشكال الصور. فبدون تحديد الصفحات، لن تكون المعلومات المخزنة في ملف وثائق الصفحات الثابتة متاحة ولن تدعم جميع هذه الأشكال.

والعلاقة بين الوثيقة ورسم الصفحات بسيطة جدا. وفي حين أن الوثيقة تصف المضمون، فإن الصفحة المقابلة تصف الهندسة في ذلك المحتوى. Note, that a page layout cannot exist without a document since there would be no content for computing the geometry, but a document can exist without a page layout. For example, when a DOCX document is converted into an RTF document, it is typically unnecessary to know the geometry, since neither format stores it.

## إنشاء صفحة

ويمكن أن يكون إعداد الصفحات إجراء مكلفا، سواء من حيث السرعة أو الذاكرة. ويرجع ذلك إلى عدة أسباب:

- وقد يكون لهذه الوثيقة قدر كبير من المحتوى، قد يلزم عرضه على آلاف الصفحات. وسيتعين وصف قياس كل شيء في كل صفحة، واستهلاك موارد الذاكرة.
- وقد يكون لهذه الوثيقة العديد من القواعد، مما يضع قيودا على الهندسة. وقد يُقضى وقت حاسبي كبير، بما يكفل الوفاء بكل قيود
- بعض سمات الوثائق، على سبيل المثال `NUMPAGES` في الميدان، إيجاد معالين استجماميين لقيم الممتلكات في المستقبل، غير متاحة وقت الحساب. وهذا يؤدي إلى حسابات متكررة ويضاف في وقت الحساب.

بسبب الأسباب السالفة الذكر Aspose.Words سوف يخلق مخططا للصفحة فقط عندما يكون ضروريا. ومن الأسباب النموذجية لذلك طلب إصدار صفحات الوثائق أو الحصول على قيمة ميدانية تتوقف على المعلومات المتاحة في مخطط الصفحات. وقد يكون السبب الأقل وضوحا هو تصدير وثيقة إلى شركة HTML. وعلى الرغم من أن نظام HTML ليس شكلا ثابتا من صفحاته ولا يصف الهندسة الجيولوجية لمحتوى الأجسام، فإنه لا يزال يدعم الصور. وقد تكون هذه الصور في شكل أشكال تنشأ في Microsoft Word مع رسالة بداخلهم فعلى سبيل المثال، يمكن تصدير رسم بياني يحمل علامات محورية إلى نظام HTML كصورة، ولكن قبل أن يتم ذلك. Aspose.Words يجب أن نصنع هذه الصورة، ومن ثم يجب أن نعرف أين نعرض العلامة. انظر المثال الوارد أدناه:

<img src="/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format-aspose-words-" style="width:800px"/>

### غير نمطي الممتلكات

وبالإضافة إلى معالجة المعلومات الجغرافية المعالم، فإن تصميم الصفحات مسؤول أيضا عن حساب الألوان والأساليب الحدودية. In Microsoft Word, ويمكن تحديد لون النص على أنه آلي، مما يعني أن اختيار اللون ينبغي أن يستند إلى اللون المظل للزنزانة أو الفقرة، أو على أساس لون الصفحة، حيث يظهر النص.

ويحسب النص الذي سيظهر فيه النص وما هو المحتوى الذي سيصدر خلفه، ويمكّن من حساب اللون. وهناك حسابات محددة أخرى يجريها مخطط الصفحات. فعلى سبيل المثال، يتوقف وجود حدود أفقية في أحد الجداول على ما إذا كان الصف الأخير في عمود من النص، وما إذا كان مقسما على الأعمدة. وإذا صدر صف آخر في عمود، فإن الحدود الدنيا تُستخدم بدلاً من أن تكون أفقية.

![non_geometric_properties_aspose-words-java](/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

In Aspose.Words (أ) يمكن للمستعمل أن يطلب ما إذا كان سينشئ مخططاً جديداً للصفحة، أو يستكمل قائمة. وكلاهما يمكن أن يؤديه [UpdatePageLayout](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout\(\)الطريقة التي يوفرها [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) صف إذا لم يكن هناك مخطط للصفحة، ولكن هناك حاجة إليها (مثلا عندما تصدر الوثيقة إلى شكل ثابت الصفحات)، Aspose.Words سيسمي هذا الأسلوب تلقائياً على أي حال، إذا كان هناك مخطط للصفحة بالفعل، Aspose.Words وسيستخدم الموجود حالياً، لتفادي استهلاك الموارد اللازمة لتحديثه. In this case, the user needs to call the `UpdatePageLayout` طريقة، لضمان أن يكون مخطط الصفحات مستوفياً لنموذج الوثيقة.

### الهيكل الديناميكي

وتشمل عملية وضع مخطط الصفحات الخطوات التالية:

- *Conversion* - سرد محتوى نموذج الوثيقة وإعداد ما يقابله من مواد مخططة.
- *Build* - ترتيب موضوعات لتمثيل محتوى الوثيقة في الصفحات.
- *Reflow* - تحديث الترتيبات المتعلقة بالأجسام لإرضاء قيود الهندسة.
- * اقتراح أجسام تخطيطية في عرض الصفحات الثابتة واستكمال المعلومات المتعلقة باللون*.
- * بناء المحتوى الشكلي وإعادة تدفقه* - وهي خطوة مطلوبة إذا كانت الوثيقة تحتوي على شكل محتوى نصي مستنير.

Note, that the page layout is a dynamic structure, which can be partially rebuilt. وهذا أمر ضروري بصفة خاصة عندما يتعذر حساب القيم الميدانية دون إعادة بناء هيكل إعداد الوثائق. ويمكن للميدان أن يشير إلى موقع الجسم على صفحة، وفي الوقت نفسه، تُدرج القيمة الميدانية نفسها في الصفحة، مما يؤثر على موقع الجسم المشار إليه. ولا يمكن بناء مخطط للصفحات في مرحل واحد، لأن القيم الميدانية قد لا تكون متاحة بعد وقت تحديد الموقع على صفحة.

النظر في السيناريو النموذجي عندما `NUMPAGES` ويظهر الميدان في مقدمة الصفحة الأولى من الوثيقة. وقيمة هذا المجال هي العدد الإجمالي للصفحات. ومن أجل وضع الميدان على صفحة، ينبغي معرفة قيمته. وإذا كانت الصفحة الأولى هي التي يجري بناؤها حاليا، فإن العدد الإجمالي للصفحات غير معروف بعد. In this case, the page layout has to use the default value and later come back to that field and change its value according to actual computations. غير أن تغيير القيمة الميدانية قد يؤثر على محتوى الوثائق الأخرى في صفحة، ويتسبب في نهاية المطاف في إضافة صفحة جديدة أو إلغاء صفحة قائمة، مما يجعل القيمة المحوسبة تفوق قيمتها. ويمكن حل هذه المسألة بتمكينها من تحديث نظام الصفحات الحالي.

عند وضع مخطط، من الممكن أيضاً إنشاء [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) الممتلكات التي تؤثر على ناتج الوثيقة في الصفحات.

## الانتقال إلى صفحة ثابتة

وبعد أن يُبنى تصميم الصفحات وتُحسب الهندسة الجيولوجية للأجسام وموقعها على الصفحة، يمكن أن تُحفظ الوثيقة في شكل صفحات ثابتة تدعمها صفحة ثابتة Aspose.Words. وعند توفير الوثائق لصيغ ثابتة الصفحات، يمكن استخدام الخيارات المتاحة لجميع هذه الأشكال. وهي تسمح بالتحكم:

- عدد صفحات وثيقة النواتج ونطاقها ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- التقدم المحرز في توفير الوثائق على أساس كل صفحة ([PageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- مجموعة من الشخصيات التي تُستخدم للأرقام التي تصدر ([NumeralFormat](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- لاعب مائي[MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/). لمزيد من التفاصيل، انظر [▪ ■ Windows Metafiles](/words/ar/java/handling-windows-metafiles/) مقال
- معدل جودة لتكرير صور فريق الخبراء المشترك، التي قد تختلف قيمتها اختلافاً طفيفاً، تبعاً لشكل الادخار المختار ().[JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/).
- الاستخدام الأمثل لرسومات ناقلات في Aspose.Words الناتج[OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- خيارات الرسم البياني عند الادخار إلى تيف، بنغ، بومب، يبغ، إيمف[UseAntiAliasing](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getUseAntiAliasing), [UseHighQualityRendering](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- إنقاذ الوثيقة في الرمادي[ColorMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- التبديل بين نشأة شبكـات شبكـة شبكـة شبكـة شبكـة شبكـة الـمـارجـمـة وشكلـات التداعيـل[DmlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- التبديل بين تأثيرات الـ دي. إم.[DmlEffectsRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).

ويبيّن المثال الوارد أدناه كيفية توفير وثيقة لشكل فريق الخبراء المشترك باستخدام `Save` طريقة وخيارات:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveDocumentToJPEG-SaveDocumentToJPEG.java" >}}
