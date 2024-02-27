---
title: العمل مع جدول المحتويات
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع جدول المحتويات
linktitle: العمل مع جدول المحتويات
description: "قم بإدراج `جدول المحتويات` وإدارته في مستند باستخدام Python."
type: docs
weight: 170
url: /ar/python-net/working-with-table-of-contents/
---

غالبًا ما ستعمل مع المستندات التي تحتوي على جدول المحتويات (TOC). باستخدام Aspose.Words، يمكنك إدراج جدول المحتويات الخاص بك أو إعادة بناء جدول المحتويات الموجود في المستند بالكامل باستخدام بضعة أسطر من التعليمات البرمجية. توضح هذه المقالة كيفية العمل مع حقل جدول المحتويات وتوضح:

- كيفية إدراج ملف `TOC` جديد
- تحديث جداول المحتويات الجديدة أو الموجودة في المستند.
- تحديد مفاتيح للتحكم في التنسيق والبنية العامة لجدول المحتويات.
- كيفية تعديل أنماط ومظهر جدول المحتويات.
- كيفية إزالة حقل `TOC` بالكامل مع كافة الإدخالات الموجودة في المستند.

## إدراج جدول محتويات برمجياً

يمكنك إدراج حقل `TOC` (جدول المحتويات) في المستند في الموضع الحالي عن طريق استدعاء الأسلوب [DocumentBuilder.insert_table_of_contents](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_table_of_contents/).

يمكن إنشاء جدول محتويات مستند Word بعدة طرق وتنسيقه باستخدام مجموعة متنوعة من الخيارات. يقوم الحقل بتبديل الذي تمرره إلى الطريقة التي تتحكم في طريقة إنشاء الجدول وعرضه في مستندك.

المفاتيح الافتراضية المستخدمة في `TOC` المدرج في Microsoft Word هي **"\o "1-3 \h \z \u"**. يمكن العثور على أوصاف رموز التبديل هذه بالإضافة إلى قائمة بالمفاتيح المدعومة لاحقًا في المقالة. يمكنك إما استخدام هذا الدليل للحصول على المفاتيح الصحيحة أو إذا كان لديك بالفعل مستند يحتوي على `TOC` المشابه الذي تريده، فيمكنك إظهار رموز الحقول (*ALT+F9*) ونسخ المفاتيح مباشرة من الحقل.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج حقل "جدول المحتويات" في مستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertTableOfContents.py" >}}

يوضح الرمز جدول المحتويات الجديد الذي يتم إدراجه في مستند فارغ. يتم بعد ذلك استخدام فئة [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) لإدراج بعض نماذج تنسيق المحتوى باستخدام أنماط العناوين المناسبة التي يتم استخدامها لتمييز المحتوى المراد تضمينه في جدول المحتويات. تقوم الأسطر التالية بعد ذلك بملء `TOC` عن طريق تحديث الحقول وتخطيط الصفحة للمستند.

{{% alert color="primary" %}}

بدون الطرق المستخدمة في المثال، عندما تفتح مستند الإخراج، ستجد حقل `TOC`، ولكن بدون محتوى مرئي. وذلك لأنه تم إدراج حقل `TOC` ولكن لم يتم ملؤه بعد حتى يتم تحديثه في المستند. تتم مناقشة مزيد من المعلومات حول هذا في القسم التالي.

{{% /alert %}}

## تحديث جدول المحتويات

يتيح لك Aspose.Words تحديث ملف `TOC` بالكامل باستخدام بضعة أسطر فقط من التعليمات البرمجية. يمكن القيام بذلك لملء ملف `TOC` المدرج حديثًا أو لتحديث ملف `TOC` موجود بعد إجراء التغييرات على المستند. يجب استخدام الطريقتين التاليتين لتحديث حقول `TOC` في المستند:

1. [Document.update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/)
1. [Document.update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/)

يرجى ملاحظة أنه يلزم استدعاء طريقتي التحديث هاتين بهذا الترتيب. إذا تم العكس، فسيتم ملء جدول المحتويات ولكن لن يتم عرض أي أرقام للصفحات. يمكن تحديث أي عدد من جداول المحتويات المختلفة. ستقوم هذه الطرق تلقائيًا بتحديث جميع جداول المحتويات الموجودة في المستند.

