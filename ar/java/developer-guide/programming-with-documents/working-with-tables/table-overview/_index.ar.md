---
title: الجدول لمحة عامة
second_title: Aspose.Words for Java
articleTitle: الجدول لمحة عامة
linktitle: الجدول لمحة عامة
description: "العمل مع الطاولات ومكوناتها مثل الخلايا والأجسام والأعمدة في Aspose.Words for Java. كيفية العمل مع الجداول في Java."
type: docs
weight: 10
url: /ar/java/table-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words هي مكتبة صنفية مصممة لتجهيز الوثائق على جانب الخادم في أشكال مختلفة - PDF، HTML، مختلفة Microsoft Word الأشكال وغيرها - وتؤيد الجداول بالطرق التالية:

* تُحفظ الجداول الواردة في الوثيقة أثناء فتح/إنقاذ وتحويلات
* يمكن تحرير الجدول والمحتوى وشكله، ثم تصدير التغييرات إلى ملف في شكل يدعم الجداول

وفي هذه المادة، سنتعلم المزيد عن هيكل الجداول، والخلايا، والجناد، والأعمدة التي تدعمها Aspose.Words, وتفاصيل العمل مع هذه الجداول

## الجدول

وكما سبقت الإشارة، يتألف الجدول من عناصر من قبيل **Cell**, **Row** و **Column**. وهذه مفاهيم مشتركة بين جميع الجداول عموما، بغض النظر عن شكل الوثيقة.

هذا مثال مشترك على طاولة وجدت في Microsoft Word الوثيقة:

![tables-overview-aspose-words-java-1](/words/java/table-overview/tables-overview-1.png)

### الجدول رقم

جدول من أي وثيقة محملة إلى Aspose.Words مستوردة **الجدول**. ويمكن العثور على الجدول كطفل:

- النص الرئيسي
- قصة خطية مثل التعليق أو الحاشية
- خلايا عندما تُحْصَّلُ طاولة في طاولة أخرى

{{% alert color="primary" %}}

ونلاحظ أن الجداول يمكن استنشاقها داخل جداول أخرى إلى أي عمق.

{{% /alert %}}

### الجدول 2

ولا يحتوي عقد المائدة على أي محتوى حقيقي - بل هو حاوية لغيره من هذه الرموز التي تشكل المحتوى:

- **Table** الكثير منها **Row** المشنقة ويقدم الجدول جميع عناصر العقيدة المعتادة، مما يسمح لكم بالتحرك بحرية، والتعديل، وإزالة الجدول في الوثيقة.
- **Row** يمثل صفا واحدا من الطاولات ويتضمن الكثير **Cell** المشنقة In addition, the **Row** يوفر عناصر تحدد كيفية عرض الصف، مثل الطول والمواءمة.
- **Cell** هو ما يحتوي على true محتوى مرئي في الجدول ومكون من **Paragraph** و حواجز أخرى Additionally, cells can contain nested tables.

![tables-overview-aspose-words-java-2](/words/java/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

يمكنك التحقق من بنية عقد الطاولة في وثيقة تستخدم **DocumentExplorer**.

{{% /alert %}}

### فقرة فارغة بعد الجدول

وتبين الصورة الواردة أعلاه أن الوثيقة تتضمن جدولاً لعدة صفات، يتألف بدوره من زنزانتين. كل من الخليتين يتضمن فقرة وهي الحاوية للنص المشكل للخلية

وتجدر الإشارة أيضا إلى أن فصل جدولين متتاليين في وثيقة ما يتطلب فقرة واحدة فارغة على الأقل بعد الجدول. فبدون هذه الفقرة، سيتم الجمع بين جداول متتالية في جدول واحد. هذا السلوك متطابق Microsoft Word و Aspose.Words.

Aspose.Words عدد الفصول المتصلة بالجداول - [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/), [Rows](https://reference.aspose.com/words/java/com.aspose.words/row/), [Cells](https://reference.aspose.com/words/java/com.aspose.words/cell/), والآخرون

## انظر أيضا

* [Aspose.Words Document Object Model (DOM)](/words/ar/java/aspose-words-document-object-model/)
* [المستويات المنطقية للنويدات في الوثيقة](/words/ar/java/logical-levels-of-nodes-in-a-document/)
