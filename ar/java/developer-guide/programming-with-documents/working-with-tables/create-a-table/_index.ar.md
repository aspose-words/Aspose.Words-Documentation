---
title: كيفية إنشاء جدول في Java
second_title: Aspose.Words ل Java
articleTitle: إنشاء جدول
linktitle: إنشاء جدول
description: "طرق مختلفة لإنشاء الجداول في المستند باستخدام Java."
type: docs
weight: 20
url: /ar/java/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words يسمح للمستخدمين بإنشاء جداول في مستند من البداية ويوفر عدة طرق مختلفة للقيام بذلك. تقدم هذه المقالة تفاصيل حول كيفية إضافة جداول منسقة إلى المستند باستخدام كل طريقة، بالإضافة إلى مقارنة بين كل طريقة في نهاية المقالة.

## أنماط الجدول الافتراضي

يتم إعطاء الجدول الذي تم إنشاؤه حديثا قيما افتراضية مماثلة لتلك المستخدمة في Microsoft Word:

| خاصية الجدول | الافتراضي في Aspose.Words |
| :- | :- |
| `Border Style` | `Single` |
| `Border Width` | `1/2 pt` |
| لون الحدود | `Black` |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` | `True` |
{{% alert color="primary" %}}

يمكن أن يكون الجدول مضمنا إذا تم وضعه بإحكام، أو عائما إذا كان يمكن وضعه في أي مكان على الصفحة. بشكل افتراضي، يقوم Aspose.Words دائما بإنشاء جداول مضمنة.

{{% /alert %}}

## إنشاء جدول مع DocumentBuilder

في Aspose.Words، يمكن للمستخدمين إنشاء جدول في مستند باستخدام [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). الخوارزمية الأساسية لإنشاء جدول هي كما يلي:

1. ابدأ الجدول بـ [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)
2. أضف خلية إلى الجدول باستخدام [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) - يبدأ هذا تلقائيا صفا جديدا
3. اختياريا، استخدم خاصية [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) لتحديد تنسيق الخلية
4. أدخل محتوى الخلية باستخدام طرق **DocumentBuilder** المناسبة مثل [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) و [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) وغيرها
5. كرر الخطوات من 2 إلى 4 حتى يكتمل الصف
6. اتصل [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) لإنهاء الصف الحالي
7. اختياريا، استخدم الخاصية [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) لتحديد تنسيق الصف
8. كرر الخطوات من 2 إلى 7 حتى يكتمل الجدول
9. اتصل [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) لإنهاء بناء الجدول

{{% alert color="primary" %}}

تفاصيل مهمة:

- يمكن أيضا استدعاء [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) داخل خلية، وفي هذه الحالة يبدأ إنشاء جدول متداخل داخل الخلية.
- بعد استدعاء [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell)، يتم إنشاء خلية جديدة، وسيتم إضافة أي محتوى تضيفه باستخدام طرق أخرى لفئة [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) إلى الخلية الحالية. لإنشاء خلية جديدة في نفس الصف، اتصل **InsertCell** مرة أخرى.
- إذا تم استدعاء **InsertCell** مباشرة بعد [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) ونهاية الصف، فسيستمر الجدول في صف جديد.
- يجب استدعاء طريقة [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) لإنهاء الجدول مرة واحدة فقط بعد استدعاء **EndRow**. استدعاء **EndTable** يحرك المؤشر من الخلية الحالية إلى الموضع مباشرة بعد الجدول.

{{% /alert %}}

يمكن رؤية عملية إنشاء جدول بوضوح في الصورة التالية:

![creating-table-process](/words/java/create-a-table/creating-table-process.jpg)

يوضح مثال التعليمات البرمجية التالية كيفية إنشاء جدول بسيط باستخدام **DocumentBuilder** مع التنسيق الافتراضي:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

يوضح مثال التعليمات البرمجية التالية كيفية إنشاء جدول منسق باستخدام DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

يوضح مثال التعليمات البرمجية التالية كيفية إدراج جدول متداخل باستخدام DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## إنشاء جدول عبر DOM (نموذج كائن المستند)

يمكنك إدراج الجداول مباشرة في DOM عن طريق إضافة عقدة [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) جديدة في موضع معين.

يرجى ملاحظة أنه بعد إنشاء عقدة الجدول مباشرة، سيكون الجدول نفسه فارغا تماما، أي أنه لا يحتوي بعد على صفوف وخلايا. لإدراج صفوف وخلايا في جدول، أضف العقد الفرعية [Row](https://reference.aspose.com/words/java/com.aspose.words/run/) و [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) المناسبة إلى DOM.

{{% alert color="primary" %}}

تستخدم هذه الطريقة لإنشاء جدول نفس إعدادات الجدول الافتراضية عند استخدام **DocumentBuilder**.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالية كيفية إنشاء جدول جديد من البداية بإضافة العقد الفرعية المناسبة إلى شجرة المستند:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## إنشاء جدول من HTML

Aspose.Words يدعم إدراج المحتوى في مستند من مصدر HTML باستخدام طريقة [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String). يمكن أن يكون الإدخال صفحة HTML كاملة أو مجرد مقتطف جزئي.

باستخدام طريقة **InsertHtml** هذه، يمكن للمستخدمين إدراج جداول في المستند عبر علامات الجدول مثل `<table>`, `<tr>`, `<td>`.

يوضح مثال التعليمات البرمجية التالية كيفية إدراج جدول في مستند من سلسلة تحتوي على علامات HTML:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## أدخل نسخة من جدول موجود

غالبا ما تكون هناك أوقات تحتاج فيها إلى إنشاء جدول استنادا إلى جدول موجود بالفعل في مستند. أسهل طريقة لتكرار جدول مع الاحتفاظ بجميع التنسيقات هي استنساخ عقدة الجدول باستخدام طريقة [deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean).

يمكن استخدام نفس الأسلوب لإضافة نسخ من صف أو خلية موجودة إلى جدول.

يوضح مثال الكود التالي كيفية تكرار جدول باستخدام منشئي العقدة:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

يوضح مثال الكود التالي كيفية استنساخ الصف الأخير من الجدول وإلحاقه بالجدول:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

إذا كنت تبحث في إنشاء جداول في مستند ينمو ديناميكيا مع كل سجل من مصدر البيانات الخاص بك، فلا ينصح بالطريقة المذكورة أعلاه. بدلا من ذلك، يتم تحقيق الإخراج المطلوب بسهولة أكبر باستخدام Mail merge مع المناطق. يمكنك معرفة المزيد عن هذه التقنية في [Mail Merge مع المناطق](/words/java/types-of-mail-merge-operations/) القسم.

## قارن طرق إنشاء جدول

Aspose.Words يوفر عدة طرق لإنشاء جداول جديدة في مستند. كل طريقة لها مزاياها وعيوبها، لذلك يعتمد اختيار استخدامها غالبا على الموقف المحدد.

دعونا نلقي نظرة فاحصة على هذه الطرق لإنشاء الجداول ومقارنة مزاياها وعيوبها:

| الطريقة | المزايا | العيوب |
| :- | :- | :- |
| عبر `DocumentBuilder` | الطريقة القياسية لإدراج الجداول ومحتويات المستندات الأخرى | من الصعب في بعض الأحيان إنشاء العديد من أنواع الجداول في نفس الوقت مع نفس مثيل البناء |
| عبر DOM | يتناسب بشكل أفضل مع الكود المحيط الذي ينشئ ويدرج العقد مباشرة في DOM دون استخدام **DocumentBuilder** | يتم إنشاء الجدول "فارغ": قبل تنفيذ معظم العمليات، يجب استدعاء [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum) لإنشاء أي عقد فرعية مفقودة |
| من HTML | يمكن إنشاء جدول جديد من HTML المصدر باستخدام علامات مثل `<table>`, `<tr>`, `<td>` | لا يمكن تطبيق جميع تنسيقات الجدول Microsoft Word الممكنة على HTML |
| استنساخ جدول موجود | يمكنك إنشاء نسخة من جدول موجود مع الاحتفاظ بجميع تنسيق الصف والخلية | يجب إزالة العقد الفرعية المناسبة قبل أن يصبح الجدول جاهزا للاستخدام |