يوضح مثال التعليمات البرمجية التالي كيفية إعادة إنشاء حقول `TOC` بالكامل في المستند عن طريق استدعاء تحديث الحقل:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-UpdateFields.py" >}}

سيؤدي الاستدعاء الأول لـ [Document.update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) إلى إنشاء ملف `TOC`، ويتم ملء كافة إدخالات النص ويظهر ملف `TOC` مكتملًا تقريبًا. الشيء الوحيد المفقود هو أرقام الصفحات التي يتم عرضها حاليًا بـ "؟". سيؤدي الاستدعاء الثاني إلى [Document.update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/) إلى إنشاء تخطيط المستند في الذاكرة. يجب القيام بذلك لجمع أرقام صفحات الإدخالات. يتم بعد ذلك إدراج أرقام الصفحات الصحيحة المحسوبة من هذا الاستدعاء في جدول المحتويات.

## استخدم المفاتيح للتحكم في سلوك جدول المحتويات.

كما هو الحال مع أي حقل آخر، يمكن لحقل `TOC` قبول المفاتيح المحددة ضمن رمز الحقل الذي يتحكم في كيفية إنشاء جدول المحتويات. يتم استخدام مفاتيح معينة للتحكم في الإدخالات التي سيتم تضمينها وعلى أي مستوى بينما يتم استخدام مفاتيح أخرى للتحكم في مظهر جدول المحتويات. يمكن دمج المفاتيح معًا للسماح بإنتاج جدول محتويات معقد.

![working-with-table-of-contents-aspose-words-net](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-1.png)


بشكل افتراضي، يتم تضمين رموز التبديل هذه أعلاه عند إدراج `TOC` افتراضي في المستند. سيتضمن `TOC` الذي لا يحتوي على مفاتيح تبديل محتوى من أنماط العناوين المضمنة (كما لو تم ضبط المفتاح \O). محولات `TOC` المتوفرة التي يدعمها Aspose.Words مدرجة أدناه ويتم وصف استخداماتها بالتفصيل. ويمكن تقسيمها إلى أقسام منفصلة بناءً على نوعها. تحدد المفاتيح الموجودة في القسم الأول المحتوى الذي سيتم تضمينه في `TOC` وتتحكم المفاتيح الموجودة في القسم الثاني في مظهر جدول المحتويات. إذا لم يكن المحول مدرجًا هنا، فهو غير مدعوم حاليًا. سيتم دعم جميع المفاتيح في الإصدارات المستقبلية. نحن نضيف المزيد من الدعم مع كل إصدار.

### مفاتيح وضع علامات الدخول

