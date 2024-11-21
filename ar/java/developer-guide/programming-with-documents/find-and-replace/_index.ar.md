---
title: البحث والاستبدال Java
second_title: Aspose.Words for Java
articleTitle: البحث والاستبدال
linktitle: البحث والاستبدال
type: docs
description: "ابحثي عن نمط أو تعبير منتظم في وثيقتك وإستبدليه بالنص الذي تريدينه Java."
weight: 100
url: /ar/java/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

يمكنك بسهولة أن تبحر داخل وثيقتك باستخدام لوحة مفاتيح وفأر، ولكن إذا كان لديك العديد من الصفحات لتخترق، سوف يستغرق الأمر وقتاً طويلاً لإيجاد نص محدد في وثيقة طويلة. سيكون وقتاً أطول عندما تريد استبدال بعض الشخصيات أو الكلمات التي استخدمتها في وثيقتك إن وظيفة " التمويل والاستعاضة عنها " تمكنكم من العثور على تسلسل من الشخصيات في وثيقة ما والاستعاضة عنها بتسلسل آخر من الشخصيات.

Aspose.Words يُمكِنُك أَنْ تَجِدَ a سلسلة محددة أَو نمط تعبير منتظم في وثيقتِكَ ويَستبدلُه بa بديل بدون تركيب واستخدام تطبيقات إضافية مثل Microsoft Word. وسيؤدي ذلك إلى التعجيل بالعديد من مهام الطباعة والتشكيل، مما قد يوفر لك ساعات من العمل.

وتوضح هذه المادة كيفية تطبيق عمليات استبدال الخيوط والعبارات المنتظمة بدعم من المصانع.

## سبل البحث والاستبدال {#ways-to-find-and-replace}

Aspose.Words يوفر طريقتين لتطبيق البحث والاستعاضة عن العملية باستخدام ما يلي:

1 * الاستعاضة عن الخيط المبسط* - للعثور على خيط محدد والاستعاضة عنه بسلسلة أخرى، تحتاج إلى تحديد سلسلة بحث (الخصائص الزمانية) ستستبدل وفقاً لجميع الأحداث مع سلسلة استبدال محددة أخرى. كلا الخيوط يجب ألا تحتوي على رموز خذ في الحسبان أن مقارنة الخيوط يمكن أن تكون حساسة، أو قد تكون غير متأكد من التهجئة أو لديك عدة تعاويذ مماثلة.
2 - * تعابير نظامية* - تحديد تعبير منتظم للعثور على تطابق السلاسل بدقة والاستعاضة عنها وفقا لتعبيركم المعتاد. ملاحظة أن كلمة واحدة تُعرَّف بأنها تتألف من شخصيات ألفية فقط. إذا أعدم بديل مع تطابق الكلمات كاملة فقط و خيط المدخلات يحتوي على رموز، ثم لا توجد عبارات.

أيضا، يمكنك استخدام المفاعلات المميزة الخاصة مع استبدال الخيوط البسيطة والتعبيرات المنتظمة لتحديد الكسرات داخل البحث واستبدال العملية.

Aspose.Words يعرض العثور ويحل محل الوظيفة [IReplacingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/). يمكنك العمل مع العديد من الخيارات خلال البحث والاستعاضة عن العملية باستخدام [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) الصف

### البحث والاستعاضة عن النص باستخدام استبدال بسيط {#find-and-replace-text-using-simple-string-replacement}

يمكنك استخدام واحد من [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String):: طرق العثور على سلسلة معينة أو استبدالها وإعادة عدد البدائل التي تم استبدالها. In this case, you can specify a string to be replaced, a string that will replace all its occurrences, whether the replacement is case-sensitive, and whether only stand-alone words will be affected.

ويبين المثال الرمزي التالي كيفية العثور على الخيط " __CustomerName_ " والاستعاضة عنه بالخيط * " James Bond " *:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-SimpleStringReplacement.java" >}}

يمكنك أن تلاحظ الفرق بين الوثيقة قبل تطبيق الاستبدال البسيط للسلسلة:

<img src="/words/java/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-java" style="width:600px"/>

وبعد تطبيق الاستبدال البسيط

<img src="/words/java/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-java" style="width:600px"/>

### البحث والاستبدال {#find-and-replace-text-using-regular-expressions}

A regular expression (regex) is a pattern that describes a certain sequence of text. افترض انك تريد ان تحل محل كل الاحداث المزدوجة للكلمة ثم يمكنك تطبيق التعبير العادي التالي لتحديد نمط الكلمات المزدوجة: `([a-zA-Z]+) \1`.

استخدام الآخرين [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.util.regex.Pattern-java.lang.String) طريقة البحث والاستعاضة عن تركيبات شخصية معينة عن طريق تحديد `Regex` البارامترات كالنمط العادي للتعبير عن المباريات

ويبيّن المثال الرمزي التالي كيفية استبدال الخيوط التي تتطابق مع نمط التعبير المنتظم مع سلسلة استبدال محددة:


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-UsingRegularExpression.java" >}}


