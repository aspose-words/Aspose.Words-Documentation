---
title: کار با خط کش در C++
second_title: Aspose.Words برای C++
articleTitle: کار با خط کش
linktitle: کار با خط کش
description: "از خط کش برای ترتیب متن جمع و جورتر با استفاده از C++ استفاده کنید. الگوریتم های پیشرفته ای را برای کار با دیکشنری هایفنیشن فراهم می کند، از دیکشنری های OpenOffice استفاده می کند."
type: docs
weight: 220
url: /fa/cpp/working-with-hyphenation/
timestamp: 2024-01-30-16-22-34
---

گاهی اوقات لازم است از خط کش برای ترتیب فشرده تر متن در یک سند استفاده شود. در عین حال، مهم است که درک کنیم که ویژگی های خط کش کلمه ممکن است برای هر زبان متفاوت باشد.

در حال حاضر، خط کش به همان اندازه که قبلا استفاده می شد، به ویژه در متون انگلیسی استفاده نمی شود. با این وجود، استفاده از این ویژگی می تواند تأثیر جدی بر اسناد کاربر داشته باشد – خط کش بر طرح و در نتیجه ظاهر فایل های خروجی، به عنوان مثال، در فرمت PDF تأثیر می گذارد.

برای تقسیم صحیح کلمات، از فرهنگ لغت های خاص زبان استفاده می شود. Aspose.Words از الگوریتم های پیشرفته برای کار با چنین دیکشنری هایی استفاده می کند و به شما اجازه می دهد همان خط کش را که در Microsoft Word وجود دارد، بدست آورید.

## فرهنگ لغت های خط کش

از آنجا که زبانهای مختلف از هنجارها و قواعد مختلف برای خط کش کلمات استفاده می کنند، راه حل بهینه برای خط کش صحیح استفاده از دیکشنری های خاص است. Aspose.Words از فرهنگ لغت های OpenOffice استفاده می کند.

برای بررسی املا، OpenOffice از [Hunspell کتابخانه](https://hunspell.github.io/)، که یک تعمیم الگوریتم خط کش TeX است. این الگوریتم اجازه می دهد تا برای خط کش غیر استاندارد خودکار با استفاده از الگوهای خط کش استاندارد و سفارشی رقابت. Hunspell از [خط کش](https://github.com/hunspell/hyphen) برای خط کش.

{{% alert color="primary" %}}

دیکشنری های خط کش را می توان از [LibreOffice لغت نامه GitHub](https://github.com/LibreOffice/dictionaries). به عنوان مثال, [en - US hyphenation dictionary](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

از آنجا که Microsoft Word از دیکشنری های غیر از OpenOffice دیکشنری برای انجام خط کش استفاده می کند، خط کش برخی از کلمات تعریف شده توسط OpenOffice دیکشنری ها ممکن است با خط کش Microsoft Word متفاوت باشد. به همین دلیل، گاهی اوقات ما باید به مشتریان توصیه کنیم که الگوهای لازم را به دیکشنری های خود اضافه کنند تا خط کش کلمات خاص را اصلاح کنند.

{{% /alert %}}

## الگوریتم خط کش

Aspose.Words اجرا می کند [الگوریتم خط کش TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) و می تواند از فرهنگ لغت های OpenOffice استفاده کند.

ویژگی های زیر الگوریتم های Aspose.Words باید در نظر گرفته شود:

* پارامترهای فاصله خط کش(LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) مشخص شده در فرهنگ لغت hyphenation نادیده گرفته می شود. Aspose.Words از مجموعه پارامترهای فاصله خود بسته به حالت سازگاری سند استفاده می کند.
* الگوریتم خط کش در Aspose.Words پشتیبانی می کند [خط کش کامپوزیت](https://github.com/hunspell/hyphen/blob/master/README.compound). با این حال، Aspose.Words توالی های کاراکتر حاوی حروف الفبا مخلوط و غیر الفبا را به بخش های الفبا (کلمات) تقسیم می کند و آنها را به طور جداگانه خط کش می کند.
  توجه داشته باشید که Microsoft Word منطق خط کش کلمات ترکیبی به حالت سازگاری سند بستگی دارد.
* الگوریتم خط کش در Aspose.Words پیاده سازی نمی کند [خط کش غیر استاندارد](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). الگوهای غیر استاندارد نادیده گرفته می شوند.

## بارگذاری دیکشنری های هیفن

برای استفاده از ویژگی hyphenation، ابتدا یک فرهنگ لغت hyphenation را ثبت کنید.مثال کد زیر نشان می دهد که چگونه دیکشنری های خط کش را برای زبان های مشخص شده از یک فایل بارگذاری کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-HyphenateWordsOfLanguages.h" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples)

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه دیکشنری های خط کش را برای زبان مشخص شده از یک جریان بارگذاری کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-LoadHyphenationDictionaryForLanguage.h" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples)

{{% /alert %}}

به عنوان یک جایگزین برای پیش ثبت دیکشنری های خط کش، امکان ثبت تنها دیکشنری های خط کش مورد نیاز "به درخواست"وجود دارد. برای رسیدن به این هدف، رابط [IHyphenationCallback](https://reference.aspose.com/words/cpp/aspose.words/ihyphenationcallback/) را پیاده سازی کنید و از فراخوان استاتیک [Callback](https://reference.aspose.com/words/cpp/aspose.words/hyphenation/get_callback/) استفاده کنید.

مثال کد زیر نشان می دهد که چگونه رابط **IHyphenationCallback** را پیاده سازی کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-CustomHyphenation.h" >}}

## تاثیر خط کش روی طرح بندی

هنگام شکستن متن به خطوط، Aspose.Words هر کلمه را بررسی می کند که آیا کاملا با خط فعلی مطابقت دارد یا خیر. اگر کلمه دیگری برای قرار دادن در انتهای خط خیلی طولانی باشد، به طور پیش فرض Aspose.Words آن را به جای خط خط بعدی به ابتدای خط بعدی منتقل می کند.

با این حال، ویژگی hyphenation می تواند در Aspose.Words برای وارد کردن hyphens به کلمات برای از بین بردن شکاف در متن توجیه شده یا برای حفظ طول خط مساوی در ستون های باریک استفاده شود. این به وضوح می تواند بر تعداد خطوط و در نتیجه تعداد صفحات تاثیر بگذارد. به عبارت دیگر، استفاده از تابع خط کش بر طرح سند تأثیر می گذارد.

## خط کش و توجیه (H & J)

Microsoft Word منطق پیچیده ای برای انتخاب نقطه توقف دارد اگر متن توجیه شده و خط کش فعال باشد. به طور خلاصه ،Microsoft Word ممکن است ترجیح دهد فضاها را کوچک یا کشش دهد تا از خط خط خط جلوگیری شود. احتمالا این منطق بر اساس [مقاله ی "نوت"](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words الگوریتم H&J خود را پیاده سازی می کند که همان نتیجه را به عنوان Microsoft Word می دهد و شکستن خط یکسان را در سند خروجی فراهم می کند.

## بایگانی برچسب برای:

* [کتابخانه خط کش](https://github.com/hunspell/hyphen/blob/master/README)
* [خط کش غیر استاندارد](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [خط کش غیر استاندارد خودکار در دفتر باز](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
