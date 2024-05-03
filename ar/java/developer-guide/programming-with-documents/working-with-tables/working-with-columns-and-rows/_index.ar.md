---
title: العمل مع كولومنز ورو Java
second_title: Aspose.Words for Java
articleTitle: العمل مع كولومنز ورو
linktitle: العمل مع كولومنز ورو
description: "العمل مع أجزاء من الجدول - الصفوف والأعمدة والخلايا باستخدام Java. تحديد العنوان Java."
type: docs
weight: 30
url: /ar/java/working-with-columns-and-rows/
---

للمزيد من التحكم في كيفية عمل الجداول، تعلم كيفية التلاعب بالأعمدة والأصفاد.

## الرقم القياسي لبيانات الجدول

وتدار الكولوم والجداول والزنزانات عن طريق الوصول إلى رمز الوثيقة المختارة حسب مؤشرها. العثور على فهرس أي عقد يتضمن جمع كل شوارع الأطفال من نوع العنصر من رمز الوالدين، ثم استخدام [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) طريقة للعثور على فهرس العقد المنشود في المجموعة.

### البحث عن فهرس جدول في الوثيقة

في بعض الأحيان قد تحتاج إلى إجراء تغييرات على طاولة معينة في وثيقة. للقيام بذلك، يمكنك أن تشير إلى جدول حسب الرقم القياسي.

ويبين المثال الرمزي التالي كيفية استرجاع الرقم القياسي للجدول في وثيقة ما:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### البحث عن فهرس خام في جدول

وبالمثل، قد تحتاج إلى إجراء تغييرات في صف معين في طاولة مختارة. لفعل هذا، يمكنك أيضاً أن تشير إلى صف بمؤشره

The following code example shows how to retrieve the index of a row in a table:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### العثور على فهرس خلية في رو

أخيرا، قد تحتاج إلى إجراء تغييرات في زنزانة محددة، ويمكنك أن تفعل ذلك حسب الرقم القياسي الخلوي أيضا.

The following code example shows how to retrieve the index of a cell in a row:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## العمل مع كولومنز

في Aspose.Words Document Object Model )أ(DOM- [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) يتكون العقد من [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) بعد ذلك [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) المشنقة وهكذا، في `Document` نموذج الاعتراض Aspose.Wordsكما هو الحال في وثائق الكلمات، لا يوجد مفهوم لعمود.

بالتصميم، الطاولات في Microsoft Word و Aspose.Words وهي مستقلة تماما، ولا تحتوي على الممتلكات والعمليات الأساسية إلا في الصفوف والخلايا من الجدول. This gives tables the ability to have some interesting attributes:

- يمكن أن يكون لكل صف طاولة عدد مختلف تماما من الخلايا
-في الواقع، خلايا كل صف يمكن أن يكون لها شعر مستعار مختلف
- It is possible to join tables with different row formats and number of cells

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

أي عمليات تجري على الأعمدة هي في الواقع "قصاصات" التي تؤدي العملية من خلال تغيير جماعي لخلايا الصف بطريقة تبدو وكأنها تطبق على الأعمدة. ذلك، أنت يُمْكِنُ أَنْ تُؤدّيَ عملياتَ على الأعمدةِ ببساطَة التكرار على نفس الرقمِ الخلويِ.

المثال الرمزي التالي يبسط مثل هذه العمليات من خلال إثبات فئة واجهة التي تجمع الخلايا

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

ويبين المثال الرمزي التالي كيفية إدراج عمود فارغ في جدول:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

ويبين المثال الرمزي التالي كيفية إزالة العمود من جدول في الوثيقة:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## تُحدّدُ Rows as Header Rows

يمكنك أن تختار أن تكرر الصف الأول في الطاولة كرئيس الراو فقط في الصفحة الأولى أو في كل صفحة إذا انقسمت الطاولة إلى عدة In Aspose.Words, يمكنك أن تكرّر رو على كل صفحة باستخدام [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat) ملكية

يمكنك أيضاً وضع علامات على صفات متعددة إذا تم تحديد موقع هذه الصفوف بعد الأخرى في بداية الطاولة لفعل هذا، يجب أن تطبق **HeadingFormat** ممتلكات لهذه الصفوف

{{% alert color="primary" %}}

لاحظوا أن رئيس (رو) لا يعمل في الطاولات المستنيرة ذلك، إذا كان لديك طاولة داخل طاولة أخرى، هذا الإطار لن يكون له تأثير. إنه قيد Microsoft Word هذا لا يسمح بذلك Aspose.Words.

{{% /alert %}}

ويبيّن المثال الرمزي التالي كيفية بناء جدول يتضمن نذورا رئيسية تكرر في الصفحات التالية:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## إبقاء الطاولات والأعاصير من كسر الصفحات {#keep-tables-and-rows-from-breaking-across-pages}

There are times where the contents of a table should not be divided across pages. For instance, if a title is above a table, the title and table should always be kept together on the same page to preserve proper appearance.

وهناك طريقتان مستقلتان مفيدتان لتحقيق هذه الوظيفة:

- `Allow row break across pages`, التي تُطبق على طاولات
- `Keep with next`, التي تنطبق على الفقرات في خلايا الجدول

وتُعوق الممتلكات المذكورة أعلاه بسبب التقصير.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### احفظوا رون من كسر الصفحات {#keep-a-row-from-breaking-across-pages}

This involves restricting content inside the cells of a row from being split across a page. In Microsoft Word, ويمكن العثور على ذلك في إطار الجدول " Properties " كخيار " فسحة شاملة ". In Aspose.Words هذا موجود تحت [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) هدف [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) كملكية [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages).

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

The following code example shows how to disable breaking rows across pages for each row in a table:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### احتفظ بطاولة من كسر الصفحات {#keep-a-table-from-breaking-across-pages}

ولوقف المنضدة من الانقسام عبر الصفحات، علينا أن نحدد أننا نريد المحتوى الوارد في الجدول أن يبقى معا.

لفعل هذا Aspose.Words استخدام طريقة تتيح للمستعملين اختيار جدول وتمكينهم من ذلك [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) البارامترات إلى true عن كل فقرة في زنزانات الجدول. والاستثناء هو الفقرة الأخيرة في الجدول، التي ينبغي تحديدها false.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

The following code example shows how to set a table to stay together on the same page:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}