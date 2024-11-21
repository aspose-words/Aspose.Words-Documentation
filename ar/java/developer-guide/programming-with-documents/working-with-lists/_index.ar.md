---
title: العمل مع القوائم في Java
second_title: Aspose.Words for Java
articleTitle: العمل مع القوائم
linktitle: العمل مع القوائم
description: "مقدمة إلى سمة تركيب الترقيم في Aspose.Words for Java."
type: docs
weight: 200
url: /ar/java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

قائمة في Microsoft Word الوثيقة هي مجموعة من خصائص إعداد القائمة. ويمكن استخدام القوائم في وثائقكم لتشكيل وترتيب النص والتأكيد عليه. والقوائم هي طريقة عظيمة لتنظيم البيانات في الوثائق، وهي تجعل من الأسهل للقراء فهم النقاط الرئيسية.

ويمكن أن يكون لكل قائمة ما يصل إلى 9 مستويات وممتلكات لتشكيلها، مثل أسلوب الرقم، وقيمة البدء، والثغرة، وموقع التبويب، وتحدَّد خصائص أخرى على حدة لكل مستوى.

تصف هذه المادة العمل البرنامجي بالقوائم باستخدام Aspose.Words.

## إعداد القوائم حسب القائمة التطبيقية

Aspose.Words ويسمح بسهولة وضع القوائم عن طريق تطبيق صيغة القائمة. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) يوفر [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) الممتلكات التي تعود **ListFormat** هدف ولهذه الغاية عدة طرق لبدء ووضع حد للقائمة وزيادة/تخفيض الحوادث. هناك نوعان عامان من القوائم Microsoft Word: طلق ناري ومرقم:

-للبدء بقائمة مُطلقة [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
-للبدأ بقائمة مرقمة [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

تضاف الرصاصة أو العدد والشكل إلى الفقرة الحالية وجميع الفقرات الأخرى المنشأة باستخدام **DocumentBuilder** حتى [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) يُدعى لإيقاف وضع قائمة مُطلقة.

وفي وثائق الكلمات، يمكن أن تتألف القوائم من ما يصل إلى تسعة مستويات. ويحدد شكل القائمة لكل مستوى ما يُستخدم من الرصاص أو الرقم، والثغرة اليسرى، والحيز بين الرصاصة والنص وما إلى ذلك. الأساليب التالية تغيّر مستوى القائمة وتطبّق خصائص المستوى الجديد:

- زيادة مستوى قائمة الفقرة الحالية بمستوى واحد، [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- خفض مستوى قائمة الفقرة الحالية بمستوى واحد، [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

وتُغيّر الأساليب مستوى القائمة وتطبق خصائص الشكل في المستوى الجديد.

{{% alert color="primary" %}}

يمكنك أيضا استخدام [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) ممتلكات للحصول على مستوى القائمة أو تحديده لهذه الفقرة. ويبلغ عدد مستويات القائمة صفر إلى 8.

{{% /alert %}}

ويبين المثال الرمزي التالي كيفية وضع قائمة متعددة المستويات:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## تحديد الشكل حسب مستوى القائمة

وتُنشأ الأجسام على مستوى القائمة تلقائياً عند وضع قائمة. استخدام ممتلكات وأساليب [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) درجة للسيطرة على شكل مستويات فردية من القائمة

## قائمة إعادة التشغيل لكل قسم

يمكنك إعادة صياغة قائمة لكل قسم باستخدام [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection) ملكية Note that this option is supported only in RTF, DOC and DOCX document formats. This option will be written to DOCX only if OoxmlCompliance is higher then Ecma376.

ويبين المثال الرمزي التالي كيفية وضع قائمة وإعادة تشغيلها لكل قسم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

