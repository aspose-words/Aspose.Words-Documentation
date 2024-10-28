---
title: اعمال قالب بندی سفارشی به فیلد ها در C++
second_title: Aspose.Words برای C++
articleTitle: اعمال قالب بندی سفارشی به زمینه ها
linktitle: اعمال قالب بندی سفارشی به زمینه ها
description: "نتیجه فیلد ها را با استفاده از C++ فرمت و ارزیابی کنید."
type: docs
weight: 40
url: /fa/cpp/applying-custom-formatting-to-fields/
---

گاهی اوقات کاربران باید قالب بندی سفارشی را به زمینه ها اعمال کنند. در این مقاله، ما به چند نمونه از چگونگی انجام این کار نگاه خواهیم کرد.

برای کسب اطلاعات بیشتر در مورد گزینه ها، لیست کامل ویژگی های هر نوع فیلد را در کلاس مربوطه در [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields) مشاهده کنید.

## چگونه قالب بندی سفارشی را به نتیجه فیلد اعمال کنیم

Aspose.Words API را برای قالب بندی سفارشی نتیجه فیلد فراهم می کند. شما می توانید رابط [IFieldResultFormatter](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldresultformatter/) را برای کنترل نحوه قالب بندی نتیجه فیلد پیاده سازی کنید. شما می توانید سوئیچ فرمت عددی را اعمال کنید، یعنی \# "#.## "،سوئیچ فرمت تاریخ / زمان، یعنی \@ " dd.MM.yyyy " و سوئیچ فرمت شماره، یعنی \* مرتب.

مثال کد زیر نشان می دهد که چگونه قالب بندی سفارشی را برای نتیجه فیلد اعمال کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldResultFormatter-FieldResultFormatter.cpp" >}}

## چگونه وضعیت `IF` را ارزیابی کنیم

اگر می خواهید شرایط `IF` را پس از mail merge ارزیابی کنید، می توانید از روش [EvaluateCondition](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/evaluatecondition/) استفاده کنید که بلافاصله نتیجه ارزیابی عبارت را باز می گرداند.

مثال کد زیر نشان می دهد که چگونه از این روش استفاده کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cpp" >}}

## چگونه قالب بندی سفارشی را به فیلد زمان اعمال کنیم

به طور پیش فرض Aspose.Words به روز رسانی `TIME` فیلد با فرهنگ فعلی فرمت کوتاه مدت. اگر می خواهید فیلد `TIME` را با توجه به نیاز خود فرمت کنید، می توانید با پیاده سازی رابط [IFieldUpdateCultureProvider](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldupdatecultureprovider) به این هدف برسید.

نمونه های کد زیر نشان می دهد که چگونه قالب بندی سفارشی را به فیلد `TIME` اعمال کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProviderGetCulture.cpp" >}}