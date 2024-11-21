---
title: البحث والاستبدال في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: البحث والاستبدال
linktitle: البحث والاستبدال
type: docs
description: "ابحث عن سلسلة أو نمط تعبير عادي في مستندك واستبدله بالنص الذي تريده باستخدام Python."
weight: 100
url: /ar/python-net/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

يمكنك التنقل بسهولة داخل المستند باستخدام لوحة المفاتيح والماوس، ولكن إذا كان لديك العديد من الصفحات للتمرير عبرها، فسوف يستغرق الأمر بعض الوقت للعثور على نص محدد في مستند طويل. سيستغرق الأمر وقتًا أطول عندما تريد استبدال أحرف أو كلمات معينة استخدمتها في المستند. تتيح لك وظيفة "البحث والاستبدال" العثور على سلسلة من الأحرف في المستند واستبدالها بتسلسل آخر من الأحرف.

يتيح لك Aspose.Words العثور على سلسلة محددة أو نمط تعبير عادي في مستندك واستبداله ببديل دون تثبيت واستخدام تطبيقات إضافية مثل Microsoft Word. سيؤدي هذا إلى تسريع العديد من مهام الكتابة والتنسيق، مما قد يوفر عليك ساعات من العمل.

تشرح هذه المقالة كيفية تطبيق استبدال السلسلة والتعبيرات العادية بدعم من الأحرف الأولية.

## طرق البحث عن {#ways-to-find-and-replace} واستبداله

يوفر Aspose.Words طريقتين لتطبيق عملية البحث والاستبدال باستخدام ما يلي:

1. *استبدال سلسلة بسيطة* - للعثور على سلسلة معينة واستبدالها بسلسلة أخرى، تحتاج إلى تحديد سلسلة بحث (أحرف أبجدية رقمية) سيتم استبدالها وفقًا لجميع التكرارات بسلسلة بديلة أخرى محددة. يجب ألا تحتوي كلا السلسلتين على رموز. ضع في الاعتبار أن مقارنة السلاسل يمكن أن تكون حساسة لحالة الأحرف، أو قد لا تكون متأكدًا من التهجئة أو لديك العديد من التهجئة المشابهة.
2. *التعبيرات العادية* - لتحديد تعبير عادي للعثور على تطابقات السلسلة الدقيقة واستبدالها وفقًا لتعبيرك العادي. لاحظ أنه يتم تعريف الكلمة على أنها تتكون من أحرف أبجدية رقمية فقط. إذا تم تنفيذ الاستبدال مع مطابقة الكلمات الكاملة فقط وكانت سلسلة الإدخال تحتوي على رموز، فلن يتم العثور على أي عبارات.

بالإضافة إلى ذلك، يمكنك استخدام أحرف أولية خاصة مع استبدال سلسلة بسيط وتعبيرات عادية لتحديد الفواصل ضمن عملية البحث والاستبدال.

