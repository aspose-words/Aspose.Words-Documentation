---
title: البحث والاستبدال في C#
second_title: Aspose.Words لـ .NET
articleTitle: البحث والاستبدال
linktitle: البحث والاستبدال
type: docs
description: "ابحث عن سلسلة أو نمط تعبير عادي في مستندك واستبدله بالنص الذي تريده باستخدام C#."
weight: 100
url: /ar/net/find-and-replace/
---

يمكنك التنقل بسهولة داخل المستند باستخدام لوحة المفاتيح والماوس، ولكن إذا كان لديك العديد من الصفحات للتمرير عبرها، فسوف يستغرق الأمر بعض الوقت للعثور على نص محدد في مستند طويل. سيستغرق الأمر وقتًا أطول عندما تريد استبدال أحرف أو كلمات معينة استخدمتها في المستند. تتيح لك وظيفة "البحث والاستبدال" العثور على سلسلة من الأحرف في المستند واستبدالها بتسلسل آخر من الأحرف.

يتيح لك Aspose.Words العثور على سلسلة محددة أو نمط تعبير عادي في مستندك واستبداله ببديل دون تثبيت واستخدام تطبيقات إضافية مثل Microsoft Word. سيؤدي هذا إلى تسريع العديد من مهام الكتابة والتنسيق، مما قد يوفر عليك ساعات من العمل.

تشرح هذه المقالة كيفية تطبيق استبدال السلسلة والتعبيرات العادية بدعم من الأحرف الأولية.

## طرق البحث عن {#ways-to-find-and-replace} واستبداله

يوفر Aspose.Words طريقتين لتطبيق عملية البحث والاستبدال باستخدام ما يلي:

1. *استبدال سلسلة بسيطة* - للعثور على سلسلة معينة واستبدالها بسلسلة أخرى، تحتاج إلى تحديد سلسلة بحث (أحرف أبجدية رقمية) سيتم استبدالها وفقًا لجميع التكرارات بسلسلة بديلة أخرى محددة. يجب ألا تحتوي كلا السلسلتين على رموز. ضع في الاعتبار أن مقارنة السلاسل يمكن أن تكون حساسة لحالة الأحرف، أو قد لا تكون متأكدًا من التهجئة أو لديك العديد من التهجئة المشابهة.
2. *التعبيرات العادية* - لتحديد تعبير عادي للعثور على تطابقات السلسلة الدقيقة واستبدالها وفقًا لتعبيرك العادي. لاحظ أنه يتم تعريف الكلمة على أنها تتكون من أحرف أبجدية رقمية فقط. إذا تم تنفيذ الاستبدال مع مطابقة الكلمات الكاملة فقط وكانت سلسلة الإدخال تحتوي على رموز، فلن يتم العثور على أي عبارات.

بالإضافة إلى ذلك، يمكنك استخدام أحرف أولية خاصة مع استبدال سلسلة بسيط وتعبيرات عادية لتحديد الفواصل ضمن عملية البحث والاستبدال.

