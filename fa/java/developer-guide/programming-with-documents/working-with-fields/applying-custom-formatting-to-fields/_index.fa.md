---
title: استفاده از فرمت سفارشی به فیلد ها
second_title: Aspose.Words برای Java
articleTitle: استفاده از فرمت سفارشی به فیلد ها
linktitle: استفاده از فرمت سفارشی به فیلد ها
description: "فرمت و ارزیابی زمینه ها با استفاده از Java..."
type: docs
weight: 40
url: /fa/java/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

گاهی اوقات کاربران باید قالب بندی سفارشی را به زمینه ها اعمال کنند. در این مقاله نگاهی به چند نمونه از چگونگی انجام این کار خواهیم کرد.

برای یادگیری گزینه های بیشتر، لیست کامل خواص برای هر نوع زمینه در کلاس مربوطه را ببینید.

## چگونگی استفاده از فرمت سفارشی به نتیجه فیلد

Aspose.Words فراهم می کند API برای قالب بندی سفارشی نتیجه زمینه می توانید پیاده سازی کنید [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) رابط برای کنترل اینکه چگونه نتیجه زمینه فرمت شده است. شما می توانید تغییر فرمت عددی را اعمال کنید، به عنوان مثال، ###، تاریخ / سوئیچ فرمت زمان، به عنوان مثال، "d.MM.yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy" و سوئیچ فرمت فرمت number، و سوئیچ فرمت فرمت فرمت فرمت number، و سوئیچ فرمت number، و سوئیچ فرمت فرمت number، به عنوان مثال، i. \. \. \، به عنوان مثال \. \. \.

مثال کد زیر نشان می دهد که چگونه قالب بندی سفارشی را برای نتیجه زمینه اعمال کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## چگونه ارزیابی کنیم `IF` شرایط

اگر می خواهید ارزیابی کنید `IF` وضعیت بعد از mail merge, می توانید از آن استفاده کنید [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition) این روش بلافاصله نتیجه ارزیابی بیان را برگرداند.

مثال کد زیر نشان می دهد که چگونه از این روش استفاده کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## چگونگی استفاده از قالب بندی سفارشی به Time Field

به طور پیش فرض Aspose.Words به روز رسانی `TIME` زمینه با فرمت زمان کوتاه فرهنگ فعلی اگر می خواهید فرمت کنید `TIME` با توجه به نیاز شما، شما می توانید با اجرای این کار را انجام دهید [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/) رابط

مثال های کد زیر نشان می دهد که چگونه قالب بندی سفارشی را به قالب بندی سفارشی اعمال کنیم. `TIME` فیلد:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
