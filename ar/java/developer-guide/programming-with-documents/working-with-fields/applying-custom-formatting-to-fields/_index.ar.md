---
title: تطبيق تنسيق مخصص على الحقول
second_title: Aspose.Words ل Java
articleTitle: تطبيق تنسيق مخصص على الحقول
linktitle: تطبيق تنسيق مخصص على الحقول
description: "تنسيق وتقييم الحقول نتيجة باستخدام Java."
type: docs
weight: 40
url: /ar/java/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

يحتاج المستخدمون أحيانا إلى تطبيق تنسيق مخصص على الحقول. في هذه المقالة، سنلقي نظرة على مثالين لكيفية القيام بذلك.

لمعرفة المزيد من الخيارات، راجع القائمة الكاملة للخصائص لكل نوع حقل في الفصل المقابل.

## كيفية تطبيق التنسيق المخصص على نتيجة الحقل

Aspose.Words يوفر API للتنسيق المخصص لنتيجة الحقل. يمكنك تنفيذ [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) واجهة للتحكم في كيفية تنسيق نتيجة الحقل. يمكنك تطبيق مفتاح التنسيق الرقمي، أي \# "#.##"، ومفتاح تنسيق التاريخ / الوقت، أي \@ "dd.MM.yyyy"، ومفتاح تنسيق الأرقام، أي \* Ordinal.

يوضح مثال التعليمات البرمجية التالية كيفية تطبيق التنسيق المخصص لنتيجة الحقل.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## كيفية تقييم `IF` الشرط

إذا كنت ترغب في تقييم `IF` الشرط بعد mail merge، يمكنك استخدام طريقة [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition) التي ترجع على الفور نتيجة تقييم التعبير.

يوضح مثال الكود التالي كيفية استخدام هذه الطريقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## كيفية تطبيق التنسيق المخصص على حقل الوقت

افتراضيا Aspose.Words تحديثات `TIME` الحقل مع الثقافة الحالية تنسيق وقت قصير. إذا كنت ترغب في تهيئة الحقل `TIME` وفقا لمتطلباتك، فيمكنك تحقيق ذلك من خلال تنفيذ واجهة [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/).

توضح أمثلة التعليمات البرمجية التالية كيفية تطبيق التنسيق المخصص على الحقل `TIME`:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