|  يُحوّل | وصف |
|  :-  |  :-  |
| **Heading Styles**<br>*(\التبديل)* | <p>يحدد رمز التبديل هذا أن `TOC` يجب أن يتم إنشاؤه من أنماط العناوين المضمنة. في Microsoft Word يتم تعريفها بواسطة العنوان 1 - العنوان 9. في Aspose.Words يتم تمثيل هذه الأنماط بواسطة تعداد StyleIdentifier المطابق. يمثل هذا التعداد معرفًا محليًا مستقلاً للنمط، على سبيل المثال `StyleIdentifier.Heading1` يمثل نمط العنوان 1. باستخدام هذا، يمكن استرداد تنسيق النمط وخصائصه من مجموعة الأنماط الخاصة بالمستند. يمكن استرداد فئة النمط المقابلة من المجموعة `Document.Styles` باستخدام الخاصية المفهرسة من النوع StyleIdentifier.</p><p>![working-with-table-of-contents-styles](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-2.png)</p><p>يتم تضمين أي محتوى منسق بهذه الأنماط في جدول المحتويات. سيحدد مستوى العنوان المستوى الهرمي المقابل للإدخال في جدول المحتويات. على سبيل المثال، سيتم التعامل مع فقرة ذات نمط عنوان 1 على أنها المستوى الأول في `TOC` بينما سيتم التعامل مع فقرة ذات عنوان 2 على أنها المستوى التالي في التسلسل الهرمي وما إلى ذلك.</p> |
| **Outline Levels**<br>*(\التبديل)* | <p>يمكن لكل فقرة تحديد مستوى المخطط التفصيلي ضمن خيارات الفقرة.</p><p>![working-with-table-of-contents-paragraph](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-3.png)</p><p>يحدد هذا الإعداد المستوى الذي يجب التعامل مع هذه الفقرة في التسلسل الهرمي للمستند. هذه ممارسة شائعة الاستخدام لتنظيم تخطيط المستند بسهولة. يمكن عرض هذا التسلسل الهرمي عن طريق التغيير إلى عرض المخطط التفصيلي في Microsoft Word. كما هو الحال مع أنماط العناوين، يمكن أن يكون هناك من 1 إلى 9 مستويات للمخطط التفصيلي بالإضافة إلى مستوى "النص الأساسي". ستظهر مستويات المخطط التفصيلي 1 - 9 في `TOC` في المستوى المقابل من التسلسل الهرمي<br>يتم تضمين أي محتوى بمستوى مخطط تفصيلي تم تعيينه في نمط الفقرة أو مباشرة على الفقرة نفسها في جدول المحتويات. في Aspose.Words يتم تمثيل مستوى المخطط التفصيلي بواسطة خاصية `ParagraphFormat.OutlineLevel` لعقدة الفقرة. يتم تمثيل مستوى المخطط التفصيلي لنمط الفقرة بنفس الطريقة بواسطة الخاصية `Style.ParagraphFormat`.</p><p>{{% alert color="primary" %}}</p><p>لاحظ أن أنماط العناوين المضمنة مثل العنوان 1 لها مستوى مخطط تفصيلي إلزامي تم تعيينه في إعدادات النمط.</p><p>{{% /alert %}}</p> |
| **Custom Styles**<br>*(\T التبديل)* | <p>سيسمح رمز التبديل هذا باستخدام الأنماط المخصصة عند تجميع الإدخالات لاستخدامها في جدول المحتويات. يُستخدم هذا غالبًا مع رمز التبديل \O لتضمين أنماط مخصصة مع أنماط العناوين المضمنة في جدول المحتويات.<br>يجب أن تكون معلمات المفتاح محاطة بعلامات الكلام. يمكن تضمين العديد من الأنماط المخصصة، ويجب تحديد الاسم لكل نمط متبوعًا بفاصلة متبوعة بالمستوى الذي يجب أن يظهر به النمط في `TOC`. يتم أيضًا فصل الأنماط الأخرى بفاصلة أيضًا.<br>على سبيل المثال</p><p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p><p>سيستخدم المحتوى المصمم بـ CustomHeading1 كمحتوى المستوى 1 في `TOC` وCustomHeading2 كمستوى 2.</p> |
| **Use TC Fields**<br>*(\F و\L التبديلات)* | <p>في الإصدارات الأقدم من Microsoft Word، كانت الطريقة الوحيدة لإنشاء `TOC` هي استخدام حقول TC. يتم إدراج هذه الحقول مخفية في المستند حتى عند ظهور رموز الحقول. وهي تتضمن النص الذي يجب عرضه في الإدخال ويتم إنشاء `TOC` منها. لا يتم الآن استخدام هذه الوظيفة في كثير من الأحيان ولكنها قد تكون مفيدة في بعض المناسبات لتضمين الإدخالات في `TOC` التي لم يتم وضع مسافة بادئة لها لتكون مرئية في المستند.<br>عند إدراج هذه الحقول تظهر مخفية حتى عند عرض رموز الحقول. ولا يمكن رؤيتها دون إظهار المحتوى المخفي. لرؤية هذه الحقول يجب تحديد إظهار تنسيق الفقرة.</p><p>![working-with-table-of-contents-paragraph-settings](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-4.png)</p> يمكن إدراج هذه الحقول في مستند في أي موضع مثل أي حقل آخر ويتم تمثيلها بواسطة تعداد `FieldType.FieldTOCEntry`.<br>يتم استخدام رمز التبديل \F في `TOC` لتحديد أنه يجب استخدام حقول TC كإدخالات. ويعني التبديل من تلقاء نفسه دون أي معرف إضافي أنه سيتم تضمين أي حقل TC في المستند. ستحدد أي معلمة إضافية، غالبًا ما تكون حرفًا واحدًا، أن حقول TC التي تحتوي على مفتاح \f مطابق فقط هي التي سيتم تضمينها في جدول المحتويات. على سبيل المثال *</p><p>{{< highlight csharp >}}{ TOC \f t }{{< /highlight >}}</p><p>سيتضمن فقط حقول TC مثل</p><p>{{< highlight csharp >}}{   TC \f t }{{< /highlight >}}</p><p>يحتوي حقل `TOC` أيضًا على مفتاح تبديل ذي صلة، حيث يحدد المفتاح "\L" أنه يتم تضمين حقل TC فقط الذي يحتوي على مستويات ضمن النطاق المحدد.</p><p>![todo:image_alt_text](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-5.png)</p><p>يمكن أيضًا أن تحتوي حقول `TC` نفسها على عدة مفاتيح تعيين. هؤلاء هم:</p><p>- *\F – تم شرحه أعلاه.*</p><p>- *\L – يحدد المستوى الذي سيظهر فيه حقل TC هذا في `TOC`. وسيتضمن `TOC` الذي يستخدم نفس المفتاح حقل TC هذا فقط إذا كان ضمن النطاق المحدد.*</p><p>- _\N - لا يتم عرض ترقيم الصفحات لإدخال `TOC` هذا. يمكن العثور على نموذج التعليمات البرمجية لكيفية إدراج حقول TC في القسم التالي.</p> |