يمكنك أن تلاحظ الفرق بين الوثيقة قبل تطبيق السلاسل البديلة مع التعبيرات المنتظمة:

<img src="/words/java/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

وبعد تطبيق نظام استبدال الخيوط بتعبيرات منتظمة:

<img src="/words/java/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

### البحث والاستبدال {#find-and-replace-text-using-metacharacters}

يمكنك استخدام المفاعلات في سلسلة البحث أو خيط الاستبدال إذا كان نص معين أو عبارة معينة يتألف من فقرات أو فروع أو صفحات متعددة. بعض المصانع تشمل **&p** لاستراحة فقرة **&b** لإستراحة جزئية **&m** لإستراحة الصفحة **&l** لإستراحة

{{% alert color="primary" %}}

ملاحظة: **&&** على قدم المساواة **&**. على سبيل المثال، إذا أردت أن تجد النص **&p** هذه ليست استراحة من الفقرة، ثم يمكنك استخدام **&&p**.

{{% /alert %}}

ويبيّن المثال الرمزي التالي كيفية الاستعاضة عن النص بفترة استراحة وصفحة:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextContaingMetaCharacters.java" >}}

## البحث عن الوثيقة والاستعاضة عنها {#find-and-replace-string-in-header-or-footer-of-a-document}

يمكنك العثور على النص والاستعاضة عنه في الجزء الرئيسي/القدم من وثيقة الكلمات باستخدام [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) الصف

ويبين المثال الرمزي التالي كيفية الاستعاضة عن نص الجزء الرئيسي في وثيقتكم بما يلي:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInHeader.java" >}}


يمكنك أن تلاحظ الفرق بين الوثيقة قبل أن تتقدم باستبدال خيط الرأس

<img src="/words/java/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

و بعد تطبيق خط الرأس

<img src="/words/java/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

والمثال الرمزي على الاستعاضة عن نص قسم الأقدام في وثيقتكم مشابه جدا للمثال السابق لرمز الرأس. كل ما عليك فعله هو استبدال الخطين التاليين:

{{< highlight java >}}
HeaderFooter header = headersFooters.get(HeaderFooterType.HEADER_PRIMARY);
header.getRange().replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

مع ما يلي:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInFooter.java" >}}


يمكنك أن تلاحظ الفرق بين الوثيقة قبل أن تتقدم باستبدال الخيوط

<img src="/words/java/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

وبعد تطبيق خيوط الخيوط

<img src="/words/java/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

## Ignore text During Find and replace {#ignore-text-during-find-and-replace}

عند تطبيق عملية البحث والاستعاضة عنها، يمكنك تجاهل بعض أجزاء النص. وبالتالي، يمكن استبعاد بعض أجزاء النص من البحث، ولا يمكن تطبيق البحث والاستعاضة عنه إلا على الأجزاء المتبقية.

Aspose.Words يوفر الكثير من الممتلكات التي يعثر عليها ويحل محلها من أجل تجاهل النص مثل [IgnoreDeleted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreDeleted), [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes), [IgnoreFields](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFields), [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes), و [IgnoreInserted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreInserted).

ويبيّن المثال الرمزي التالي كيف يتجاهل النص في إطار التنقيحات الحذفية:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

## تجميع البحث والاستبدال {#customize-find-and-replace-operation}

Aspose.Words توفير العديد من الخدمات المختلفة [properties](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) البحث عن النص والاستعاضة عنه مثل تطبيق شكل محدد [ApplyFont](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyFont) و [ApplyParagraphFormats](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyParagraphFormat) الممتلكات، باستخدام بدائل في أنماط الاستبدال مع [UseSubstitutions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getUseSubstitutions) الممتلكات وغيرها

ويبين المثال الرمزي التالي كيفية تسليط الضوء على كلمة محددة في وثيقتكم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-CustomizeFindAndReplaceOperation.java" >}}


Aspose.Words يسمح لك باستخدام [IReplacingCallback](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) وصلة بينية لخلق واتصال طريقة تقليدية أثناء عملية بديلة قد يكون لديك بعض الحالات التي تحتاج فيها لتكييف البحث والاستعاضة عن العملية مثل استبدال النص المحدد بتعبير منتظم مع البطاقات HTML، لذلك في الأساس سوف تطبق بدلا من إدخال HTML.

إذا كنت بحاجة إلى استبدال الخيط مع علامة HTML، وتطبيق **IReplacingCallback** الواجهة لتكييف عملية البحث والاستعاضة عنها حتى تبدأ المباراة في بداية تشغيل مع عقدة مطابقة من وثيقتك. دعونا نقدم عدة أمثلة لاستخدامها **IReplacingCallback**.

ويبين المثال الرمزي التالي كيفية الاستعاضة عن النص المحدد برقم HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceWithHtml.java" >}}


The following code example shows how to highlight positive numbers with green color and negative numbers with red color:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-NumberHighlightCallback.java" >}}

ويوضح المثال الرمزي التالي كيف يعتمد رقم خط لكل خط:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-TestLineCounter.java" >}}
