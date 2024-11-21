---
title: العمل مع الجداول Java
second_title: Aspose.Words for Java
articleTitle: الجدول التطبيقي
linktitle: الجدول التطبيقي
description: "الشكل المسبق للجدول Java. خلق نمط طاولة باستخدام Java. مقدمة لتشكيل جداول متقدمة، باستخدام أساليب الجداول Java."
type: docs
weight: 80
url: /ar/java/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

A table method defines a set of formatting that can be easily applied to a table. ويمكن وضع صيغة مثل الحدود، والظل، والمواءمة، واللافت في شكل جدول، وتطبيقها على العديد من الجداول من أجل مظهر متسق.

Aspose.Words يدعم تطبيق أسلوب طاولة على طاولة وقراءة خصائص أي نمط طاولة. تُحفظ أساليب الجداول أثناء التحميل والادخار بالطرق التالية:

- الحفاظ على نماذج الجداول في صيغتي DOCX و WordML عند تحميل هذه الأشكال وتوفيرها
- تُحفظ أساليب الجداول عند تحميلها وادخارها في شكل شعبة التعاون التقني (ولكن ليس في أي شكل آخر)
- وعند تصديرها إلى أشكال أخرى أو إصدارها أو طباعتها، يتم توسيع أساليب الجداول لتشمل الشكل المباشر في الجدول، بحيث يتم الحفاظ على جميع أشكالها

## Create a Table Style

يمكن للمستعمل أن يخلق أسلوباً جديداً ويضيفه إلى مجموعة الموضة The [Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) تستخدم الطريقة لخلق نمط جديد من الطاولات.

ويبين المثال الرمزي التالي كيفية إنشاء نمط جديد محدد للمستخدمين:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "create-table-style.java" >}}

## نسخة من الجدول الحالي

إذا لزم الأمر، يمكنك أن تنسخ طريقة طاولة موجودة بالفعل في وثيقة معينة في مجموعة أسلوبك باستخدام `AddCopy` طريقة

ومن المهم أن نعرف أنه مع هذه النسخ، يتم أيضا نسخ النماذج المرتبطة بها.

ويبين المثال الرمزي التالي كيفية استيراد أسلوب من وثيقة إلى وثيقة أخرى:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "copy-style-different-document.java" >}}

## تطبيق الجدول الحالي

Aspose.Words )أ( [TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/) ورث من [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) الصف **TableStyle** يُيسّرُ المُستعملَ لتَطبّقُ مختلف خياراتِ النمطِ مثل التظلّمِ، الرشوة، الحَدْث، [CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing) و [Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont), إلخ

وبالإضافة إلى ذلك، Aspose.Words يوفر [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) الصف وقليل من خصائص `Table` الطبقة التي سنعمل بها على تحديد طريقة الجدول [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName), و [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int).

Aspose.Words وتوفر أيضا [ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/) الطبقة التي تمثل شكلاً خاصاً مطبقاً على مجال معين من الطاولات مع أسلوب جدول معين [ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/) هذا يمثل مجموعة من **ConditionalStyle** أشياء تتضمن هذه المجموعة مجموعة دائمة من البنود التي تمثل بندا واحدا لكل قيمة من قيم [ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/) نوع العد The **ConditionalStyleType** ويحدد الإحصاء جميع المجالات التي يمكن تحديد شكلها المشروط في شكل جدول.

In this case, conditional formatting can be defined for all possible table area defined under the ConditionalStyleType enumeration type.

The following code example shows how to define conditional formatting for header row of the table:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "define-conditional-formatting.java" >}}

يمكنك أيضاً أن تختار أيّ أجزاء من الجدول لتطبق أساليب على، مثل العمود الأول، العمود الأخير، الصفوف المتفرقة. وهي مدرجة في القائمة [TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/) العد وتطبيقه من خلال [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions) ملكية The **TableStyleOptions** ويسمح التعداد بتجميع هذه الملامح.

ويبين المثال الرمزي التالي كيفية وضع جدول جديد مع تطبيق أسلوب الجدول:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "build-table-with-style.java" >}}

الصور الواردة أدناه تظهر تمثيلاً **Table Styles** في Microsoft Word وما يقابلها من ممتلكات Aspose.Words.

![table-style-aspose-words-java](/words/java/working-with-tablestyle/working-with-table-styles-1.png)

## خُذْ الصيغةَ مِنْ الجدولِ Style و Apply it as Direct Formatting

Aspose.Words يوفر أيضا [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting) طريقة للتشكيل الذي وجد على شكل طاولة وتوسعه إلى الصفوف والخلايا من الطاولة كشكل مباشر حاولي الجمع بين الشكل و أسلوب الطاولة و نمط الخلايا

{{% alert color="primary" %}}

ولن تلغي هذه الطريقة أي شكل آخر طبق بالفعل على الجدول من خلال صف أو شكل خلوي.

{{% /alert %}}

The following code example shows how to expand the formatting from fashions into table rows and cells as direct formatting:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "expand-formatting-on-cells-and-row-from-style.java" >}}
