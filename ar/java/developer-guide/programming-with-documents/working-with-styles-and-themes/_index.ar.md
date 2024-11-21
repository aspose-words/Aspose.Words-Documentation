---
title: العمل مع الإطارات والموضوعات
second_title: Aspose.Words for Java
articleTitle: العمل مع الإطارات والموضوعات
linktitle: العمل مع الإطارات والموضوعات
description: "المعزَّز Microsoft Word الملامح الشكلية، العمل بالطرائق والمواضيع باستخدام Java."
type: docs
weight: 110
url: /ar/java/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

The [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) ويُستخدم الفصل في إدارة عمليات البناء وتطبيق البيئات المحددة للمستعملين على الأساليب.

## How to Extract Content Based on Styles

وعلى مستوى بسيط، يمكن أن يكون استرجاع المحتوى استناداً إلى أساليب من وثيقة الكلمات مفيداً في تحديد وقائمة وإحصاء الفقرات وسير النصوص التي تصاغ بأسلوب محدد. فعلى سبيل المثال، قد تحتاجون إلى تحديد أنواع معينة من المحتوى في الوثيقة، مثل الأمثلة والألقاب والمراجع والكلمات الرئيسية وأسماء الأرقام ودراسات الحالات الإفرادية.

ومن أجل اتخاذ هذه الخطوات، يمكن أيضاً استخدام ذلك لتعزيز هيكل الوثيقة، الذي تحدده الأساليب التي تستخدمها، لإعادة استخدام الوثيقة من أجل ناتج آخر، مثل HTML. هذه هي الطريقة التي يتم بها بناء وثائق افترض، وضع Aspose.Words إلى الإختبار أداة بُنيت باستخدام Aspose.Words يأخذ المصدر الوثائق ويقسمها إلى مواضيع على مستويات معينة. يتم إنتاج ملف XML باستخدام Aspose.Words التي تستخدم لبناء شجرة الملاحة يمكنك رؤيتها على اليسار ثم Aspose.Words يحول كل موضوع إلى HTML. والحل المتمثل في استرجاع النص المشكل بأساليب محددة في وثيقة كلمة هو عادة حل اقتصادي ومباشر باستخدامه Aspose.Words.

توضيح مدى سهولة Aspose.Words ويعالج استرجاع المحتوى على أساس الأساليب، ولينظر إلى مثال على ذلك. وفي هذا المثال، سنسترجع نصا مصاغا بأسلوب فقرات محددة وبأسلوب شخصي من عينة من وثائق الكلمات.

وعلى مستوى عال، سيشمل ذلك ما يلي:

1 افتتاح وثيقة كلمة باستخدام [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) الصف
1 الحصول على مجموعات من جميع الفقرات وجميعها يجري في الوثيقة.
1 ولا يُختار سوى الفقرات والسير المطلوبة.

وعلى وجه التحديد، سوف نسترجع نصا مصاغا بأسلوب " الفقرة ١ " وأسلوب " التركيز الانكليزي " من هذه العينة " وورد "

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

In this sample document, the text formatted with the ‘Heading 1’ paragraph fashion is ‘Insert Tab’, ‘Quick Styles’ and ‘Theme’, and the text formatted with the ‘Intense emphasis’ character fashion is the several instances of blue, italicized, bold text such as ‘galleries’ and ‘overall look’.

The implementation of a fashion-based query is quite simple in the Aspose.Words نموذج الجسم المستندي، لأنه ببساطة يستخدم أدوات موجودة بالفعل. ونُفِّذت طريقتان من طرق الفصول لهذا الحل:

1 **ParagraphsByStyleName** - وتسترجع هذه الطريقة مجموعة من الفقرات الواردة في الوثيقة التي لها اسم نمطي محدد.
1 **RunsByStyleName** - وتسترجع هذه الطريقة مجموعة من هذه العمليات في الوثيقة التي لها اسم نمطي محدد.

