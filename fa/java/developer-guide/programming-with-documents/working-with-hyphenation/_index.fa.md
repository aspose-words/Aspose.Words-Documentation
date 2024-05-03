---
title: همکاری با Hyphenation Java
second_title: Aspose.Words برای Java
articleTitle: کار با Hyphenation
linktitle: کار با Hyphenation
description: "استفاده از هیپنوتیزم برای یک آرایش فشرده تر از متن. این الگوریتم های پیشرفته را برای کار با دیپورتیشن های هیپنوتیزم فراهم می کند، با استفاده از OpenOffice Dictionaries استفاده می کند. Java..."
type: docs
weight: 220
url: /fa/java/working-with-hyphenation/
---

گاهی اوقات لازم است برای استفاده از هیپنوتیزم برای یک آرایش فشرده تر از متن در یک سند. در عین حال، مهم است که درک کنیم که ویژگی های کلمه ای برای هر زبان متفاوت است.

در حال حاضر، به عنوان اغلب به عنوان آن استفاده نمی شود، به ویژه در متون انگلیسی. با این وجود، استفاده از این ویژگی می تواند تاثیر جدی بر اسناد کاربر داشته باشد – به عنوان یک نتیجه، ظاهر فایل های خروجی، به عنوان مثال، در فرمت PDF.

برای تقسیم صحیح کلمات، از واژه های خاص زبان استفاده می شود. Aspose.Words از الگوریتم های پیشرفته برای کار با چنین اشتباهاتی استفاده می کند و به شما اجازه می دهد تا همان تکرار را به عنوان در داخل دریافت کنید. Microsoft Word...

## Hyphenation Dictionaries

از آنجا که زبان های مختلف از هنجارهای و قوانین مختلف برای واژه های واژه استفاده می کنند، راه حل بهینه برای تکرار صحیح، استفاده از اصطلاحات خاص است. Aspose.Words استفاده از OpenOffice Dictionaries

برای چک کردن طلسم، OpenOffice استفاده از [Hunspell کتابخانه کتابخانه کتابخانه](https://hunspell.github.io/), که یک تعمیم از الگوریتم هیپنوتیزم TeX است. این الگوریتم اجازه می دهد تا برای تحریک غیر استاندارد خودکار با استفاده از الگوهای استاندارد رقابت و تقلید سفارشی. Hunspell استفاده از [Hyperhen](https://github.com/hunspell/hyphen) برای هیپنوتیزم

{{% alert color="primary" %}}

اخراج های Hyphenation را می توان از [LibreOffice مطالبات GitHub](https://github.com/LibreOffice/dictionaries)... برای مثال، [دانلود موسیقی متن فیلم Punch-US Hyphenation Dictionary](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic)...

{{% /alert %}}

{{% alert color="primary" %}}

همانطور که Microsoft Word استفاده از دیماتیک به غیر از پرونده های OpenOffice برای انجام سوء استفاده، تکرار برخی از کلمات تعریف شده توسط OpenOffice dictionaries ممکن است متفاوت از Microsoft Word استفراغ به همین دلیل، گاهی اوقات ما باید به مشتریان توصیه کنیم که الگوهای لازم را به دیماتیک خود اضافه کنند تا کلمات خاصی را اصلاح کنند.

{{% /alert %}}

## الگوریتم Hyphenation Algorithm

Aspose.Words پیاده سازی [دانلود موسیقی متن بازی The Punch بازی Punch-X](https://github.com/hunspell/hyphen/blob/master/README.hyphen) و می تواند از دیپورتیشن های OpenOffice استفاده کند.

ویژگی های زیر Aspose.Words الگوریتم ها باید در نظر گرفته شوند:

* • پارامترهای فاصله زمانی (LEFTHYP WhenMIN، RightHYP WhenMIN) COMهنگامی که من COMهنگامی که MIN مشخص شده در فرهنگ لغت. Aspose.Words استفاده از مجموعه ای از پارامترهای فاصله بسته به حالت سازگاری سند.
* الگوریتم هیپنوتیزم در Aspose.Words پشتیبانی [دانلود بازی Hyphenation](https://github.com/hunspell/hyphen/blob/master/README.compound)... با این حال، Aspose.Words تقسیم توالی های شخصیتی شامل حروف الفبائی و غیر آلفا به قطعات الفبائی (کلمات) و آنها را به طور جداگانه.
  توجه داشته باشید که Microsoft Word منطق تحریف کلمات ترکیبی بستگی به حالت سازگاری سند دارد.
* الگوریتم هیپنوتیزم در Aspose.Words پیاده سازی نمی کند [غیر استاندارد هیپنوتیزم](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)... الگوهای غیر استاندارد نادیده گرفته می شوند.

## دانلود بازی Hyphenation Dictionaries

برای استفاده از ویژگی های تکراری، ابتدا یک فرهنگ لغت را ثبت کنید. مثال کد زیر نشان می دهد که چگونه می توان دیپورتیشن های تکراری را برای زبان های مشخص شده از یک فایل بارگیری کرد:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب این مثال را دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)...

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه می توان دیپورتیشن های تکراری را برای زبان مشخص شده از یک جریان بارگیری کرد:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب این مثال را دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)...

{{% /alert %}}

به عنوان یک جایگزین برای پیشگیری از افسردگی های تحریک آمیز، ممکن است ثبت نام تنها نیاز به سوء استفاده از هیپنوتیزم "به درخواست". برای رسیدن به آن، پیاده سازی [IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/) رابط کاربری و استفاده از callback استاتیک [Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback)...

مثال کد زیر نشان می دهد که چگونه برای پیاده سازی **IHyphenationCallback** رابط:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## تاثیر Hyphenation در Set

هنگام شکستن متن به خطوط، Aspose.Words هر کلمه را بررسی کنید که آیا به طور کامل در خط فعلی قرار دارد. اگر یک کلمه دیگر بیش از حد طولانی باشد تا در پایان خط قرار گیرد، به طور پیش فرض Aspose.Words آن را به آغاز خط بعدی به جای تحریک آن حرکت دهید.

با این حال، ویژگی تحریک کننده را می توان در Aspose.Words برای قرار دادن هیپنوتیزم به کلمات برای از بین بردن شکاف در متن توجیه شده یا حفظ طول خط حتی در ستون های باریک. این می تواند بر تعداد خطوط و در نتیجه تعداد صفحات تاثیر بگذارد. به عبارت دیگر، استفاده از تابع اختلال شنوایی بر طرح سند تأثیر می گذارد.

## Hyphenation و Justification (H&J)

Microsoft Word دارای منطق پیچیده برای انتخاب یک نقطه شکستن است اگر متن توجیه شده باشد و تحریف امکان پذیر باشد. به طور خلاصه، Microsoft Word ممکن است ترجیح دهید فضاهای را کوچک یا کشش کنید تا از تکرار خط جلوگیری شود. احتمالا این منطق بر اساس [دانلود بازی Knuth](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf)...

Aspose.Words اجرای الگوریتم H&J خود را که همان نتیجه را می دهد Microsoft Word و شکستن خط یکسان در سند خروجی را فراهم می کند.

## همچنین ببینید

* [Hyperhen - Hyphenation](https://github.com/hunspell/hyphen/blob/master/README)
* [غیر استاندارد هیپنوتیزم](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [دانلود موسیقی متن بازی The Punch دانلود بازی Punch](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
