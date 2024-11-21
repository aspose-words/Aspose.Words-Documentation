---
title: نشر الوثيقة في Java
second_title: Aspose.Words for Java
articleTitle: نشر الوثيقة
linktitle: نشر الوثيقة
description: "Aspose.Words for Java يزودكم بطريقة كفؤة لتقسيم وثيقة واحدة إلى وثائق متعددة عناوين أو أقسام، وكذلك صفحات أو نطاقات الصفحات."
type: docs
weight: 90
url: /ar/java/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* " أو " نشر وثيقة* هو عملية كسر وثيقة كبيرة في عدد أكبر من الملفات الأصغر. هناك أسباب مختلفة لتقسيم ملف على سبيل المثال، تحتاج فقط بعض الصفحات من وثيقة محددة وليس كامل واحد. أو لأسباب تتعلق بالخصوصية، تريد أن تشارك فقط بعض أجزاء وثيقة مع الآخرين. ومع سمة الانقسام، يمكنك الحصول على الأجزاء المطلوبة من الوثيقة فقط واتخاذ الإجراءات اللازمة معها، على سبيل المثال، للوقوف أو الادخار أو الارسال.

Aspose.Words يزودكم بطريقة فعالة لتقسيم وثيقة واحدة إلى وثائق متعددة عناوين أو أقسام. يمكنك أيضاً تقسيم الوثيقة حسب الصفحات أو حسب نطاق الصفحات ويرد في هذه المادة وصف لخياري التقسيم.

لتقسيم الوثيقة إلى ملفات أصغر Aspose.Words, يجب أن تتبع هذه الخطوات:

1 وضع الوثيقة في أي شكل من أشكال الدعم.
1 انشر الوثيقة
1 وفر وثائق النواتج

بعد أن تقسم وثيقة، ستتمكن من فتح جميع وثائق النواتج التي ستبدأ بالصفحات المطلوبة، والنص، وما إلى ذلك.

{{% alert color="primary" %}}

**حاول على الإنترنت**

