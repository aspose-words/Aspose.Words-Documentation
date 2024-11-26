---
title: اعمال قالب بندی سفارشی به زمینه ها
second_title: Aspose.Words برای Java
articleTitle: اعمال قالب بندی سفارشی به زمینه ها
linktitle: اعمال قالب بندی سفارشی به زمینه ها
description: "نتیجه فیلد ها را با استفاده از Java فرمت و ارزیابی کنید."
type: docs
weight: 40
url: /fa/java/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

گاهی اوقات کاربران باید قالب بندی سفارشی را به زمینه ها اعمال کنند. در این مقاله، ما به چند نمونه از چگونگی انجام این کار نگاه خواهیم کرد.

برای کسب اطلاعات بیشتر در مورد گزینه ها، لیست کامل ویژگی های هر نوع فیلد در کلاس مربوطه را ببینید.

## چگونه قالب بندی سفارشی را به نتیجه فیلد اعمال کنیم

Aspose.Words API را برای قالب بندی سفارشی نتیجه فیلد فراهم می کند. شما می توانید رابط [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) را برای کنترل نحوه قالب بندی نتیجه فیلد پیاده سازی کنید. شما می توانید سوئیچ فرمت عددی، یعنی \# "#.##"، سوئیچ فرمت تاریخ/زمان، یعنی \@ "dd.MM.yyyy" و سوئیچ فرمت عدد، یعنی \* Ordinal را اعمال کنید.

مثال کد زیر نشان می دهد که چگونه قالب بندی سفارشی را برای نتیجه فیلد اعمال کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## چگونه وضعیت `IF` را ارزیابی کنیم

اگر می خواهید شرایط `IF` را پس از mail merge ارزیابی کنید، می توانید از روش [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition) استفاده کنید که بلافاصله نتیجه ارزیابی عبارت را باز می گرداند.

مثال کد زیر نشان می دهد که چگونه از این روش استفاده کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## چگونه قالب بندی سفارشی را به فیلد زمان اعمال کنیم

به طور پیش فرض Aspose.Words به روز رسانی `TIME` زمینه با فرهنگ فعلی فرمت کوتاه مدت. اگر می خواهید فیلد `TIME` را با توجه به نیاز خود فرمت کنید، می توانید با پیاده سازی رابط [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/) به این هدف برسید.

نمونه های کد زیر نشان می دهد که چگونه قالب بندی سفارشی را به فیلد `TIME` اعمال کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