يقدم Aspose.Words وظيفة البحث والاستبدال باستخدام وحدة [aspose.words.replacing](https://reference.aspose.com/words/python-net/aspose.words.replacing/). يمكنك العمل مع العديد من الخيارات أثناء عملية البحث والاستبدال باستخدام فئة [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/).

### البحث عن النص واستبداله باستخدام استبدال السلسلة البسيطة {#find-and-replace-text-using-simple-string-replacement}

يمكنك استخدام إحدى طريقتي [replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/) و[replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) للعثور على سلسلة معينة أو استبدالها وإرجاع عدد عمليات الاستبدال التي تم إجراؤها. في هذه الحالة، يمكنك تحديد سلسلة سيتم استبدالها، وسلسلة ستحل محل جميع تكراراتها، وما إذا كان الاستبدال حساسًا لحالة الأحرف، وما إذا كانت الكلمات المستقلة فقط ستتأثر.

يوضح مثال التعليمات البرمجية التالي كيفية العثور على السلسلة "_CustomerName_" واستبدالها بالسلسلة *"James Bond"*:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Hello _CustomerName_,")
print("Original document text: " + doc.range.text)

doc.range.replace("_CustomerName_", "James Bond", aw.replacing.FindReplaceOptions(aw.replacing.FindReplaceDirection.FORWARD))

print("Document text after replace: " + doc.range.text)

# Save the modified document
doc.save(docs_base.artifacts_dir + "FindAndReplace.simple_find_replace.docx")
{{< /highlight >}}

يمكنك ملاحظة الفرق بين المستند قبل تطبيق استبدال السلسلة البسيط:

<img src="/words/python-net/find-and-replace/before-simple-string-replacement.png" alt="قبل استبدال السلسلة البسيطة" style="width:600px"/>

وبعد تطبيق استبدال السلسلة البسيط:

<img src="/words/python-net/find-and-replace/after-simple-string-replacement.png" alt="بعد استبدال السلسلة البسيطة" style="width:600px"/>

### البحث عن النص واستبداله باستخدام التعبيرات العادية {#find-and-replace-text-using-regular-expressions}

التعبير العادي هو نمط يصف تسلسلًا معينًا من النص. لنفترض أنك تريد استبدال كافة التكرارات المزدوجة للكلمة بتكرار كلمة واحدة. ثم يمكنك تطبيق التعبير العادي التالي لتحديد نمط الكلمة المزدوجة: `([a-zA-Z]+) \1`.

استخدم طريقة [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) للبحث عن مجموعات أحرف معينة واستبدالها عن طريق تعيين معلمة التعبير العادي كنمط للعثور على التطابقات.

يوضح مثال التعليمات البرمجية التالي كيفية استبدال السلاسل التي تطابق نمط التعبير العادي بسلسلة استبدال محددة:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceWithRegex.py" >}}

يمكنك ملاحظة الفرق بين المستند قبل تطبيق استبدال السلسلة بالتعبيرات العادية:

<img src="/words/python-net/find-and-replace/before-replacement-with-regular-expressions.png" alt="قبل الاستبدال بالتعبيرات العادية" style="width:600px"/>

وبعد تطبيق استبدال السلسلة بالتعبيرات العادية:

<img src="/words/python-net/find-and-replace/after-replacement-with-regular-expressions.png" alt="بعد الاستبدال بالتعبيرات العادية" style="width:600px"/>

### البحث عن السلسلة واستبدالها باستخدام الأحرف الأولية {#find-and-replace-text-using-metacharacters}

يمكنك استخدام الأحرف الأولية في سلسلة البحث أو سلسلة الاستبدال إذا كان نص أو عبارة معينة تتكون من فقرات أو أقسام أو صفحات متعددة. تتضمن بعض الأحرف الأولية **&amp; ص** لفاصل الفقرة، و**&amp;ب** لفاصل القسم، و**&amp; م** لفاصل الصفحة، و**&amp; ل** لفاصل الأسطر.

{{% alert color="primary" %}}

لاحظ أن الحرف الأولي **&&** يساوي **&**. على سبيل المثال، إذا كنت تريد البحث عن نص لـ **&amp; ص** لا يمثل فاصل فقرات، فيمكنك استخدام **&amp;&amp;p**.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية استبدال النص بالفقرة وفاصل الصفحات:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextContainingMetaCharacters.py" >}}

## البحث عن سلسلة واستبدالها في رأس/تذييل مستند {#find-and-replace-string-in-header-or-footer-of-a-document}

يمكنك البحث عن النص واستبداله في قسم الرأس/التذييل في مستند Word باستخدام فئة [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/).

يوضح مثال التعليمات البرمجية التالي كيفية استبدال نص قسم الرأس في المستند الخاص بك:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextInFooter.py" >}}

يمكنك ملاحظة الفرق بين المستند قبل تطبيق استبدال سلسلة الرأس:

<img src="/words/python-net/find-and-replace/before-applying-header-string-replacement.png" alt="قبل تطبيق استبدال سلسلة الرأس" style="width:600px"/>

وبعد تطبيق استبدال سلسلة الرأس:

<img src="/words/python-net/find-and-replace/after-applying-header-string-replacement.png" alt="بعد تطبيق استبدال سلسلة الرأس" style="width:600px"/>

يشبه مثال التعليمات البرمجية لاستبدال نص قسم التذييل في مستندك إلى حد كبير مثال رمز الرأس السابق. كل ما عليك فعله هو استبدال السطرين التاليين:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.HEADER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

كالآتي:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.FOOTER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

يمكنك ملاحظة الفرق بين المستند قبل تطبيق استبدال سلسلة التذييل:

<img src="/words/python-net/find-and-replace/before-applying-footer-string-replacement.png" alt="قبل تطبيق استبدال سلسلة التذييل" style="width:600px"/>

وبعد تطبيق استبدال سلسلة التذييل:

<img src="/words/python-net/find-and-replace/after-applying-footer-string-replacement.png" alt="بعد تطبيق استبدال سلسلة التذييل" style="width:600px"/>

## تجاهل النص أثناء البحث عن {#ignore-text-during-find-and-replace} واستبداله

أثناء تطبيق عملية البحث والاستبدال، يمكنك تجاهل أجزاء معينة من النص. لذلك، يمكن استبعاد أجزاء معينة من النص من البحث، ويمكن تطبيق البحث والاستبدال على الأجزاء المتبقية فقط.

يوفر Aspose.Words العديد من خصائص البحث والاستبدال لتجاهل النص مثل [ignore_deleted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_deleted/) و[ignore_fields](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_fields/) و[ignore_inserted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_inserted/).

يوضح مثال التعليمات البرمجية التالي كيفية تجاهل النص داخل حذف المراجعات:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-IgnoreTextInsideDeleteRevisions.py" >}}

## تخصيص عملية البحث والاستبدال {#customize-find-and-replace-operation}

يوفر Aspose.Words العديد من الخصائص المختلفة للبحث عن النص واستبداله مثل تطبيق تنسيق معين بخصائص [apply_font](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_font/) و[apply_paragraph_formats](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_paragraph_format/)، واستخدام البدائل في أنماط الاستبدال بخاصية [use_substitutions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/use_substitutions/)، وغيرها.

يوضح مثال التعليمات البرمجية التالي كيفية تمييز كلمة معينة في مستندك:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-FindAndHighlight.py" >}}