يقدم Aspose.Words وظيفة البحث والاستبدال بمساحة الاسم [Aspose.Words.Replacing](https://reference.aspose.com/words/net/aspose.words.replacing/). يمكنك العمل مع العديد من الخيارات أثناء عملية البحث والاستبدال باستخدام فئة [FindReplaceOptions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/).

### البحث عن النص واستبداله باستخدام استبدال سلسلة بسيط {#find-and-replace-text-using-simple-string-replacement}

يمكنك استخدام إحدى طرق [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/#replace/) للعثور على سلسلة معينة أو استبدالها وإرجاع عدد عمليات الاستبدال التي تم إجراؤها. في هذه الحالة، يمكنك تحديد سلسلة سيتم استبدالها، وسلسلة ستحل محل جميع تكراراتها، وما إذا كان الاستبدال حساسًا لحالة الأحرف، وما إذا كانت الكلمات المستقلة فقط ستتأثر.

يوضح مثال التعليمات البرمجية التالي كيفية العثور على السلسلة "_CustomerName_" واستبدالها بالسلسلة *"James Bond"*:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cs" >}}

يمكنك ملاحظة الفرق بين المستند قبل تطبيق استبدال السلسلة البسيط:

<img src="/words/net/find-and-replace/before-simple-string-replacement.png" alt="قبل استبدال السلسلة البسيطة" style="width:600px"/>

وبعد تطبيق استبدال السلسلة البسيط:

<img src="/words/net/find-and-replace/after-simple-string-replacement.png" alt="بعد استبدال السلسلة البسيطة" style="width:600px"/>

### البحث عن النص واستبداله باستخدام التعبيرات العادية {#find-and-replace-text-using-regular-expressions}

التعبير العادي (regex) هو نمط يصف تسلسلًا معينًا من النص. لنفترض أنك تريد استبدال كافة التكرارات المزدوجة للكلمة بتكرار كلمة واحدة. ثم يمكنك تطبيق التعبير العادي التالي لتحديد نمط الكلمة المزدوجة: `([a-zA-Z]+) \1`.

استخدم طريقة [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/) الأخرى للبحث عن مجموعات أحرف معينة واستبدالها عن طريق تعيين المعلمة `Regex` كنمط التعبير العادي للعثور على التطابقات.

يوضح مثال التعليمات البرمجية التالي كيفية استبدال السلاسل التي تطابق نمط التعبير العادي بسلسلة استبدال محددة:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cs" >}}

يمكنك ملاحظة الفرق بين المستند قبل تطبيق استبدال السلسلة بالتعبيرات العادية:

<img src="/words/net/find-and-replace/before-replacement-with-regular-expressions.png" alt="قبل الاستبدال بالتعبيرات العادية" style="width:600px"/>

وبعد تطبيق استبدال السلسلة بالتعبيرات العادية:

<img src="/words/net/find-and-replace/after-replacement-with-regular-expressions.png" alt="بعد الاستبدال بالتعبيرات العادية" style="width:600px"/>

### البحث عن السلسلة واستبدالها باستخدام الأحرف الأولية {#find-and-replace-text-using-metacharacters}

يمكنك استخدام الأحرف الأولية في سلسلة البحث أو سلسلة الاستبدال إذا كان نص أو عبارة معينة تتكون من فقرات أو أقسام أو صفحات متعددة. تتضمن بعض الأحرف الأولية **&amp; ص** لفاصل الفقرة، و**&amp;ب** لفاصل القسم، و**&amp; م** لفاصل الصفحة، و**&amp; ل** لفاصل الأسطر.

{{% alert color="primary" %}}

لاحظ أن الحرف الأولي **&&** يساوي **&**. على سبيل المثال، إذا كنت تريد البحث عن نص لـ **&amp; ص** لا يمثل فاصل فقرات، فيمكنك استخدام **&amp;&amp;p**.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية استبدال النص بالفقرة وفاصل الصفحات:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cs" >}}

## البحث عن سلسلة واستبدالها في رأس/تذييل مستند {#find-and-replace-string-in-header-or-footer-of-a-document}

يمكنك البحث عن النص واستبداله في قسم الرأس/التذييل لمستند Word باستخدام فئة [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/).

يوضح مثال التعليمات البرمجية التالي كيفية استبدال نص قسم الرأس في المستند الخاص بك:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cs" >}}

يمكنك ملاحظة الفرق بين المستند قبل تطبيق استبدال سلسلة الرأس:

<img src="/words/net/find-and-replace/before-applying-header-string-replacement.png" alt="قبل تطبيق استبدال سلسلة الرأس" style="width:600px"/>

وبعد تطبيق استبدال سلسلة الرأس:

<img src="/words/net/find-and-replace/after-applying-header-string-replacement.png" alt="بعد تطبيق استبدال سلسلة الرأس" style="width:600px"/>

يشبه مثال التعليمات البرمجية لاستبدال نص قسم التذييل في مستندك إلى حد كبير مثال رمز الرأس السابق. كل ما عليك فعله هو استبدال السطرين التاليين:

{{< highlight csharp >}}
HeaderFooter header = headersFooters[HeaderFooterType.HeaderPrimary];
header.Range.Replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

كالآتي:

{{< highlight csharp >}}
HeaderFooter footer = headersFooters[HeaderFooterType.FooterPrimary];
int currentYear = System.DateTime.Now.Year;
footer.Range.Replace("(C) 2006 Aspose Pty Ltd.", $"Copyright (C) {currentYear} by Aspose Pty Ltd.", options);
{{< /highlight >}}

يمكنك ملاحظة الفرق بين المستند قبل تطبيق استبدال سلسلة التذييل:

<img src="/words/net/find-and-replace/before-applying-footer-string-replacement.png" alt="قبل تطبيق استبدال سلسلة التذييل" style="width:600px"/>

وبعد تطبيق استبدال سلسلة التذييل:

<img src="/words/net/find-and-replace/after-applying-footer-string-replacement.png" alt="بعد تطبيق استبدال سلسلة التذييل" style="width:600px"/>

## تجاهل النص أثناء البحث عن {#ignore-text-during-find-and-replace} واستبداله

أثناء تطبيق عملية البحث والاستبدال، يمكنك تجاهل أجزاء معينة من النص. لذلك، يمكن استبعاد أجزاء معينة من النص من البحث، ويمكن تطبيق البحث والاستبدال على الأجزاء المتبقية فقط.

يوفر Aspose.Words العديد من خصائص البحث والاستبدال لتجاهل النص مثل [IgnoreDeleted](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignoredeleted/) و[IgnoreFieldCodes](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefieldcodes/) و[IgnoreFields](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefields/) و[IgnoreFootnotes](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefootnotes/) و[IgnoreInserted](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignoreinserted/).

يوضح مثال التعليمات البرمجية التالي كيفية تجاهل النص داخل حذف المراجعات:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cs" >}}

## تخصيص عملية البحث والاستبدال {#customize-find-and-replace-operation}

يوفر Aspose.Words العديد من نصوص [properties](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) المختلفة للبحث عن النص واستبداله، مثل تطبيق تنسيق معين بخصائص [ApplyFont](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyfont/) و[ApplyParagraphFormats](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/)، واستخدام البدائل في أنماط الاستبدال بخاصية [UseSubstitutions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/)، وغيرها.

يوضح مثال التعليمات البرمجية التالي كيفية تمييز كلمة معينة في مستندك:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cs" >}}

يتيح لك Aspose.Words استخدام واجهة [IReplacingCallback](https://reference.aspose.com/words/net/aspose.words.replacing/ireplacingcallback/) لإنشاء واستدعاء طريقة مخصصة أثناء عملية الاستبدال. قد يكون لديك بعض حالات الاستخدام التي تحتاج فيها إلى تخصيص عملية البحث والاستبدال، مثل استبدال النص المحدد بتعبير عادي بعلامات HTML، لذلك ستطبق بشكل أساسي الاستبدال بإدراج HTML.

إذا كنت بحاجة إلى استبدال سلسلة بعلامة HTML، فقم بتطبيق واجهة **IReplacingCallback** لتخصيص عملية البحث والاستبدال بحيث تبدأ المطابقة في بداية التشغيل مع عقدة المطابقة الخاصة بمستندك. دعونا نقدم عدة أمثلة لاستخدام **IReplacingCallback**.

يوضح مثال التعليمات البرمجية التالي كيفية استبدال النص المحدد بـ HTML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cs" >}}

يوضح مثال التعليمات البرمجية التالي كيفية تمييز الأرقام الموجبة باللون الأخضر والأرقام السالبة باللون الأحمر:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cs" >}}

يوضح مثال التعليمات البرمجية التالي كيفية إضافة رقم سطر إلى كل سطر:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cs" >}}
