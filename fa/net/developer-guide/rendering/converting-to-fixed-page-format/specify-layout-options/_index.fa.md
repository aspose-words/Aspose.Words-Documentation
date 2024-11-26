---
title: گزینه های Layout را در C# مشخص کنید
second_title: Aspose.Words برای .NET
articleTitle: گزینه های Layout را مشخص کنید
linktitle: گزینه های Layout را مشخص کنید
description: "گزینه های Layout را برای طرح بندی اسناد مختلف با استفاده از C# مشخص کنید."
type: docs
weight: 10
url: /fa/net/specify-layout-options/
timestamp: 2024-07-10-08-10-45
---

Aspose.Words به شما امکان می دهد اسناد خروجی را با طرح بندی های مختلف، بسته به پارامترهای مشخص شده در ویژگی های کلاس [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/) ایجاد کنید. برخی از این ویژگی ها شبیه به برخی از گزینه های منوی رابط کاربری Microsoft Word هستند - آنها در این مقاله توضیح داده خواهند شد.

برای فهرست کامل پارامترهایی مانند [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/continuoussectionpagenumberingrestart/) برای محاسبه شماره صفحات در یک بخش پیوسته که شماره‌گذاری صفحه را مجدداً راه‌اندازی می‌کند، یا [IgnorePrinterMetrics](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/ignoreprintermetrics/) برای نادیده گرفتن گزینه سازگاری "استفاده از معیارهای چاپگر برای طرح‌بندی سند"، صفحه کلاس [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/) را ببینید.

## قالب بندی علامت ها

Aspose.Words اجازه می دهد تا علائم قالب بندی را با استفاده از ویژگی های زیر مدیریت کنید:

- [ShowHiddenText](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showhiddentext/) - یک مقدار `Boolean`، که مشخص می کند آیا متن پنهان ارائه می شود یا خیر.
- [ShowParagraphMarks](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showparagraphmarks/) - یک مقدار `Boolean`، که مشخص می کند آیا کاراکترهای علامت پاراگراف ارائه می شوند یا خیر.

صفحه نشان داده شده در مثال زیر شامل سه پاراگراف است. دومی پنهان است. کاربر می تواند گزینه **ShowHiddenText** را برای نمایش این متن پنهان در صفحه تغییر دهد. همچنین هر پاراگراف دارای یک علامت پاراگراف در پایان است. علامت پاراگراف معمولاً قابل مشاهده نیست مگر اینکه ویژگی **ShowParagraphMarks** برای ارائه آن تنظیم شده باشد.

![specify-layout-options_1](/words/net/specify-layout-options/specify-layout-options-1.png)

در Microsoft Word، این پارامترها با استفاده از کادر محاوره ای "File → Options → Display" به صورت زیر تنظیم می شوند:

![specify-layout-options_2](/words/net/specify-layout-options/specify-layout-options-2.jpg)

## نظرات و تجدید نظرها

با Aspose.Words، می‌توانید کامنت‌های سندی را که شبیه Microsoft Word به نظر می‌رسند ارائه دهید. برای تعیین اینکه آیا نظرات ارائه می شوند یا خیر، از ویژگی [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/) استفاده کنید.

در Microsoft Word، این پارامتر با استفاده از کادر محاوره‌ای "Track Changes Options" مانند شکل زیر تنظیم می‌شود:

![specify-layout-options_3](/words/net/specify-layout-options/specify-layout-options-3.jpg)

همچنین، Aspose.Words به شما اجازه می دهد تا ویرایش ها را در یک سند نمایش دهید. از ویژگی [RevisionOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/revisionoptions/) کلاس **LayoutOptions** برای تعیین اینکه آیا ویرایش های سند نمایش داده می شوند استفاده کنید. برای کنترل ظاهر آنها (رنگ برجسته بازبینی، رنگ نوار بازبینی و غیره) از کلاس [RevisonOptions](https://reference.aspose.com/words/net/aspose.words.layout/revisionoptions/) استفاده کنید.

همچنین می‌توانید ویرایش‌ها را به عنوان نظرات محتوا نمایش دهید. برای این منظور از ویژگی [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/) و مقدار [ShowInBalloons](https://reference.aspose.com/words/net/aspose.words.layout/commentdisplaymode/) استفاده کنید.

مثال کد زیر نحوه سفارشی سازی نمایش نسخه ها را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShowRevisionsInBalloons.cs" >}}

تصویر زیر نشان می‌دهد که چگونه Aspose.Words نظرات و ویرایش‌های Delete را ارائه می‌کند:

<img src="/words/net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>

## شکل دهنده متن برای رندر پیشرفته تایپوگرافی

ویژگی [TextShaperFactory](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/textshaperfactory/) شما را قادر می سازد تا عملکرد شکل دهی متن و همچنین پشتیبانی از ویژگی های `OpenType` را تنظیم کنید.

از شکل دهی متن برای پردازش سند در موارد اصلی زیر استفاده کنید:

- یک سند از Kerning، Numeral Shaping، Numeral Forms یا Ligatures استفاده می کند.
- یک سند از اسکریپت های پیچیده مانند عربی، خمری، تایلندی و غیره استفاده می کند.

{{% alert color="primary" %}}

شکل‌دهی متن فقط هنگام صادر کردن یک سند به PDF یا XPS فعال می‌شود.

{{% /alert %}}