وهذه الأساليب متشابهة جدا، والاختلافات الوحيدة هي أنواع العقيدة، وتمثيل المعلومات المتعلقة بالأسلوب في الفقرة، والارتباط بها. وهنا يتم تنفيذ الفقرات على غرار الفقرات الواردة في النموذج الرمزي الوارد أدناه لإيجاد جميع الفقرات المصاغة بأسلوب محدد.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

This implementation also uses the [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) طريقة `Document` صنف، الذي يُعيدُ a مجموعة مِنْ كُلّ ندوات الأطفالِ الفوريةِ.

وتجدر الإشارة أيضا إلى أن مجموعة الفقرات لا تخلق نفقات عامة فورية لأن الفقرات محمولة في هذه المجموعة فقط عندما تصلون إلى المواد فيها. إذن، كل ما عليك فعله هو أن تذهب من خلال عملية التحصيل، مستخدماً مشغل المعلمات القياسية، وتضيف فقرات ذات أسلوب محدد إلى الفقرات صفيفة The `Paragraph` يمكن العثور على اسم الموضة في [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) ممتلكات [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat) هدف

إن تنفيذ نظام " رانسبي ستيل نام " هو نفسه تقريبا، وإن كان من الواضح أننا نستخدمه `NodeType.Run` لاسترجاع الأنهار The [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) ممتلكات [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) يُستخدم الجسم في الحصول على معلومات عن النمط في **Run** المشنقة

The following code example finds all runs formatted with the specified fashion.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

عندما يتم تنفيذ كل من الاستفسارات، كل ما عليك القيام به هو تمرير الجسم الوثائقي وتحديد الأسماء النمطية للمحتوى الذي تريد استرجاعه:

{{% /alert %}}

The following code example run queries and display results.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

وعندما يتم كل شيء، سيظهر تشغيل العينة الناتج التالي:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

وكما ترون، فإن هذا مثال بسيط جدا، يبين عدد ونص الفقرات التي تم جمعها ويسير في العينة " وورد ".

## Insert Style Separator to Put Different Paragraph Styles

ويمكن إضافة فصل عن الأسلوب إلى نهاية فقرة تستخدم طريق " Ctrl + Alt + Enter Keyboard Shortcut into MS Word ". وتتيح هذه السمة استخدام أسلوبين مختلفين في فقرة مطبوعة منطقية واحدة. إذا كنت تريد بعض النص من بداية عنوان معين أن يظهر في جدول المحتويات ولكن لا تريد العنوان بأكمله في جدول المحتويات، يمكنك استخدام هذه السمة

ويبيّن المثال الرمزي التالي كيف يُدرَج مُناظر نمطي لوضع أساليب مختلفة في الفقرات

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## نسخ جميع صفائح من النموذج

هناك حالات عندما تريد أن تنسخ كل الأساليب من وثيقة إلى أخرى يمكنك استخدام `Document.CopyStylesFromTemplate` طريقة لنسخ النماذج من النموذج المحدد إلى الوثيقة. وعندما تُنسخ الأنماط من نموذج إلى وثيقة، تُعاد تعريف الأساليب المشابهة في الوثيقة بحيث تتطابق مع وصفات النمط في النموذج. النمط الوحيد من النموذج ينسخ إلى الوثيقة. ولا تزال الأساليب الوحيدة في الوثيقة سليمة

ويوضح المثال الرمزي التالي كيف ينسخ أساليب من وثيقة إلى أخرى.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## كيفية التلاعب Theme Properties

لقد أضفنا الأساسي API في Aspose.Words الاطلاع على الخصائص المواضيعية للوثائق. الآن، هذا API تشمل الأغراض العامة التالية:

- الموضوع
- ThemeFonts
- ThemeColors

هنا كيف يمكنك الحصول على خواص الموضوع:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

وها هي الطريقة التي يمكنك بها تحديد خصائص الموضوع:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