### المظهر المتعلق بالمفاتيح

|  يُحوّل | وصف |
|  :-  |  :-  |
| **Omit Page Numbers**<br>*(\N التبديل)* | <p>يتم استخدام رمز التبديل هذا لإخفاء أرقام الصفحات لمستويات معينة من جدول المحتويات. على سبيل المثال يمكنك تحديد</p><p>{{< highlight csharp >}}{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p><p>وسيتم إخفاء أرقام الصفحات الموجودة في إدخالات المستويين 3 و4 مع النقاط الرئيسية (إن وجدت). لتحديد مستوى واحد فقط، يجب الاستمرار في استخدام النطاق، على سبيل المثال، "1-1" سوف يستبعد أرقام الصفحات للمستوى الأول فقط.<br>سيؤدي توفير أي نطاق للمستوى إلى حذف أرقام الصفحات لكافة المستويات في جدول المحتويات. يعد هذا مفيدًا عند تصدير مستند إلى HTML أو تنسيق مشابه. وذلك لأن التنسيقات المستندة إلى HTML لا تحتوي على أي مفهوم للصفحة وبالتالي لا تحتاج إلى أي ترقيم للصفحات.</p><p>![todo:image_alt_text](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-6.png)</p> |
| **Insert As Hyperlinks**<br>*(\H التبديل)* | <p>يحدد رمز التبديل هذا إدراج `TOC` إدخالات كارتباطات تشعبية. عند عرض مستند في Microsoft Word ستظل هذه الإدخالات تظهر كنص عادي داخل `TOC` ولكنها مرتبطة ارتباطًا تشعبيًا وبالتالي يمكن استخدامها للانتقال إلى موضع الإدخال الأصلي في المستند باستخدام *Ctrl + Left Click* في Microsoft Word. عند تضمين رمز التبديل هذا، يتم أيضًا الاحتفاظ بهذه الارتباطات بتنسيقات أخرى. على سبيل المثال، في التنسيقات المستندة إلى HTML بما في ذلك EPUB والتنسيقات المعروضة مثل PDF وXPS، سيتم تصديرها كروابط عمل.<br>بدون مفتاح التبديل هذا، سيتم تصدير `TOC` في كل هذه المخرجات كنص عادي ولن يوضح هذا السلوك. إذا تم فتح مستند في برنامج MS Word، فلن يكون نص الإدخالات قابلاً للنقر عليه بهذه الطريقة، ولكن لا يزال من الممكن استخدام أرقام الصفحات للانتقال إلى الإدخال الأصلي.</p><p>![working-with-table-of-contents-titles](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-7.png)</p> |
| **Set Separator Character**<br>*(\P التبديل)* | <p>يسمح رمز التبديل هذا بتغيير المحتوى الذي يفصل بين عنوان الإدخال وترقيم الصفحات بسهولة في جدول المحتويات. يجب تحديد الفاصل الذي سيتم استخدامه بعد رمز التبديل هذا وإحاطته بعلامات الكلام.<br>وبخلاف ما هو موثق في وثائق Office، يمكن استخدام حرف واحد فقط بدلاً من خمسة أحرف كحد أقصى. وينطبق هذا على كل من MS Word وAspose.Words.<br>لا يُنصح باستخدام رمز التبديل هذا لأنه لا يسمح بقدر كبير من التحكم فيما يستخدمه لفصل الإدخالات وأرقام الصفحات في جدول المحتويات. بدلاً من ذلك، يوصى بتحرير النمط `TOC` المناسب مثل `StyleIdentifier.TOC1` ومن هناك تحرير النمط الرئيسي مع إمكانية الوصول إلى أعضاء خط محددين وما إلى ذلك. يمكن العثور على مزيد من التفاصيل حول كيفية القيام بذلك لاحقًا في المقالة.</p><p>![working-with-table-of-contents-toc](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-8.png)</p> |
| **Preserve Tab Entries**<br>*(\W التبديل)* | <p>سيؤدي استخدام رمز التبديل هذا إلى تحديد أنه سيتم الاحتفاظ بأي إدخالات تحتوي على حرف علامة تبويب، على سبيل المثال، عنوان يحتوي على علامة تبويب في نهاية السطر، كحرف علامة تبويب مناسب عند تعبئة جدول المحتويات. وهذا يعني أن وظيفة حرف علامة التبويب ستكون موجودة في `TOC` ويمكن استخدامها لتنسيق الإدخال. على سبيل المثال، قد تستخدم بعض الإدخالات علامات الجدولة وأحرف الجدولة لتباعد النص بشكل متساوٍ. طالما أن المستوى `TOC` المقابل يحدد علامات الجدولة المكافئة، فستظهر إدخالات `TOC` التي تم إنشاؤها بمسافات مماثلة.<br><br>في نفس الموقف، إذا لم يتم تعريف رمز التبديل هذا، فسيتم تحويل أحرف علامة التبويب إلى مساحة بيضاء مكافئة لعلامات التبويب غير العاملة. ثم لن يظهر الإخراج كما هو متوقع.</p><p>![working-with-table-of-contents-aspose](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-9.png)</p> |
| **Preserve New Line Entries**<br>*(\X التبديل)* | <p>كما هو الحال مع رمز التبديل أعلاه، يحدد رمز التبديل هذا أنه سيتم الاحتفاظ بالعناوين الممتدة عبر أسطر متعددة (باستخدام أحرف سطر جديدة وليس فقرات منفصلة) كما هي في جدول المحتويات الذي تم إنشاؤه. على سبيل المثال، يمكن للعنوان الذي سيتم نشره عبر أسطر متعددة استخدام حرف السطر الجديد (Ctrl + Enter أو `ControlChar.LineBreak`) لفصل المحتوى عبر أسطر مختلفة. مع تحديد رمز التبديل هذا، سيحتفظ الإدخال في `TOC` بأحرف السطر الجديدة هذه كما هو موضح أدناه.<br><br>في هذه الحالة، إذا لم يتم تعريف المفتاح، فسيتم تحويل أحرف السطر الجديد إلى مسافة بيضاء واحدة.</p><p>![working-with-table-of-contents-aspose-words](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-10.png)</p> |

## أدخل حقول TC

يمكنك إدراج حقل TC جديد في الموضع الحالي لـ [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) عن طريق استدعاء طريقة [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) وتحديد اسم الحقل كـ "TC" مع أي مفاتيح مطلوبة. يوضح المثال أدناه كيفية إدراج حقل `TC` في المستند باستخدام [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertTCField.py" >}}


## تعديل جدول المحتويات

لا يستخدم تنسيق الإدخالات في `TOC` الأنماط الأصلية للإدخالات المحددة، وبدلاً من ذلك يتم تنسيق كل مستوى باستخدام نمط `TOC` مكافئ. على سبيل المثال، يتم تنسيق المستوى الأول في `TOC` بنمط **جدول المحتويات1**، ويتم تنسيق المستوى الثاني بنمط **TOC2**، وهكذا. وهذا يعني أنه لتغيير مظهر `TOC` يجب تعديل هذه الأنماط. في Aspose.Words، يتم تمثيل هذه الأنماط بواسطة لغة [StyleIdentifier.TOC1](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#toc1) المستقلة حتى [StyleIdentifier.TOC9](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#toc9) ويمكن استرجاعها من مجموعة [Document.styles](https://reference.aspose.com/words/python-net/aspose.words/documentbase/styles/) باستخدام هذه المعرفات.

بمجرد استرداد النمط المناسب للمستند، يمكن تعديل التنسيق لهذا النمط. ستنعكس أي تغييرات يتم إجراؤها على هذه الأنماط تلقائيًا على جداول المحتويات في المستند. يوضح المثال أدناه خاصية التنسيق المستخدمة في نمط `TOC` للمستوى الأول.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_table_of_content-ChangeStyleOfTOCLevel.py" >}}

ومن المفيد أيضًا ملاحظة أن أي تنسيق مباشر لفقرة (محددة في الفقرة نفسها وليس في النمط) تم وضع علامة عليها لتضمين `TOC` سيتم نسخه في الإدخال الموجود في جدول المحتويات. على سبيل المثال، إذا تم استخدام نمط العنوان 1 لوضع علامة على محتوى `TOC` وكان لهذا النمط تنسيق غامق بينما تحتوي الفقرة أيضًا على تنسيق مائل مطبق عليها مباشرة. لن يكون إدخال `TOC` الناتج غامقًا لأنه جزء من تنسيق النمط ولكنه سيكون مائلًا لأنه يتم تنسيقه مباشرة على الفقرة.

يمكنك أيضًا التحكم في تنسيق الفواصل المستخدمة بين كل إدخال ورقم الصفحة. افتراضيًا، يكون هذا خطًا منقطًا يمتد عبر ترقيم الصفحات باستخدام حرف علامة جدولة وعلامة جدولة على اليمين بالقرب من الهامش الأيمن.

باستخدام فئة [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) التي تم استردادها لمستوى `TOC` المحدد الذي تريد تعديله، يمكنك أيضًا تعديل كيفية ظهورها في المستند. لتغيير كيفية ظهور هذا أولاً، يجب استدعاء [Style.paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/style/paragraph_format/) لاسترداد تنسيق الفقرة للنمط. من هذا يمكن استرداد علامات الجدولة عن طريق استدعاء [ParagraphFormat.tab_stops](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/tab_stops/) وتعديل علامة الجدولة المناسبة. باستخدام هذه التقنية نفسها، يمكن نقل علامة التبويب نفسها أو إزالتها معًا. يوضح المثال أدناه كيفية تعديل موضع علامة التبويب اليمنى في الفقرات ذات الصلة بـ `TOC`.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_table_of_content-ChangeTOCTabStops.py" >}}

## إزالة جدول المحتويات من المستند

يمكن إزالة جدول المحتويات من المستند عن طريق إزالة جميع العقد الموجودة بين عقدة [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) و[FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) لحقل `TOC`. يوضح الكود أدناه هذا. تعد إزالة حقل `TOC` أبسط من الحقل العادي لأننا لا نتتبع الحقول المتداخلة. بدلاً من ذلك، نتحقق من أن عقدة [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) من النوع [FieldType.FIELD_TOC](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_toc) مما يعني أننا واجهنا نهاية جدول المحتويات الحالي. يمكن استخدام هذه التقنية في هذه الحالة دون القلق بشأن أي حقول متداخلة حيث يمكننا أن نفترض أن أي مستند تم تشكيله بشكل صحيح لن يحتوي على حقل `TOC` متداخل بالكامل داخل حقل `TOC` آخر.

أولاً، يتم جمع وتخزين عقد [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) لكل `TOC`. يتم بعد ذلك تعداد `TOC` المحدد بحيث تتم زيارة جميع العقد داخل الحقل وتخزينها. ثم تتم إزالة العقد من المستند. يوضح نموذج Below code كيفية إزالة `TOC` محدد من مستند.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-remove_content-RemoveTOCFromDocument.py" >}}

## استخراج جدول المحتويات

إذا كنت تريد استخراج جدول محتويات من أي مستند Word، فيمكن استخدام نموذج التعليمات البرمجية التالي.

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Table of contents.docx")

for field in doc.range.fields :
            
    if (field.type == aw.fields.FieldType.FIELD_HYPERLINK) :
                
        hyperlink = field.as_field_hyperlink()
        if (hyperlink.sub_address != None and hyperlink.sub_address.find("_Toc") == 0) :
                    
            tocItem = field.start.get_ancestor(aw.NodeType.PARAGRAPH).as_paragraph()
                        
            print(tocItem.to_string(aw.SaveFormat.TEXT).strip())
            print("------------------")
    
            bm = doc.range.bookmarks.get_by_name(hyperlink.sub_address)
            pointer = bm.bookmark_start.get_ancestor(aw.NodeType.PARAGRAPH).as_paragraph()
                        
            print(pointer.to_string(aw.SaveFormat.TEXT))
{{< /highlight >}}
