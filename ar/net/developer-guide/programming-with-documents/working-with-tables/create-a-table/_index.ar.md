---
title: كيفية إنشاء جدول في C#
second_title: Aspose.Words لـ .NET
articleTitle: إنشاء جدول
linktitle: إنشاء جدول
description: "دليل لكيفية عمل جدول في C# بعدة طرق. قم بإنشاء جدول في C# للمستند الخاص بك."
type: docs
weight: 20
url: /ar/net/create-a-table/
timestamp: 2024-10-21-11-17-44
---

يسمح Aspose.Words للمستخدمين بإنشاء جداول في مستند من البداية ويوفر عدة طرق مختلفة للقيام بذلك. تقدم هذه المقالة تفاصيل حول كيفية إضافة جداول منسقة إلى مستندك باستخدام كل طريقة، بالإضافة إلى مقارنة كل طريقة في نهاية المقالة.

## أنماط الجدول الافتراضية

يتم إعطاء الجدول الذي تم إنشاؤه حديثًا قيمًا افتراضية مشابهة لتلك المستخدمة في Microsoft Word:

|  خاصية الجدول |  الافتراضي في Aspose.Words |
|  :---------------------  |  :----------------------  |
|  `Border Style`            |  `Single`  |
|  `Border Width`            |  `1/2 pt`                   |
|  `Border Color`            |  `Black`  |
|  `Left and Right Padding`  |  `5.4 pts`                  |
|  `AutoFit Mode`            |  `AutoFit to Window`        |
|  `Allow AutoFit`           |  `True`  |

{{% alert color="primary" %}}

يمكن أن يكون الجدول مضمنًا إذا كان في موضعه بإحكام، أو عائمًا إذا كان من الممكن وضعه في أي مكان على الصفحة. بشكل افتراضي، يقوم Aspose.Words دائمًا بإنشاء جداول مضمنة.

{{% /alert %}}

## إنشاء جدول باستخدام DocumentBuilder

في Aspose.Words، يمكن للمستخدمين إنشاء جدول في مستند باستخدام [DocumentBuilder](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/). الخوارزمية الأساسية لإنشاء الجدول هي كما يلي:

1. ابدأ الجدول باستخدام [StartTable](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/starttable/)
2. أضف خلية إلى الجدول باستخدام [InsertCell](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/insertcell/) – يؤدي هذا تلقائيًا إلى بدء صف جديد
3. اختياريًا، استخدم خاصية [CellFormat](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/cellformat/) لتحديد تنسيق الخلية
4. أدخل محتوى الخلية باستخدام طرق **DocumentBuilder** المناسبة مثل [Writeln](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/writeln/) و[InsertImage](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/insertimage/) وغيرها
5. كرر الخطوات من 2 إلى 4 حتى يكتمل الصف
6. اتصل بـ [EndRow](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/endrow/) لإنهاء الصف الحالي
7. اختياريًا، استخدم خاصية [RowFormat](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/rowformat/) لتحديد تنسيق الصف
8. كرر الخطوات من 2 إلى 7 حتى يكتمل الجدول
9. اتصل بـ [EndTable](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/endtable/) لإنهاء بناء الجدول

{{% alert color="primary" %}}

تفاصيل مهمة:

* يمكن أيضًا استدعاء [StartTable](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/starttable/) داخل الخلية، وفي هذه الحالة يبدأ إنشاء جدول متداخل داخل الخلية.
* بعد استدعاء [InsertCell](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/insertcell/)، يتم إنشاء خلية جديدة، وسيتم إضافة أي محتوى تضيفه باستخدام طرق أخرى لفئة [DocumentBuilder](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/) إلى الخلية الحالية. لإنشاء خلية جديدة في نفس الصف، اتصل بـ **InsertCell** مرة أخرى.
* إذا تم استدعاء **InsertCell** مباشرة بعد [EndRow](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/endrow/) ونهاية الصف، فسيستمر الجدول في صف جديد.
* يجب استدعاء طريقة [EndTable](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/endtable/) لإنهاء الجدول مرة واحدة فقط بعد استدعاء **EndRow**. يؤدي استدعاء **EndTable** إلى نقل المؤشر من الخلية الحالية إلى الموضع الذي يقع مباشرة بعد الجدول.

{{% /alert %}}

يمكن رؤية عملية إنشاء الجدول بوضوح في الصورة التالية:

![creating-table-process](/words/net/create-a-table/creating-table-process.jpg)

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء جدول بسيط باستخدام **DocumentBuilder** بالتنسيق الافتراضي:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "create-simple-table.cs" >}}

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء جدول منسق باستخدام DocumentBuilder:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "formatted-table.cs" >}}

