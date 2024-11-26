---
title: کار با Hyphenation در C#
second_title: Aspose.Words برای .NET
articleTitle: کار با خط فاصله
linktitle: کار با خط فاصله
description: "از خط فاصله برای چیدمان فشرده تر متن با استفاده از C# استفاده کنید. این الگوریتم های پیشرفته ای را برای کار با دیکشنری های خط خطی ارائه می دهد، از دیکشنری های OpenOffice استفاده می کند."
type: docs
weight: 220
url: /fa/net/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

گاهی اوقات لازم است از خط فاصله برای چینش فشرده تر متن در یک سند استفاده شود. در عین حال، درک این نکته مهم است که ویژگی های خط فاصله کلمات ممکن است برای هر زبان متفاوت باشد.

در حال حاضر، خط فاصله مانند گذشته استفاده نمی شود، به خصوص در متون انگلیسی. با این وجود، استفاده از این ویژگی می تواند تأثیر جدی بر اسناد کاربر بگذارد - خط فاصله بر روی طرح و در نتیجه ظاهر فایل های خروجی، به عنوان مثال، در قالب PDF تأثیر می گذارد.

برای تقسیم صحیح کلمات، از فرهنگ لغت خط خطی مخصوص زبان استفاده می شود. Aspose.Words از الگوریتم های پیشرفته برای کار با چنین لغت نامه هایی استفاده می کند و به شما امکان می دهد همان خط فاصله را در Microsoft Word دریافت کنید.

## دیکشنری های خط فاصله

از آنجایی که زبان های مختلف از هنجارها و قواعد متفاوتی برای خط خطی کلمات استفاده می کنند، راه حل بهینه برای خط خطی صحیح استفاده از دیکشنری های خاص است. Aspose.Words از دیکشنری های OpenOffice استفاده می کند.

