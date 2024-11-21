---
title: Apply Custom Formatting to Fields
second_title: Aspose.Words for Java
articleTitle: Apply Custom Formatting to Fields
linktitle: Apply Custom Formatting to Fields
description: "الشكل والتقييم Java."
type: docs
weight: 40
url: /ar/java/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

وفي بعض الأحيان يحتاج المستعملون إلى تطبيق الصيغ العرفية على الحقول. وفي هذه المادة، سننظر في مثالين على كيفية القيام بذلك.

ولتعلم المزيد من الخيارات، انظر القائمة الكاملة للممتلكات لكل نوع ميداني في الفئة المقابلة.

## How to Apply Custom Formatting to Field Result

Aspose.Words توفير API لتشكيل تقليدي لنتيجة الحقل يمكنك أن تنفذ [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) واجهة للسيطرة على شكل النتيجة الميدانية يمكنك تطبيق مفتاح رقمي للشكل، أي "#####" وتاريخ/وقت تبديل، أي على العنوان التالي:

ويوضح المثال الرمزي التالي كيفية تطبيق الشكل المعتاد للنتائج الميدانية.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## كيفية تقييم `IF` الحالة

إذا كنت تريد تقييم `IF` الحالة mail merge, يمكنك استخدام [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition) الطريقة التي تعيد فوراً نتيجة تقييم التعبير.

ويبين المثال الرمزي التالي كيفية استخدام هذه الطريقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## How to Apply Custom Formatting to Time Field

بالخطأ Aspose.Words آخر المستجدات `TIME` ميدان مع شكل زمني قصير الثقافة الحالي. إذا كنت تريد تشكيل `TIME` الحقل وفقا لمطلبك، يمكنك تحقيق هذا من خلال تنفيذ [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/) واجهة

وتبيّن الأمثلة الرمزية التالية كيفية تطبيق صيغة العرف على `TIME` الميدان:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
