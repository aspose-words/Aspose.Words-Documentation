---
title: گزینه ها و ظاهر سند Word
second_title: Aspose.Words برای .NET
articleTitle: کار با گزینه ها و ظاهر اسناد Word
linktitle: کار با گزینه ها و ظاهر اسناد Word
description: "با در نظر گرفتن تفاوت بین نسخه های مختلف Microsoft Word با استفاده از C#، ظاهر اسناد Word را کنترل کنید."
type: docs
weight: 40
url: /fa/net/work-with-word-document-options-and-appearance/
---

گاهی اوقات ممکن است لازم باشد ظاهر یک سند را تغییر دهید، به عنوان مثال، تنظیمات برگزیده زبان یا تعداد خطوط در هر صفحه را تنظیم کنید.Aspose.Words توانایی کنترل نحوه نمایش سند و همچنین برخی گزینه های اضافی را فراهم می کند. این مقاله چنین احتمالاتی را شرح می دهد.

## گزینه های نمایش سند را تنظیم کنید

شما می توانید نحوه نمایش یک سند در Microsoft Word را با استفاده از کلاس [ViewOptions](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/) کنترل کنید. برای مثال، می‌توانید مقدار بزرگ‌نمایی سند را با استفاده از ویژگی [ZoomPercent](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/zoompercent/) یا حالت نمایش را با استفاده از ویژگی [ViewType](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/viewtype/) تنظیم کنید.

مثال کد زیر نشان می دهد که چگونه می توان اطمینان حاصل کرد که یک سند هنگام باز شدن در Microsoft Word با 50٪ نمایش داده می شود:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetViewOption-SetViewOption.cs" >}}

{{% alert color="primary" %}}

می توانید فایل قالب این نمونه را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) دانلود کنید.

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 هیچ ضریب بزرگنمایی را روی یک سند نمی نویسد و دیگر بزرگنمایی پیش فرض را از مقدار نوشته شده روی سند تنظیم نمی کند، در عوض، به نظر می رسد از ضریب بزرگنمایی آخرین سند باز استفاده می کند.

{{% /alert %}}

## گزینه های نمایش صفحه را تنظیم کنید

اگر می خواهید تعداد کاراکترها را در هر خط تنظیم کنید، از ویژگی [CharactersPerLine](https://reference.aspose.com/words/net/aspose.words/pagesetup/charactersperline/) استفاده کنید. همچنین می‌توانید تعداد خطوط در هر صفحه را برای یک سند Word تنظیم کنید - از ویژگی [LinesPerPage](https://reference.aspose.com/words/net/aspose.words/pagesetup/linesperpage/) برای دریافت یا تنظیم تعداد خطوط در هر صفحه در شبکه سند استفاده کنید.

{{% alert color="primary" %}}

در Microsoft Word، تنها زمانی که پشتیبانی از زبان آسیایی نصب شده باشد، می‌توانید با استفاده از زبانه "شبکه سند" در کادر محاوره‌ای "تنظیم صفحه"، همان پارامترها را تنظیم کنید.

{{% /alert %}}

مثال کد زیر نحوه تنظیم تعداد کاراکتر در هر خط و تعداد خطوط در هر صفحه برای یک سند Microsoft Word را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cs" >}}

## تنظیمات زبان را تنظیم کنید

نمایش یک سند در Microsoft Word بستگی به این دارد که کدام زبان به عنوان پیش فرض برای این سند تنظیم شده باشد. اگر هیچ زبانی در پیش‌فرض تنظیم نشده باشد، Microsoft Word اطلاعاتی را از کادر محاوره‌ای "تنظیم تنظیمات زبان آفیس" دریافت می‌کند، که برای مثال، می‌توانید آن را در زیر "فایل → گزینه‌ها → زبان" در Microsoft Word 2019 پیدا کنید.

با Aspose.Words، می‌توانید ترجیحات زبان را با استفاده از کلاس [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/) تنظیم کنید. همچنین توجه داشته باشید که برای نمایش صحیح سند خود، لازم است نسخه Microsoft Word را تنظیم کنید که فرآیند بارگیری سند باید مطابقت داشته باشد - این را می توان با استفاده از ویژگی [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/) انجام داد.

{{% alert color="primary" %}}

اگر سند تولید شده Aspose.Words شما مطابق انتظار نیست، مقادیر **LanguagePreferences** و **MswVersion** را بررسی کنید و در صورت لزوم آنها را برای مطابقت با تنظیمات نسخه Microsoft Word خود تنظیم کنید.

{{% /alert %}}

مثال کد زیر نحوه افزودن ژاپنی به زبان های ویرایش را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cs" >}}

مثال کد زیر نحوه تنظیم زبان روسی را به عنوان زبان ویرایش پیش فرض نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cs" >}}

## بهینه سازی یک سند برای یک نسخه Word خاص

روش [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/) امکان بهینه‌سازی محتوای سند و همچنین رفتار پیش‌فرض Aspose.Words را برای یک نسخه خاص از Microsoft Word فراهم می‌کند. می‌توانید از این روش برای جلوگیری از نمایش نوار "حالت سازگاری" هنگام بارگذاری سند توسط Microsoft Word استفاده کنید. توجه داشته باشید که ممکن است لازم باشد ویژگی `Compliance` را روی Iso29500_2008_Transitional یا بالاتر تنظیم کنید.

مثال کد زیر نحوه بهینه سازی محتوای سند را برای Microsoft Word 2016 نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cs" >}}