يوضح مثال التعليمات البرمجية التالي كيفية إدراج جدول متداخل باستخدام DocumentBuilder:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "nested-table.cs" >}}

## إنشاء جدول عبر DOM (Document Object Model)

يمكنك إدراج الجداول مباشرة في DOM عن طريق إضافة عقدة [Table](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/) جديدة في موضع محدد.

يرجى ملاحظة أنه بعد إنشاء عقدة الجدول مباشرة، سيكون الجدول نفسه فارغًا تمامًا، أي أنه لا يحتوي بعد على صفوف وخلايا. لإدراج صفوف وخلايا في جدول، قم بإضافة العقد الفرعية [Row](https://reference.aspose.com/words/ar/net/aspose.words.tables/row/) و[Cell](https://reference.aspose.com/words/ar/net/aspose.words.tables/cell/) المناسبة إلى ملف DOM.

{{% alert color="primary" %}}

تستخدم طريقة إنشاء الجدول هذه نفس الإعدادات الافتراضية للجدول كما هو الحال عند استخدام **DocumentBuilder**.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء جدول جديد من البداية عن طريق إضافة العقد الفرعية المناسبة إلى شجرة المستندات:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-directly.cs" >}}

## إنشاء جدول من HTML

يدعم Aspose.Words إدراج محتوى في مستند من مصدر HTML باستخدام طريقة [InsertHtml](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/inserthtml/). يمكن أن يكون الإدخال عبارة عن صفحة HTML كاملة أو مجرد مقتطف جزئي.

باستخدام طريقة **InsertHtml**، يمكن للمستخدمين إدراج الجداول في المستند عبر علامات الجدول مثل `<table>`، `<tr>`، `<td>`.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج جدول في مستند من سلسلة تحتوي على علامات HTML:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-from-html.cs" >}}

## إدراج نسخة من جدول موجود

في كثير من الأحيان تحتاج إلى إنشاء جدول استنادًا إلى جدول موجود بالفعل في المستند. أسهل طريقة لتكرار جدول مع الاحتفاظ بجميع التنسيقات هي استنساخ عقدة الجدول باستخدام طريقة [Clone](https://reference.aspose.com/words/ar/net/aspose.words/node/clone/).

يمكن استخدام نفس الأسلوب لإضافة نسخ من صف أو خلية موجودة إلى الجدول.

يوضح مثال التعليمات البرمجية التالي كيفية تكرار جدول باستخدام منشئي العقدة:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-complete-table.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية استنساخ الصف الأخير من الجدول وإلحاقه بالجدول:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-last-row.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

إذا كنت تتطلع إلى إنشاء جداول في مستند تنمو ديناميكيًا مع كل سجل من مصدر بياناتك، فلا يُنصح باستخدام الطريقة المذكورة أعلاه. بدلاً من ذلك، يتم تحقيق الإخراج المطلوب بسهولة أكبر باستخدام Mail merge مع المناطق. يمكنك معرفة المزيد حول هذه التقنية في قسم [Mail Merge مع المناطق](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions).

## قارن طرق إنشاء جدول

يوفر Aspose.Words عدة طرق لإنشاء جداول جديدة في المستند. كل طريقة لها مزاياها وعيوبها، وبالتالي فإن اختيار الطريقة التي سيتم استخدامها يعتمد غالبًا على الموقف المحدد.

دعونا نلقي نظرة فاحصة على هذه الطرق لإنشاء الجداول ومقارنة إيجابياتها وسلبياتها:

|  طريقة | مزايا |  سلبيات |
|  :-  |  :-  |  :-  |
| عبر `DocumentBuilder` | الطريقة القياسية لإدراج الجداول ومحتويات المستندات الأخرى | في بعض الأحيان يكون من الصعب إنشاء العديد من أنواع الجداول في نفس الوقت باستخدام نفس مثيل المنشئ |
| عبر DOM |  يتناسب بشكل أفضل مع التعليمات البرمجية المحيطة التي تنشئ العقد وتدرجها مباشرة في DOM دون استخدام **DocumentBuilder** | تم إنشاء الجدول "فارغًا": قبل تنفيذ معظم العمليات، يجب عليك الاتصال بـ [EnsureMinimum](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/ensureminimum/) لإنشاء أي عقد فرعية مفقودة |
| من HTML | يمكن إنشاء جدول جديد من مصدر HTML باستخدام علامات مثل `<table>`، `<tr>`، `<td>` | لا يمكن تطبيق كافة تنسيقات جدول Microsoft Word الممكنة على HTML |
| استنساخ جدول موجود | يمكنك إنشاء نسخة من جدول موجود مع الاحتفاظ بجميع تنسيقات الصفوف والخلايا | يجب إزالة العقد التابعة المناسبة قبل أن يصبح الجدول جاهزًا للاستخدام |
