---
title: العمل مع جدول المحتويات Java
second_title: Aspose.Words for Java
articleTitle: العمل مع جدول المحتويات
linktitle: العمل مع جدول المحتويات
description: "جدول ميدان المحتوى في التفاصيل. كيفية خلق وتعديل `TOC` استخدام الحقل Java."
type: docs
weight: 170
url: /ar/java/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

وفي كثير من الأحيان ستعملون مع الوثائق التي تحتوي على جدول محتويات. استخدام Aspose.Words يمكنك إدخال جدول محتوياتك الخاص أو إعادة بناء جدول المحتويات الحالي في الوثيقة باستخدام بضعة خطوط رمزية

وتحدد هذه المادة كيفية العمل في مجال جدول المحتويات وتبين ما يلي:

-كيف تُدخل علامة تجارية جديدة
- تحديث لجان الخيارات التقنية الجديدة أو القائمة في الوثيقة.
- تحديد مفاتيح التحكم في شكل اللجنة وهيكلها العام.
- كيفية تعديل أساليب وظهور جدول المحتويات.
- كيف يزيل كامل `TOC` ميدانياً إلى جانب جميع القيود الواردة في الوثيقة.

## Insert Table of Contents Programmatically

يمكنك إدخال `TOC` (جدول المحتويات) الحقل في الوثيقة في الموقع الحالي بدعوة [InsertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) طريقة

ويمكن بناء جدول للمحتويات في وثيقة وورد بعدة طرق وشكلها باستخدام مجموعة متنوعة من الخيارات. الملعب يتحول إلى الطريقة التي تتحكم بها في طريقة بناء الطاولة وعرضها في وثيقتك

مفاتيح التبديل التي تستخدم في `TOC` تدرج في Microsoft Word هي **"" / "**. ويمكن الاطلاع في وقت لاحق في المادة على وصفات هذه المفاتيح وكذلك على قائمة بالمفاتيح المدعومة. يمكنك إما استخدام ذلك الدليل للحصول على المفاتيح الصحيحة أو إذا كان لديك بالفعل وثيقة تحتوي على مماثلة `TOC` أنك تريد أن تظهر الرموز الميدانية (*ALT+F9*) وتنسخ التبديل مباشرة من الميدان.

ويبيّن المثال الرمزي التالي كيفية إدراج حقل من جدول المحتويات في وثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-InsertATableOfContentsField.java" >}}

ويبين المثال الرمزي التالي كيفية إدراج جدول للمحتويات في وثيقة تستخدم أساليب العناوين كقيدات:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsUsingHeadingStyles-InsertATableOfContentsUsingHeadingStyles.java" >}}

The code demonstrates the new table of contents is inserted into a blank document. The [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) ويُستخدم بعد ذلك في إدخال بعض نماذج المحتوى التي تُشكّل باستخدام أسلوب العناوين المناسب الذي يُستخدَم في تحديد المحتوى الذي سيُدرج في لجنة الخيارات التقنية. السطور التالية ثم تفجر `TOC` عن طريق تحديث الحقول ورسم صفحة الوثيقة.

![insert-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-1.png)

{{% alert color="primary" %}}

بدون الأساليب المستخدمة في المثال، عندما تفتحين وثيقة الناتج، ستجدين `TOC` الحقل، ولكن بدون محتوى مرئي. هذا بسبب `TOC` وقد أضيف ميدان ولكنه لم يزدحم بعد إلا بعد استكماله في الوثيقة. ويناقش الفرع التالي مزيدا من المعلومات عن ذلك.

{{% /alert %}}

## الجدول المستكمل للمحتويات

Aspose.Words يسمح لك بتحديث كامل `TOC` مع بعض خطوط الشفرة ويمكن القيام بذلك من أجل الحصول على مدخل جديد `TOC` أو لتحديث قائمة `TOC` وبعد إدخال تغييرات على الوثيقة.

يجب استخدام الأسلوبين التاليين لتحديث `TOC` المجالات الواردة في الوثيقة:

1. [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/Document#updateFields())
1. [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/Document#updatePageLayout())

ويرجى الانتباه إلى أن هذين الأسلوبين المستكملين مطلوبين في هذا الترتيب. إذا عكست طاولة المحتويات سوف تُقطَع ولكن لن تظهر أرقام الصفحات ويمكن تحديث أي عدد من اللجان الفرعية المختلفة. وسوف تستكمل هذه الأساليب تلقائياً جميع اللجان الفرعية الموجودة في الوثيقة.

المثال الرمزي التالي يبين كيف يعاد بناءه بالكامل `TOC` الميادين الواردة في الوثيقة عن طريق الاستناد إلى تحديثات ميدانية:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-UpdateTableOfContents.java" >}}

النداء الأول [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) سيبني `TOC`" جميع النصوص مأهولة بالسكان `TOC` يبدو مكتملاً والشيء الوحيد المفقود هو أرقام الصفحات التي تظهر الآن ب " ؟ ".

النداء الثاني [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout) سيبني تصميم الوثيقة في الذاكرة. وينبغي القيام بذلك لجمع عدد الصفحات من القيد. The correct page numbers calculated from this call are then inserted into the TOC.

## Use Switches to Control Table of Contents Behavior

كما في أي ميدان آخر `TOC` ويمكن للميدان أن يقبل التحولات المحددة في القانون الميداني التي تتحكم في كيفية بناء جدول المحتويات. وتُستخدم بعض مفاتيح التبديل للتحكم في أي قيود مشمولة وعلى أي مستوى بينما تستخدم مفاتيح أخرى للسيطرة على مظهر لجنة الخيارات التقنية. ويمكن الجمع بين المتبدلات للسماح بإعداد جدول معقد للمحتويات.

![ccontrol-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-2.png)


وبحلول التقصير، تُدرج هذه التبديلات المذكورة أعلاه عند إدراج تقصير `TOC` في الوثيقة. ألف `TOC` ولا تشمل أي مفاتيح مبدلة المحتوى من أساليب العناوين الأساسية (مثلاً إذا تم تحديد مفتاح التشغيل).

المتاح `TOC` تحويلات تدعمها Aspose.Words وترد أدناه تفاصيل استخداماتها. ويمكن تقسيمها إلى أقسام منفصلة تستند إلى نوعها. وتُعرِّف التبديلات في القسم الأول المحتوى الذي ينبغي إدراجه في `TOC` والمفاتيح في القسم الثاني تتحكم في ظهور التكتيك

إذا لم يكن المفتاح مدرجاً هنا فهو غير مدعوم حالياً وستدعم جميع التبديلات في نسخ مقبلة. ونحن نضيف المزيد من الدعم لكل إطلاق سراح.

### مفاتيح الدخول

|  Switch | الوصف |
|  :-  |  :-  |
| **Heading Styles** <br/> * (O Switch)* <br/> | <p>هذا التبديل يعرف أن `TOC` يجب أن يُبنى من على أساليب متجهة In Microsoft Word, ويحدد العنوان ١ - العنوان 9. Aspose.Words وتُمثل هذه الأساليب في تعداد محددات الهوية ذي الصلة. ويمثل هذا التعداد مؤشراً محلياً يعتمد على أسلوب معين، على سبيل المثال، `StyleIdentifier.Heading1` يُمثّلُ أسلوبَ العنوانَ 1. وباستخدام ذلك، يمكن استرجاع شكل وخصائص هذا الأسلوب من مجموعة نموذج الوثيقة. يمكن استرجاع صف الطراز المقابل من `Document.Styles` التحصيل عن طريق استخدام الممتلكات المفهرسة من نوع محدد الهوية.</p>

<p>![style-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-3.png)</p>

<p><br/><br/>ويدرج في جدول المحتويات أي محتوى يتكون من هذه الأساليب. وسيحدد مستوى العنوان المستوى الهرمي المقابل للدخول في لجنة الخيارات التقنية. فعلى سبيل المثال، ستُعامل فقرة ذات أسلوب " العنوان 1 " على أنها المستوى الأول. `TOC` وفي حين أن فقرة تحمل العنوان 2 ستعامل على أنها المستوى التالي في التسلسل الهرمي وما إلى ذلك.</p>
 |
| **Outline Levels** <br/> * <br/> | <p>ويمكن لكل فقرة أن تحدد مستوى موجز في إطار خيارات الفقرة.</p>

<p>![modify-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-4.png)</p>

<p><br/><br/>وينص هذا الإطار على المستوى الذي ينبغي أن تعامل به هذه الفقرة في الهيكل الهرمي للوثائق. وهذه ممارسة شائعة الاستخدام تُستخدم بسهولة في هيكلة مخطط الوثيقة. هذا التسلسل الهرمي يمكن أن يُنظر إليه بالتغيّر إلى الرؤية الخارجية Microsoft Word. وكما هو الحال بالنسبة لأساليب العناوين، يمكن أن يكون هناك مستوى ١ - ٩ مستويات عامة بالإضافة إلى مستوى " النص الأساسي ". ستظهر المستويات الرئيسية 1-9 في `TOC` في المستوى المقابل للتسلسل الهرمي <br/>ويُدرج في لجنة الخيارات التقنية أي محتوى له مستوى مخطّط إما مبيّن في أسلوب الفقرة أو مباشرة في الفقرة ذاتها. In Aspose.Words ويمثل مستوى المخطط العام `ParagraphFormat.OutlineLevel` ممتلكات رقم الفقرة. يُمثَّل مستوى الخطوط العامة لأسلوب الفقرة بنفس الطريقة بـ `Style.ParagraphFormat` ملكية</p>

<p>{{% alert color="primary" %}}</p>

<p>Note that built-in heading modalities such as Heading 1 have an outline level compulsory set in fashions.</p>

<p>{{% /alert %}}</p>
 |
| **Custom Styles** <br/> * <br/> | <p>وسيسمح هذا التحول باستخدام أساليب العرف عند جمع القيود التي ستستخدم في لجنة الخيارات التقنية. وكثيراً ما يُستخدم ذلك بالاقتران مع التبديل " فو " ليشمل أساليب العرف إلى جانب أساليب الرفع في العناوين الأساسية في لجنة الخيارات التقنية. <br/>وينبغي أن توضع بارامترات التبديل ضمن علامات الكلمات. ويمكن إدراج العديد من أساليب العرف، بالنسبة لكل أسلوب، ينبغي أن يعقب ذلك اسم فاصلة يعقبها المستوى الذي ينبغي أن يظهر فيه الأسلوب. `TOC` كما. وهناك أيضاً أساليب أخرى تفصلها فاصلة. <br/>على سبيل المثال</p>

<p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p>

<p>سيستخدم محتوى مصمم مع شركة (Custom Heading1) كمحتوى من المستوى الأول `TOC` (ب) في المستوى 2.</p>
 |
| Use TC Fields <br/> *(F وL)* <br/> | <p>في النسخ القديمة Microsoft Word, الطريقة الوحيدة لبناء `TOC` كان استخدام حقول (تي سي) وتدرج هذه الميادين مخبأة في الوثيقة حتى عندما تظهر الرموز الميدانية. وهي تشمل النص الذي ينبغي أن يُعرض في المدخل وفي `TOC` مبنية منهم ولا تستخدم هذه الوظيفة حالياً في كثير من الأحيان ولكن قد لا تزال مفيدة في بعض المناسبات لإدراج قيود في تلك المناسبات. `TOC` ولا يمكن الاطلاع عليها في الوثيقة. <br/>عندما تدرج هذه الحقول تظهر مخبأة حتى عندما تظهر الرموز الميدانية لا يمكن رؤيتها بدون إظهار محتوى مخفي ورؤية هذه المجالات يجب اختيار صيغة الفقرة.</p>

<p>![setup-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-5.png)</p>

<p>ويمكن إدراج هذه الحقول في وثيقة في أي مكان مثل أي ميدان آخر ويمثلها `FieldType.FieldTOCEntry` العد<br/>مفتاح الـ "إف" في `TOC` ويُستخدم لتحديد استخدام حقول التعاون التقني كقيد. والتحول من تلقاء نفسه دون أي تعريف إضافي يعني أن أي ميدان من مجالات التعاون التقني في الوثيقة سيدرج. أي بارامتر إضافي، في كثير من الأحيان رسالة واحدة، سيحدد أن حقول رابع كلوريد ثلاثي كلوريد الكربون التي لديها مفتاح مطابق للـ (إف) ستدرج في لجنة الخيارات التقنية. على سبيل المثال</p>

<p>{{< highlight csharp >}}
{ TOC \f t }{{< /highlight >}}</p>

<p>لن تشمل سوى ميادين التعاون التقني مثل</p>

<p>{{< highlight csharp >}}
{ TC \f t }{{< /highlight >}}</p>

<p>The `TOC` وللميدان أيضاً مفتاح ذي صلة، يحدد مفتاح " / / " أنه لا يشمل سوى ميدان التعاون التقني ذي المستويات داخل النطاق المحدد.</p>

<p>![table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-6.png)</p>

<p><br/><br/>The `TC` الحقول نفسها يمكن أن تكون {several, `multiple`, a few, `many`, numerous} مفاتيح ثابتة وهي:</p>

<p>-إف. ♪</p>

<p>- لا - يحدد أي مستوى في `TOC` هذا الحقل سيظهر ألف `TOC` ولا يشمل هذا التحول نفسه ميدان التعاون التقني إلا إذا كان ضمن النطاق المحدد.</p>

<p>- عدد الصفحات لهذا `TOC` الدخول لم يظهر ويمكن الاطلاع على مدونة عينات لطريقة إدخال حقول رابع كلوريد الكربون في القسم التالي.</p>
 |

### التبديلات ذات الصلة

|  Switch | الوصف |
|  :-  |  :-  |
| **Omit Page Numbers** <br/> * (N Switch)* | <p>ويستخدم هذا التبديل لإخفاء أرقام الصفحات لمستويات معينة من لجنة الخيارات التقنية. على سبيل المثال، يمكنك تعريف</p>

<p>{{< highlight csharp >}}
{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p>

<p>وأرقام الصفحات الواردة في قوائم المستويين 3 و 4 ستكون مخبأة إلى جانب النقاط القيادية (إن وجدت). ولتحديد مستوى واحد فقط ينبغي استخدام نطاق واحد، على سبيل المثال، فإن " ١ - ١ " لا تستبعد أرقام الصفحات إلا للرتبة الأولى. <br/>ولن يغفل توفير أي نطاق من المستويات أرقام الصفحات على جميع المستويات في لجنة الخيارات التقنية. This is useful to set when exporting a document to HTML or a similar format. ويرجع ذلك إلى أن الصيغ القائمة على نظام HTML ليس لها أي مفهوم للصفحة وبالتالي لا تحتاج إلى أي ترقيم للصفحة.</p>

<p>![table-of-contents-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-7.png)</p>
 |
| Insert as Hyperlinks <br/> * (H Switch)* | <p>هذا التبديل يحدد `TOC` تُدرج القيود كوصلات ضغط. عند النظر إلى وثيقة في Microsoft Word هذه القيود ستظهر كنص عادي داخل `TOC` غير أنها متصلة ارتباطاً وثيقاً ويمكن بالتالي استخدامها في نقل موقع الدخول الأصلي في الوثيقة باستخدام *Ctrl + left Click* Microsoft Word. وعند إدراج هذا التبديل، يتم أيضا الحفاظ على هذه الروابط في أشكال أخرى. For instance, in HTML based formats including EPUB and rendered formats such as PDF and XPS, وسيتم تصديرها كوصلات عمل. <br/>بدون هذا المفتاح `TOC` وفي جميع هذه النواتج سيتم تصديرها بوصفها نصا واضحا ولن تثبت هذا السلوك. وإذا افتُتحت وثيقة في MS Word، لن يكون نص القيد قابلا للنقاش أيضا بهذه الطريقة، ولكن لا يزال بالإمكان استخدام أرقام الصفحات لنقل الدخول الأصلي.</p>

<p>![tree-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-8.png)</p>
 |
| **Set Separator Character** <br/> *(P Switch)* <br/> | <p>ويسمح هذا التبديل بتغيير المحتوى الذي يفصل عنوان الدخول وعدد الصفحات بسهولة في لجنة الخيارات التقنية. The separator to use should be specified after this shift and attached in speech marks. <br/>وخلافا لما هو موثق في وثائق المكتب، لا يمكن استخدام طابع واحد إلا بدلا من أن يصل إلى خمسة. وينطبق هذا على كل من كلمة ميم إس وورد Aspose.Words. <br/>ولا يوصى باستخدام هذا التبديل لأنه لا يسمح بقدر كبير من السيطرة على ما كان يستخدمه لفصل القيود وأرقام الصفحات في لجنة الخيارات التقنية. وبدلا من ذلك، يوصى بتحرير ما هو مناسب `TOC` أسلوب من هذا القبيل `StyleIdentifier.TOC1` ومن هناك حرر أسلوب الزعيم مع الوصول إلى أعضاء محددين ويمكن الاطلاع في وقت لاحق على تفاصيل أخرى عن كيفية القيام بذلك في المادة.</p>

<p>![list-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-9.png)</p>
 |
| **Preserve Tab Entries** <br/> * (W Switch)* | <p>وباستخدام هذا التبديل سينص على أن أي قيود تكون ذات طابع تابوي، على سبيل المثال، عنواناً يحتوي على جدول في نهاية الخط، سيُحتفظ به كشخصية حسابية مناسبة عند اكتظاظ لجنة الخيارات التقنية. هذا يعني أن وظيفة شخصية (تاب) ستكون موجودة `TOC` ويمكن استخدامها لتشكيل المدخل. فعلى سبيل المثال، قد تستخدم بعض القيود التوقيفات والشخصيات المشابهة في الحيز المتساوي للنص. ما دامت المقابلة `TOC` يُعرّفُ المستوىَ ما يُعادلُ توقّفَ التافه ثمّ `TOC` وستظهر القيود مع فترات مباعدة مماثلة. <br/><br/>وفي نفس الحالة إذا لم يكن هذا التبديل معرَّفاً، تُحوَّل شخصيات التافه إلى مكافئات فضائية بيضاء كقبوات غير عاملة. ولن يظهر الناتج بعد ذلك كما هو متوقع.</p>

<p>![tab-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-10.png)</p>
 |
| **Preserve New Line Entries** <br/> *(X Switch)* <br/> | <p>وعلى غرار التبديل الوارد أعلاه، يحدد هذا التبديل أن العناوين التي تمتد على خطوط متعددة (استخدام خصائص خطية جديدة، وليس فقرات منفصلة) ستُحفظ كما هي في لجنة الخيارات التقنية المتولدة. فعلى سبيل المثال، يمكن لعنصر ينتشر عبر خطوط متعددة أن يستخدم طابع الخط الجديد (Ctrl + Enter أو) `ControlChar.LineBreak`لفصل المحتوى عبر خطوط مختلفة مع تحديد هذا التبديل، الدخول في `TOC` وستحافظ على هذه الشخصيات الجديدة على النحو المبين أدناه. <br/><br/>وفي هذه الحالة، إذا لم يُعرّف التبديل، تُحوّل الشخصيات الجديدة إلى مكان أبيض واحد.</p>

<p>![tab-space-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-11.png)</p>
 |

## Insert TC Fields

يمكنك إدخال حقل "تي سي" الجديد في الموقع الحالي `DocumentBuilder` عن طريق الاتصال `DocumentBuilder.InsertField` طريقة وتحديد الاسم الميداني على أنه " م ت " إلى جانب أي تبديلات ضرورية.

ويبين المثال الرمزي التالي كيفية إدخال `TC` الميدان في الوثيقة باستخدام [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertTCField-InsertTCField.java" >}}

في كثير من الأحيان يُعيَّن خط معين للنص `TOC` وقد وُضِعَت مع `TC` الحقل والطريقة السهلة للقيام بذلك في MS Word هي إبراز النص والصحافة *ALT+SHIFT+O*. هذا يخلق تلقائياً `TC` حقل باستخدام النص المختار نفس التقنية يمكن إنجازها من خلال الشفرة الرمز الوارد أدناه سيجد نصاً يطابق المدخلات ويدخل `TC` ميداني في نفس موقع النص. ويستند الرمز إلى نفس الأسلوب المستخدم في المادة. ويبيّن المثال الرمزي التالي كيف يجد ويدخل `TC` في النص الوارد في وثيقة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-FindAndInsertATCField-InsertTCFieldHandler.java" >}}

## تعديل جدول المحتويات

### تغيير الشكل

The formatting of entries in the `TOC` لا يستخدم النمط الأصلي للقيدات المميزة، وبدلا من ذلك، يتم تشكيل كل مستوى باستخدام مكافئ `TOC` أسلوب. على سبيل المثال، المستوى الأول في `TOC` مصمم مع **TOC1** الطريقة، المستوى الثاني مصمم مع **TOC2** اسلوب و هكذا هذا يعني أن لتغيير نظرة `TOC` يجب تعديل هذه الأساليب In Aspose.Words هذه الأساليب ممثلة بمعتمد محلي `StyleIdentifier.TOC1` من خلال `StyleIdentifier.TOC9` ويمكن استرجاعها من `Document.Styles` جمع المعلومات باستخدام أجهزة تحديد الهوية هذه

وبمجرد استرجاع الأسلوب المناسب للوثيقة، يمكن تعديل شكل هذا الأسلوب. وستنعكس أي تغييرات في هذه الأساليب تلقائياً في اللجان الفرعية في الوثيقة.

The following code example changes a formatting property used in the first level `TOC` أسلوب.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-changeAFormattingPropertyUsedInFirstLevelTOCStyle.java" >}}

ومن المفيد أيضا ملاحظة أن أي شكل مباشر للفقرة (المحددة في الفقرة نفسها وليس في الأسلوب) يُدرج في القائمة. `TOC` سوف يتم نسخها من خلال الدخول في TOC. على سبيل المثال، إذا استخدم أسلوب العنوان 1 في تحديد محتوى `TOC` وهذا النمط له شكل بارد في حين أن الفقرة لها أيضا شكل مائل ينطبق عليها مباشرة. النتيجة `TOC` ولن يكون الدخول جريء لأن ذلك يشكل جزءاً من شكل نمطي، غير أنه سيكون إيجازاً نظراً إلى أن هذه الفقرة تصاغ بشكل مباشر.

يمكنك أيضا التحكم في شكل الانفصاليين المستخدم بين كل دخول ورقم الصفحة عن طريق التقصير، هذا هو خط مقطوع ينتشر عبر الصفحة التي ترقم باستخدام شخصية تابوت وتوقيف تاب يميني على مقربة من الهامش الصحيح.

استخدام `Style` الفئة المسترجعة خصيصاً `TOC` المستوى الذي ترغب في تعديله، يمكنك أيضا تعديل كيف تظهر هذه في الوثيقة.

لتغيير كيف يبدو هذا أولاً `Style.ParagraphFormat` ويجب أن يُستدعى لاسترجاع صيغة الفقرة للأسلوب. من هذا، يمكن استرجاع التوقيف عن طريق الاتصال `ParagraphFormat.TabStops` والتوقيف المناسب تم تعديله وباستخدام هذه التقنية نفسها يمكن تحريكها أو إزالتها كلياً

يُظهر المثال الرمزي التالي كيف يُعدّل موقف التوقّف الصحيح `TOC` الفقرات ذات الصلة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-modifyPositionOfRightTabStopInTOC.java" >}}

## (أ) إزالة جدول المحتويات من الوثيقة

يمكن حذف جدول محتويات من الوثيقة عن طريق إزالة جميع البنود الموجودة بين `FieldStart` and FieldEnd node of the `TOC` الحقل

الرمز أدناه يُظهر هذا إزالة الألغام `TOC` الحقل أبسط من حقل عادي ونحن لا نتابع الحقول المحورة. بدلاً من ذلك، نتفقد `FieldEnd` العقد من النوع `FieldType.FieldTOC` مما يعني أننا صادفنا نهاية التكتيك الحالي ويمكن استخدام هذه التقنية في هذه الحالة دون القلق بشأن أي حقول ملونة يمكن أن نفترض أن أي وثيقة مُشكّلة على نحو سليم لن يكون لها أي استعارة كاملة `TOC` حقل داخل آخر `TOC` الحقل

أولاً `FieldStart` كل عقد `TOC` يتم جمعها وتخزينها. المحددة `TOC` ومن ثم يُعدَّد بحيث يتم زيارة وتخزين جميع المعالم داخل الميدان. The nodes are then removed from the document. ويبين المثال الرمزي التالي كيفية إزالة محدد `TOC` من وثيقة

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-RemoveATableOfContents-RemoveATableOfContents.java" >}}

## جدول المحتويات

إذا كنت ترغب في الحصول على جدول محتويات من أي وثيقة كلمة، العينة الرمزية التالية يمكن استخدامها.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ExtractTableOfContents-ExtractTableOfContents.java" >}}
