---
title: كيفية إنشاء طاولة Java
second_title: Aspose.Words for Java
articleTitle: إنشاء الجدول
linktitle: إنشاء الجدول
description: "طرق مختلفة لوضع جداول في وثيقتكم باستخدام Java."
type: docs
weight: 20
url: /ar/java/create-a-table/
---

Aspose.Words ويسمح للمستعملين بوضع جداول في وثيقة من الصفر، ويوفرون عدة أساليب مختلفة للقيام بذلك. وتعرض هذه المادة تفاصيل عن كيفية إضافة جداول مصاغة إلى وثيقتكم باستخدام كل طريقة، وكذلك مقارنة لكل طريقة في نهاية المادة.

## الجدول الافتراضي

ويُعطى الجدول الجديد قيما غير مقصودة مماثلة لتلك المستخدمة في Microsoft Word:

| الجدول - الممتلكات | العجز في Aspose.Words |
|  :-  |  :-  |
| `Border Style` |  `Single`  |
| `Border Width` | `1/2 pt` |
| عقيد الحدود |  `Black`  |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` |  `True`  |
{{% alert color="primary" %}}

ويمكن أن يكون الجدول مطروحا إذا كان موقعه ضيقا، أو يطفو إذا أمكن وضعه في أي مكان على الصفحة. بالخطأ Aspose.Words دائماً ما يخلق الطاولات

{{% /alert %}}

## وضع جدول مع الوثيقة

In Aspose.Words, يمكن للمستعملين وضع جدول في وثيقة تستخدم فيه [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). وفيما يلي الخوارزمية الأساسية لإنشاء جدول:

1 شغل الطاولة [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)
2. إضافة زنزانة إلى الطاولة باستخدام [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) -هذا يبدأ تلقائياً صفاً جديداً
3 اختياريا، استخدام [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) الممتلكات لتحديد شكل الخلايا
4 يدرج محتوى الخلية باستخدام ما هو مناسب **DocumentBuilder** أساليب من قبيل [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte), and others
5 اكرر الخط 2-4 حتى يكتمل الصف
6 اتصل [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) لإنهاء الصف الحالي
7. اختياريا، استخدام [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) الممتلكات لتحديد شكل الصف
8 اكرر الخط 2-7 حتى يكتمل الجدول
9. اتصل [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) لإنهاء بناء الطاولة

{{% alert color="primary" %}}

تفاصيل هامة:

- [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) ويمكن أيضاً أن يُدعى داخل زنزانة، وفي هذه الحالة يبدأ إنشاء منضدة محجوبة داخل الزنزانة.
- بعد الاتصال [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell), تم إنشاء خلية جديدة وأي محتوى تضيفه باستخدام أساليب أخرى [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) سيضاف الفصل إلى الزنزانة الحالية لخلق خلية جديدة على نفس الصف، الاتصال **InsertCell** مرة أخرى
- إذا **InsertCell** يُدعى فوراً بعد [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) ونهاية الصف ستستمر الطاولة على صف جديد
- [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) لا ينبغي أن تُسمَى طريقة إنهاء الجدول إلا مرة واحدة بعد الاتصال **EndRow**. نداء **EndTable** ينقل الشعار من الزنزانة الحالية إلى الموقع مباشرة بعد الطاولة.

{{% /alert %}}

ويمكن الاطلاع بوضوح على عملية وضع جدول في الصورة التالية:

![creating-table-process](/words/java/create-a-table/creating-table-process.jpg)

ويبين المثال الرمزي التالي كيفية إنشاء طاولة بسيطة باستخدام **DocumentBuilder** مع الشكل الافتراضي:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

ويبيّن المثال الرمزي التالي كيفية وضع جدول نموذجي باستخدام الوثيقة:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

ويبيّن المثال الرمزي التالي كيفية إدراج طاولة محجوزة تستخدم الوثيقة:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## Create a Table via DOM )أ(Document Object Model)

يمكنك إدخال الطاولات مباشرة إلى DOM بإضافة جديد [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) موكب في موقف محدد

ويرجى الانتباه إلى أن الجدول نفسه سيكون فارغاً تماماً بعد إنشاء عقد المائدة، أي أنه لا يتضمن بعد الصفوف والخلايا. إدراج الصفوف والخلايا في جدول، إضافة ما هو مناسب [Row](https://reference.aspose.com/words/java/com.aspose.words/run/) و [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) ندوات الطفل إلى DOM.

{{% alert color="primary" %}}

وتستخدم هذه الطريقة لوضع جدول نفس التخلف عن الجدول عند استخدامه **DocumentBuilder**.

{{% /alert %}}

The following code example shows how to build a new table fromخام by added the appropriate child nodes to the document tree:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## Create a Table from HTML

Aspose.Words دعم إدراج المحتوى في وثيقة من مصدر HTML باستخدام [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) طريقة يمكن للمدخلات أن تكون صفحة كاملة لـ (HTML) أو مجرد قنبلة جزئية

استخدام هذا **InsertHtml** يمكن للمستعملين أن يدرجوا جداول في الوثيقة عن طريق بطاقات طاولة مثل `<table>`, `<tr>`, `<td>`.

The following code example shows how to insert a table into a document from a string containing HTML tags:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## يدرج نسخة من الجدول الحالي

وغالبا ما تكون هناك أوقات تحتاج فيها إلى وضع جدول يستند إلى جدول قائم بالفعل في وثيقة. أسهل طريقة لتكرار الجدول مع الاحتفاظ بجميع أشكاله هي استنساخ عقد الجدول باستخدام [deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) طريقة

ويمكن استخدام نفس الأسلوب لإضافة نسخ من صف قائم أو خلية إلى طاولة.

ويبين المثال الرمزي التالي كيفية تكرار جدول باستخدام مصممي العقد:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف العينة من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

The following code example shows how to clone the last row of a table and append it to the table:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف العينة من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

إذا كنت تنظر إلى وضع جداول في وثيقة تنمو ديناميكية مع كل سجل من مصدر بياناتك، ثم الطريقة المذكورة أعلاه لا تُنصَح. وبدلا من ذلك، يتحقق الناتج المنشود بسهولة أكبر باستخدامه Mail merge مع المناطق يمكنك معرفة المزيد عن هذه التقنية في [Mail Merge الأقاليم](/words/java/types-of-mail-merge-operations/) القسم

## Compare Ways to Create a Table

Aspose.Words توفر عدة طرق لوضع جداول جديدة في وثيقة ما. ولكل طريقة مزاياها ومساوئها الخاصة، وبالتالي فإن اختيار استخدامها كثيرا ما يتوقف على الحالة المحددة.

دعونا نلقي نظرة عن قرب على هذه الطرق لخلق الطاولات ومقارنة المحترفين والمحتالين:

|  المنهجية | المزايا |  أوجه القصور |
|  :-  |  :-  |  :-  |
| Via `DocumentBuilder` | الطريقة الموحدة لإدراج الجداول ومحتويات الوثائق الأخرى | في بعض الأحيان من الصعب خلق العديد من أنواع الجداول في نفس الوقت مع نفس حالة البناء |
| Via DOM |  أفضل من الشفرة المحيطة التي تخلق وتضيف عقدة مباشرة إلى DOM بدون استخدام **DocumentBuilder** | الطاولة مصممة "مفرغة" قبل القيام بمعظم العمليات يجب أن تتصل [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum) لخلق أي أطفال مفقودين |
| من HTML | يمكن أن يخلق طاولة جديدة من مصدر HTML باستخدام بطاقات مثل `<table>`, `<tr>`, `<td>` | ليس كل شيء ممكن Microsoft Word يمكن تطبيق صيغ الجداول على نظام HTML |
| استنساخ طاولة قائمة | يمكنك أن تخلق نسخة من طاولة قائمة بينما تحافظ على جميع الصفات و تشكيل الخلايا | ويجب إزالة عقد الأطفال المناسب قبل أن تكون الطاولة جاهزة للاستخدام |
