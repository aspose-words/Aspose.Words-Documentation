---
title: البحث والاستبدال في Java
second_title: Aspose.Words ل Java
articleTitle: البحث والاستبدال
linktitle: البحث والاستبدال
type: docs
description: "ابحث عن سلسلة أو نمط تعبير عادي في المستند واستبدله بالنص الذي تريده باستخدام Java."
weight: 100
url: /ar/java/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

يمكنك التنقل بسهولة داخل المستند باستخدام لوحة المفاتيح والماوس، ولكن إذا كان لديك العديد من الصفحات للتمرير خلالها، فسوف يستغرق الأمر بعض الوقت للعثور على نص معين في مستند طويل. سيكون الأمر أكثر استهلاكا للوقت عندما تريد استبدال أحرف أو كلمات معينة استخدمتها في المستند الخاص بك. تتيح لك وظيفة" البحث والاستبدال " العثور على سلسلة من الأحرف في مستند واستبدالها بتسلسل آخر من الأحرف.

Aspose.Words يسمح لك بالعثور على سلسلة معينة أو نمط تعبير عادي في المستند واستبداله ببديل دون تثبيت واستخدام تطبيقات إضافية مثل Microsoft Word. سيؤدي ذلك إلى تسريع العديد من مهام الكتابة والتنسيق، مما قد يوفر لك ساعات من العمل.

تشرح هذه المقالة كيفية تطبيق استبدال السلسلة والتعبيرات العادية بدعم من الأحرف الأولية.

## طرق لإيجاد واستبدال {#ways-to-find-and-replace}

Aspose.Words يوفر طريقتين لتطبيق عملية البحث والاستبدال باستخدام ما يلي:

1. *Simple string replacement* - للعثور على سلسلة معينة واستبدالها بسلسلة أخرى، تحتاج إلى تحديد سلسلة بحث (أحرف أبجدية رقمية) سيتم استبدالها وفقا لجميع التكرارات بسلسلة استبدال أخرى محددة. يجب ألا تحتوي كلتا السلسلتين على رموز. ضع في اعتبارك أن مقارنة السلسلة يمكن أن تكون حساسة لحالة الأحرف، أو قد تكون غير متأكد من التهجئة أو لديك عدة تهجئات متشابهة.
2. *Regular expressions* - لتحديد تعبير عادي للعثور على تطابقات السلسلة الدقيقة واستبدالها وفقا لتعبيرك العادي. لاحظ أنه يتم تعريف الكلمة على أنها تتكون من أحرف أبجدية رقمية فقط. إذا تم تنفيذ بديل مع مطابقة كلمات كاملة فقط وكانت سلسلة الإدخال تحتوي على رموز، فلن يتم العثور على عبارات.

أيضا، يمكنك استخدام الأحرف الأولية الخاصة مع استبدال سلسلة بسيطة والتعبيرات العادية لتحديد فواصل داخل عملية البحث والاستبدال.

Aspose.Words يعرض وظيفة البحث والاستبدال بـ [IReplacingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/). يمكنك العمل مع العديد من الخيارات أثناء عملية البحث والاستبدال باستخدام فئة [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/).

### البحث عن النص واستبداله باستخدام استبدال سلسلة بسيطة {#find-and-replace-text-using-simple-string-replacement}

يمكنك استخدام إحدى طرق [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) للعثور على سلسلة معينة أو استبدالها وإرجاع عدد عمليات الاستبدال التي تم إجراؤها. في هذه الحالة، يمكنك تحديد سلسلة ليتم استبدالها، سلسلة من شأنها أن تحل محل جميع تكرارها، ما إذا كان الاستبدال حساس لحالة الأحرف، وما إذا كانت الكلمات المستقلة فقط ستتأثر.

يوضح مثال الكود التالي كيفية العثور على السلسلة" _CustomerName_ " واستبدالها بالسلسلة *"James Bond"*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-SimpleStringReplacement.java" >}}

يمكنك ملاحظة الفرق بين المستند قبل تطبيق استبدال سلسلة بسيطة:

<img src="/words/java/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-java" style="width:600px"/>

وبعد تطبيق استبدال سلسلة بسيطة:

<img src="/words/java/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-java" style="width:600px"/>

### ابحث عن النص واستبدله باستخدام التعبيرات العادية {#find-and-replace-text-using-regular-expressions}

التعبير العادي (التعبير العادي) هو نمط يصف تسلسلا معينا من النص. لنفترض أنك تريد استبدال جميع التكرارات المزدوجة للكلمة بحدوث كلمة واحدة. ثم يمكنك تطبيق التعبير العادي التالي لتحديد نمط الكلمة المزدوجة: `([a-zA-Z]+) \1`.

استخدم طريقة [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.util.regex.Pattern-java.lang.String) الأخرى للبحث عن مجموعات أحرف معينة واستبدالها عن طريق تعيين المعلمة `Regex` كنمط تعبير عادي للعثور على التطابقات.

يوضح مثال التعليمات البرمجية التالية كيفية استبدال السلاسل التي تطابق نمط تعبير عادي مع سلسلة استبدال محددة:


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-UsingRegularExpression.java" >}}


