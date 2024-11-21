---
title: قالب بندی سفارشی را در فیلدهای C# اعمال کنید
second_title: Aspose.Words برای .NET
articleTitle: قالب بندی سفارشی را در فیلدها اعمال کنید
linktitle: قالب بندی سفارشی را در فیلدها اعمال کنید
description: "فرمت و ارزیابی نتایج فیلدها با استفاده از C#."
type: docs
weight: 40
url: /fa/net/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

گاهی اوقات کاربران نیاز به اعمال قالب بندی سفارشی برای فیلدها دارند. در این مقاله، ما به چند نمونه از نحوه انجام این کار نگاه خواهیم کرد.

برای آشنایی با گزینه‌های بیشتر، فهرست کامل ویژگی‌ها را برای هر نوع فیلد در کلاس مربوطه در [فضای نام فیلدها](https://reference.aspose.com/words/net/aspose.words.fields/) ببینید.

## نحوه اعمال قالب بندی سفارشی در نتیجه فیلد

Aspose.Words API را برای قالب بندی سفارشی نتایج فیلد فراهم می کند. می توانید رابط [IFieldResultFormatter](https://reference.aspose.com/words/net/aspose.words.fields/ifieldresultformatter/) را برای کنترل نحوه قالب بندی نتیجه فیلد پیاده سازی کنید. می توانید سوئیچ فرمت عددی، یعنی \# "#.##"، سوئیچ فرمت تاریخ/زمان، یعنی \@ "dd.MM.yyyy" و سوئیچ قالب عددی، یعنی \* ترتیبی را اعمال کنید.

مثال کد زیر نحوه اعمال قالب بندی سفارشی برای نتیجه فیلد را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FieldResultFormatter.cs" >}}

## نحوه ارزیابی وضعیت `IF`

اگر می خواهید شرایط `IF` را بعد از mail merge ارزیابی کنید، می توانید از روش [EvaluateCondition](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/evaluatecondition/) استفاده کنید که بلافاصله نتیجه ارزیابی عبارت را برمی گرداند.

مثال کد زیر نحوه استفاده از این روش را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cs" >}}

## نحوه اعمال قالب بندی سفارشی در زمان فیلد

Aspose.Words به‌طور پیش‌فرض، فیلد `TIME` را با فرمت زمان کوتاه کنونی به‌روزرسانی می‌کند. ما متوجه شدیم که بین قالب بندی Microsoft Word و قالب بندی .NET/Windows و همچنین بین نسخه های مختلف .NET Framework تفاوت وجود دارد. اگر می‌خواهید فیلد `TIME` را بر اساس نیاز خود قالب‌بندی کنید، می‌توانید با پیاده‌سازی رابط [IFieldUpdateCultureProvider](https://reference.aspose.com/words/net/aspose.words.fields/ifieldupdatecultureprovider/) به این هدف برسید.

مثال‌های کد زیر نحوه اعمال قالب‌بندی سفارشی در فیلد `TIME` را نشان می‌دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCultureProvider-FieldUpdateCultureProviderGetCulture.cs" >}}