يمكنك أن تجرب هذه الوظيفة معنا [قسم الوثائق الإلكترونية المجانية](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Split a Document Using Different Criteria {#split-a-document-using-different-criteria}

Aspose.Words يسمح لك بتقسيم وثائق EPUB أو HTML إلى فصول وفقا لمعايير مختلفة. وفي هذه العملية، يتم الحفاظ على أسلوب ومخطط وثيقة المصدر بالنسبة لوثائق النواتج.

يمكنك تحديد المعايير باستخدام [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) العد حتى تتمكن من تقسيم الوثيقة إلى فصول باستخدام أحد المعايير التالية أو الجمع بين أكثر من معيار واحد معا:

-تحت الفقرة
- استراحة القسم
- استراحة العمود
- استراحة

عندما ينقذ الناتج إلى HTML، Aspose.Words وفر كل فصل على حدة كملف مستقل لشبكة HTML. As a result, the document will be divided into multiple HTML files. عندما ينقذ الناتج إلى EPUB، Aspose.Words إنقاذ النتيجة في ملف واحد من طراز EPUB بغض النظر عن `DocumentSplitCriteria` القيمة التي استخدمتها وبالتالي، فإن استخدام معايير الوثائق المستنسخة لوثائق المكتب لا يؤثر إلا على ظهور محتواها في تطبيقات القارئ: سيقسم المحتوى إلى فصول ولن تظهر الوثيقة باستمرار.

{{% alert color="primary" %}}

لا يمكنك تقسيم وثيقة باستخدام [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) الممتلكات عند الادخار في شكل MHTML.

{{% /alert %}}

وفي هذا الفرع، لا ننظر إلا في بعض المعايير المحتملة للانقسام.

### Split a Document by Headings {#split-a-document-by-headings}

أن تقسم الوثيقة إلى فصول حسب العناوين، وأن تستخدم **HeadingParagraph** قيمة **DocumentSplitCriteria** ملكية

إذا كنت بحاجة إلى تقسيم وثيقة بمستوى محدد من فقرات العناوين، مثل العناوين 1 و 2 و 3، استخدم أيضا [DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel) ملكية وسينقسم الناتج إلى فقرات مصممة بمستوى العنوان المحدد.

ويبين المثال الرمزي التالي كيفية تقسيم الوثيقة إلى أجزاء أصغر عن طريق العنوان:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

يرجى ملاحظة أنه بالنسبة لهذه المعايير، Aspose.Words فقط يدعم الادخار في شكل HTML عندما يقسم.

وعندما تُوفّر الوثيقة إلى EPUB، لا تقسم إلى عدة ملفات، ولن يكون هناك سوى ملف واحد للنواتج.

### نشر وثيقة من قبل الأقسام {#split-a-document-by-sections}

Aspose.Words أيضاً يُمكّنُك أَنْ تَستعملَ إستراحةَ القسمِ لتَقسيم الوثائقِ وإنقاذهم إلى HTML. لهذا الغرض، استخدام **SectionBreak** كما **DocumentSplitCriteria**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

هناك طريقة أخرى لتقسيم وثيقة المصدر إلى وثائق ناتج متعددة ويمكنك اختيار أي شكل ناتج مدعوم من خلال Aspose.Words.

ويبيّن المثال الرمزي التالي كيفية تقسيم الوثيقة إلى أجزاء أصغر حجماً حسب أبوابها (دون استخدامها) `DocumentSplitCriteria` الممتلكات:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## توزيع الصفحات {#splitting-by-pages}

ويمكنكم أيضاً تقسيم صفحة الوثائق حسب الصفحة، حسب نطاق الصفحات، أو البدء بأرقام الصفحات المحددة. وفي هذه الحالة [ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int) الطريقة يمكنها القيام بالعمل

يصف هذا الفرع عدة حالات استخدام لوثائق التقسيم بالصفحة باستخدام [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) الصف و الصف **ExtractPages** طريقة

{{% alert color="primary" %}}

يمكنك استخدام أي [الوثائق الداعمة](/words/ar/java/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

نظراً للكثير من المعاني التي تظهر بينما تقلل عدد الصفحات، تطابق كامل مع Microsoft Word التخطيط مهمة معقدة ولذلك، ورهنا بتعقد الوثيقة، قد تكون هناك اختلافات طفيفة في مخطط الوثيقة الناتج عن الوثيقة الأصلية.

{{% /alert %}}

### نشر الوثيقة الصفحة {#split-a-document-page-by-page}

Aspose.Words يُمكّنُك أَنْ تَقْسمَ a صفحة متعددة الصفحاتِ بالصفحةِ.

ويبين المثال الرمزي التالي كيفية تقسيم الوثيقة وإنقاذ كل صفحة كوثيقة منفصلة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### Split a Document by Page Ranges {#split-a-document-by-page-ranges}

Aspose.Words ويتيح تقسيم وثيقة متعددة الصفحات حسب نطاق الصفحات. يمكنك أن تقسم ملفاً واحداً إلى ملفات متعددة بمجالات عدة أو تختار فقط نطاق واحد وتحتفظ فقط بهذا الجزء من وثيقة المصدر ملاحظة أنه يمكنك اختيار نطاق الصفحات وفقاً لعدد الصفحات الأقصى والدنيا من الوثيقة

ويبيّن المثال الرمزي التالي كيفية تقسيم الوثيقة إلى أجزاء أصغر حجماً حسب عدد الصفحات مع مؤشرات بداية ونهاية محددة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## خيار الرد على الوثيقة {#callback-option-for-saving-a-document}

يمكنك استخدام [DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback) مراقبة الممتلكات Aspose.Words يوفّر أجزاء من الوثائق عندما تصدر هذه الوثيقة في شكل HTML. هذه الملكية تسمح لك بإعادة تسمية ملفات النواتج أو حتى إعادة توجيهها إلى مجاري العرف

ويُرجى ملاحظة أن هذا الاسترجاع ليس مفيداً عندما يُنقذ المكتب لأن جميع أجزاء النواتج يجب أن تُحفظ في حاوية واحدة - ملف " آب ". لذا، إعادة توجيه التيار غير مدعومة، وتأثير إعادة التسميات غير مرئي لأن الملفات تُعاد تسميتها داخل الحاوية.

## دمج وثيقة سبليت مع وثيقة أخرى {#merge-the-split-document-with-another-file}

Aspose.Words ويمكِّنكم من دمج الوثيقة المجزأة مع وثيقة أخرى لتشكيل وثيقة جديدة. يمكن تسمية هذا بدمج الوثائق

ويبين المثال الرمزي التالي كيفية دمج وثيقة منقسمة مع وثيقة أخرى:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