برای بررسی املا، OpenOffice از [کتابخانه Hunspell](https://hunspell.github.io/) استفاده می کند که تعمیم الگوریتم خط فاصله TeX است. این الگوریتم با استفاده از الگوهای خط خطی رقیب استاندارد و سفارشی امکان خط‌افشانی غیراستاندارد را فراهم می‌کند. Hunspell از [خط ربط](https://github.com/hunspell/hyphen) برای خط خطی استفاده می کند.

{{% alert color="primary" %}}

دیکشنری های خط خطی را می توان از [فرهنگ لغت LibreOffice GitHub](https://github.com/LibreOffice/dictionaries) گرفت. مثلا [فرهنگ لغت خط فاصله بین ایالات متحده](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

از آنجایی که Microsoft Word از فرهنگ لغت‌هایی غیر از دیکشنری‌های OpenOffice برای انجام خط خطی استفاده می‌کند، خط خط برخی از کلمات تعریف‌شده توسط واژه‌نامه‌های OpenOffice ممکن است با خط فاصله بین Microsoft Word متفاوت باشد. به همین دلیل، گاهی اوقات باید به مشتریان توصیه کنیم که الگوهای لازم را به فرهنگ لغت خود اضافه کنند تا خط فاصله کلمات خاص را برطرف کنند.

{{% /alert %}}

## الگوریتم خط خطی

Aspose.Words [الگوریتم خط خطی TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) را پیاده سازی می کند و می تواند از دیکشنری های خط خطی OpenOffice مجددا استفاده کند.

ویژگی های زیر الگوریتم های Aspose.Words باید در نظر گرفته شود:

* پارامترهای فاصله خط فاصله (LEFTHYPHENMIN، RIGHTHYPHENMIN، COMPOUNDLEFTHYPHENMIN، COMPOUNDRIGHTHYPHENMIN) مشخص شده در فرهنگ لغت خط فاصله نادیده گرفته می شوند. Aspose.Words بسته به حالت سازگاری سند از مجموعه پارامترهای فاصله خود استفاده می کند.
* الگوریتم خط فاصله در Aspose.Words از [خط خطی ترکیبی](https://github.com/hunspell/hyphen/blob/master/README.compound) پشتیبانی می کند. با این حال، Aspose.Words دنباله‌های کاراکتر حاوی نویسه‌های حروف الفبا و غیرالفبایی ترکیبی را به بخش‌های فقط حروف الفبا (کلمات) تقسیم می‌کند و آنها را به طور جداگانه خط خط خطی می‌کند.
  توجه داشته باشید که منطق Microsoft Word خط خطی کردن کلمات مرکب به حالت سازگاری سند بستگی دارد.
* الگوریتم خط فاصله در Aspose.Words [خط فاصله غیر استاندارد](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf) را پیاده سازی نمی کند. الگوهای غیر استاندارد نادیده گرفته می شوند.

## در حال بارگیری دیکشنری های خط فاصله

برای استفاده از ویژگی خط فاصله، ابتدا یک فرهنگ لغت خط فاصله ثبت کنید. مثال کد زیر نحوه بارگیری فرهنگ لغت های خط خطی برای زبان های مشخص شده را از یک فایل نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Hyphenation-HyphenateWordsOfLanguages.cs" >}}

{{% alert color="primary" %}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) دانلود کنید.

{{% /alert %}}

مثال کد زیر نحوه بارگیری دیکشنری های خط خطی را برای زبان مشخص شده از یک جریان نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Hyphenation-LoadHyphenationDictionaryForLanguage.cs" >}}

{{% alert color="primary" %}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) دانلود کنید.

{{% /alert %}}

به‌عنوان جایگزینی برای پیش‌ثبت‌نام واژه‌نامه‌های خط فاصله، ثبت تنها واژه‌نامه‌های خط خطی مورد نیاز "بر اساس درخواست" امکان‌پذیر است. برای دستیابی به آن، رابط [IHyphenationCallback](https://reference.aspose.com/words/net/aspose.words/ihyphenationcallback/) را پیاده سازی کنید و از پاسخ تماس ایستا [Callback](https://reference.aspose.com/words/net/aspose.words/hyphenation/callback/) استفاده کنید.

مثال کد زیر نحوه پیاده سازی رابط **IHyphenationCallback** را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Hyphenation-CustomHyphenation.cs" >}}

## تاثیر خط فاصله در چیدمان

هنگامی که متن را به خطوط تقسیم می کند، Aspose.Words هر کلمه را بررسی می کند که آیا کاملاً با خط فعلی مطابقت دارد یا خیر. اگر کلمه دیگری بیش از حد طولانی باشد که در انتهای خط قرار نگیرد، Aspose.Words به‌طور پیش‌فرض آن را به‌جای زدن خط فاصله، به ابتدای خط بعدی منتقل می‌کند.

با این حال، ویژگی خط خطی را می توان در Aspose.Words برای درج خط فاصله در کلمات به منظور حذف شکاف در متن توجیه شده یا حفظ طول یک خط در ستون های باریک استفاده کرد. این به وضوح می تواند بر تعداد خطوط و در نتیجه تعداد صفحات تأثیر بگذارد. به عبارت دیگر، استفاده از تابع خط خطی بر طرح بندی سند تأثیر می گذارد.

## خط فاصله و توجیه (H&amp;J)

Microsoft Word منطق پیچیده ای برای انتخاب نقطه شکست در صورت توجیه متن و فعال بودن خط فاصله دارد. به طور خلاصه، Microsoft Word ممکن است ترجیح دهد که فضاها را کوچک یا کشیده شود تا از خط خط فاصله بگیرد. به احتمال زیاد این منطق مبتنی بر [مقاله کنوت](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf) است.

Aspose.Words الگوریتم H&amp;J خود را پیاده سازی می کند که همان نتیجه Microsoft Word را می دهد و خط شکستن یکسانی را در سند خروجی ارائه می دهد.

## همچنین ببینید

* [خط خطی – کتابخانه خط خطی](https://github.com/hunspell/hyphen/blob/master/README)
* [خط فاصله غیر استاندارد](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [خط خطی غیر استاندارد خودکار در Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