يمكنك ملاحظة الفرق بين المستند قبل تطبيق استبدال السلسلة بالتعبيرات العادية:

<img src="/words/java/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

وبعد تطبيق استبدال السلسلة بالتعبيرات العادية:

<img src="/words/java/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

### ابحث عن السلسلة واستبدلها باستخدام الأحرف الأولية {#find-and-replace-text-using-metacharacters}

يمكنك استخدام الأحرف الأولية في سلسلة البحث أو سلسلة الاستبدال إذا كان نص أو عبارة معينة تتكون من فقرات أو أقسام أو صفحات متعددة. تتضمن بعض الأحرف الأولية **&p** لكسر فقرة، **&b** لكسر مقطع، **&m** لكسر صفحة، و **&l** لكسر سطر.

{{% alert color="primary" %}}

لاحظ أن الحرف الأولي **&&** يساوي **&**. على سبيل المثال، إذا كنت بحاجة إلى العثور على نص **&p** الذي ليس فاصل فقرة، فيمكنك استخدام **&&p**.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالية كيفية استبدال النص بالفقرة وفاصل الصفحة:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextContaingMetaCharacters.java" >}}

## ابحث عن السلسلة واستبدلها في رأس / تذييل المستند {#find-and-replace-string-in-header-or-footer-of-a-document}

يمكنك العثور على النص واستبداله في قسم الرأس / التذييل في مستند ورد باستخدام فئة [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/).

يوضح مثال الكود التالي كيفية استبدال نص قسم الرأس في المستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInHeader.java" >}}


يمكنك ملاحظة الفرق بين المستند قبل تطبيق استبدال سلسلة الرأس:

<img src="/words/java/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

وبعد تطبيق استبدال سلسلة الرأس:

<img src="/words/java/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

مثال التعليمات البرمجية لاستبدال نص قسم التذييل في المستند مشابه جدا لمثال رمز الرأس السابق. كل ما عليك فعله هو استبدال الخطين التاليين:

{{< highlight java >}}
HeaderFooter header = headersFooters.get(HeaderFooterType.HEADER_PRIMARY);
header.getRange().replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

مع ما يلي:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInFooter.java" >}}


يمكنك ملاحظة الفرق بين المستند قبل تطبيق استبدال سلسلة التذييل:

<img src="/words/java/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

وبعد تطبيق استبدال سلسلة تذييل الصفحة:

<img src="/words/java/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

## تجاهل النص أثناء البحث والاستبدال {#ignore-text-during-find-and-replace}

أثناء تطبيق عملية البحث والاستبدال، يمكنك تجاهل أجزاء معينة من النص. لذلك، يمكن استبعاد أجزاء معينة من النص من البحث، ويمكن تطبيق البحث والاستبدال فقط على الأجزاء المتبقية.

Aspose.Words يوفر العديد من خصائص البحث والاستبدال لتجاهل النص مثل [IgnoreDeleted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreDeleted), [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes), [IgnoreFields](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFields), [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes), و [IgnoreInserted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreInserted).

يوضح مثال الكود التالي كيفية تجاهل النص داخل حذف المراجعات:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

## تخصيص البحث واستبدال العملية {#customize-find-and-replace-operation}

Aspose.Words يوفر العديد من [properties](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) مختلفة لإيجاد واستبدال النص مثل تطبيق شكل معين مع [ApplyFont](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyFont) و [ApplyParagraphFormats](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyParagraphFormat) الخصائص، وذلك باستخدام بدائل في أنماط استبدال مع [UseSubstitutions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getUseSubstitutions) الملكية، وغيرها.

يوضح مثال الكود التالي كيفية تمييز كلمة معينة في المستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-CustomizeFindAndReplaceOperation.java" >}}


Aspose.Words يسمح لك باستخدام [IReplacingCallback](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) واجهة لإنشاء واستدعاء طريقة مخصصة أثناء عملية استبدال. قد يكون لديك بعض حالات الاستخدام حيث تحتاج إلى تخصيص عملية البحث والاستبدال مثل استبدال النص المحدد بتعبير عادي بعلامات HTML، لذلك ستطبق بشكل أساسي استبدال بإدراج HTML.

إذا كنت بحاجة إلى استبدال سلسلة بعلامة HTML، فقم بتطبيق واجهة **IReplacingCallback** لتخصيص عملية البحث والاستبدال بحيث تبدأ المطابقة في بداية التشغيل باستخدام عقدة المطابقة في المستند. دعونا نقدم عدة أمثلة على استخدام **IReplacingCallback**.

يوضح مثال الكود التالي كيفية استبدال النص المحدد بـ HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceWithHtml.java" >}}


يوضح مثال الكود التالي كيفية تمييز الأرقام الموجبة باللون الأخضر والأرقام السالبة باللون الأحمر:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-NumberHighlightCallback.java" >}}

يوضح مثال التعليمات البرمجية التالية كيفية إضافة رقم سطر إلى كل سطر:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-TestLineCounter.java" >}}
