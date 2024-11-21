---
title: العمل مع النص في الجدول
second_title: Aspose.Words for Java
articleTitle: العمل مع النص في الجدول
linktitle: العمل مع النص في الجدول
description: "يستعاض عن النص في جدول Java. Extract Plain Text from Table or Cell using Java."
type: docs
weight: 60
url: /ar/java/extract-text-from-and-replace-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

وكما ذُكر في المواد السابقة، يتضمّن الجدول عادة نصاً واضحاً، وإن كان يمكن وضع محتوى آخر مثل الصور أو حتى الجداول الأخرى في زنزانات المائدة.

يُضاف النص أو أي محتوى آخر إلى الجدول باستخدام الأساليب المناسبة [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) الفئة التي يرد وصفها في **"أعد طاولة"** مقال وفي هذه المادة، سنتحدث عن كيفية العمل مع النص في جدول قائم بالفعل.

## يستعاض عن النص في الجدول

المنضدة، مثل أي موكب آخر Aspose.Words, لديه إمكانية الوصول إلى [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) هدف بإستعمال الجسم المنضدي يمكنك استبدال النص في طاولة

وتحظى القدرة على استخدام شخصيات خاصة عند الاستعاضة عنها بالدعم حاليا، ولذلك يمكن الاستعاضة عن النص الحالي بنص متعدد الفقرات. للقيام بذلك، تحتاج إلى استخدام المفاعلات الخاصة الموصوفة في المقابل [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) طريقة

{{% alert color="primary" %}}

وعادة ما ينبغي الاستعاضة عن النصوص على مستوى الخلايا (كل خلية) أو على مستوى الفقرة.

{{% /alert %}}

The following code example shows how to replace all instances of a string of text in the cells of an entire table:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## Extract Plain Text from a Table

استخدام **Range** الجسم، يمكنك أيضا دعوة الأساليب على كامل نطاق الجدول واستخراج الطاولة كنص عادي. للقيام بذلك، استخدام [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text) ملكية

ويبين المثال الرمزي التالي كيفية طباعة مجموعة النصوص من الجدول:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

The same technique is used to extract content from individual table cells only.

ويبين المثال الرمزي التالي كيفية طباعة مجموعة من عناصر الصف والجداول:

{{% /alert %}}

ويبين المثال الرمزي التالي كيفية طباعة مجموعة النصوص من عناصر الصف والجداول.

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## العمل مع الجدول البديل

Microsoft Word الجداول لها `table title` و `table description` التي توفر تمثيلاً نصياً بديلاً للمعلومات الواردة في الجدول.

In Aspose.Words, يمكنك أيضاً إضافة عنوان ووصف للطاولة باستخدام [Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle) و [Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription) الممتلكات. وهذه الممتلكات ذات مغزى بالنسبة لوثائق شركة DOCX التي تتفق مع ISO/ IEC 29500. عندما يكون الادخار في أشكال قبل ISO/ IEC 29500, these properties are ignored.

ويبيّن المثال الرمزي التالي كيفية تحديد ملكية ووصف الجدول:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}
