---
title: ترجمه Markdown به مستند سازی مدل شی (DOM)
second_title: Aspose.Words برای C++
articleTitle: ترجمه Markdown به مستند سازی مدل شی (DOM)
linktitle: ترجمه Markdown به مستند سازی مدل شی (DOM)
type: docs
description: "Tarnslate a Markdown document to Document Object Model and back با استفاده از C++. بنابراین شما می توانید با پیچیده موجود Markdown کار کنید و به صورت برنامه ریزی شده یک سند Markdown از ابتدا ایجاد کنید."
weight: 20
url: /fa/cpp/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

برای خواندن، دستکاری و تغییر برنامه ریزی محتوا و قالب بندی یک سند، باید آن را به مدل شیء سند Aspose.Words (DOM) ترجمه کنید.

برخلاف اسناد ورد، Markdown با DOM که در [Aspose.Words مدل شیء سند (DOM)](/words/cpp/aspose-words-document-object-model/) مقاله. با این حال، Aspose.Words مکانیسم خود را برای ترجمه Markdown اسناد به DOM و بازگشت فراهم می کند، به طوری که ما می توانیم با موفقیت با عناصر آنها مانند قالب بندی متن، جداول، سرصفحه ها و دیگران کار کنیم.

این مقاله توضیح می دهد که چگونه ویژگی های مختلف markdown را می توان به Aspose.Words DOM و به Markdown ترجمه کرد.

## پیچیدگی ترجمه Markdown – DOM – Markdown

مشکل اصلی این مکانیزم نه تنها ترجمه Markdown به DOM، بلکه انجام تبدیل معکوس است – برای ذخیره سند به فرمت Markdown با حداقل از دست دادن. عناصری مانند نقل قول های چند سطحی وجود دارد که تبدیل معکوس برای آنها بی اهمیت نیست.

موتور ترجمه ما به کاربران اجازه می دهد نه تنها با عناصر پیچیده در یک سند Markdown موجود کار کنند، بلکه سند خود را در فرمت Markdown با ساختار اصلی از ابتدا ایجاد کنند. برای ایجاد عناصر مختلف، باید از سبک هایی با نام های خاص با توجه به قوانین خاصی که بعدا در این مقاله شرح داده شده است استفاده کنید. چنین سبک هایی می توانند به صورت برنامه ریزی شده ایجاد شوند.

## اصول ترجمه متداول

ما از فرمت [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) برای بلوک های خطی استفاده می کنیم. وقتی که هیچ مکاتبه مستقیم برای یک ویژگی Markdown در Aspose.Words DOM وجود ندارد، ما از یک سبک کاراکتر با نامی استفاده می کنیم که از برخی کلمات خاص شروع می شود.

برای بلوک های کانتینر، ما از میراث سبک برای نشان دادن ویژگی های آشیانه ای Markdown استفاده می کنیم. در این مورد، حتی زمانی که هیچ ویژگی آشیانه ای وجود ندارد، ما همچنین از سبک های پاراگراف با نامی استفاده می کنیم که از برخی کلمات خاص شروع می شود.

لیست های با گلوله و مرتب شده بلوک های کانتینری در Markdown نیز هستند. لانه سازی آنها در DOM به همان شیوه ای که برای تمام بلوک های کانتینر دیگر با استفاده از میراث سبک نشان داده شده است. با این حال، علاوه بر این، لیست های DOM دارای قالب بندی شماره مربوطه در سبک لیست یا قالب بندی پاراگراف هستند.

## بلوک های خطی

ما هنگام ترجمه ویژگی های **Bold**، *Italic* یا ~~Strikethrough~~ inline markdown از قالب بندی [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) استفاده می کنیم.

| ویژگی Markdown | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `get_Font()->set_Bold(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BoldText.h" >}} |  |
| **Italic**<br />`*italic text*` | `get_Font()->set_Italic(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-ItalicText.h" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `get_Font()->set_StrikeThrough(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Strikethrough.h" >}} |  |

ما از یک سبک کاراکتر با نامی استفاده می کنیم که از کلمه `InlineCode` شروع می شود، و به دنبال آن یک نقطه اختیاری `(.)` و تعدادی از backticks ```(`)``` برای ویژگی `InlineCode` است. اگر تعدادی از backticks از دست رفته باشد، پس از آن یک backtick به طور پیش فرض استفاده خواهد شد.

| ویژگی Markdown | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `get_Font()->set_StyleName(u"InlineCode[.][N]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-InlineCode.h" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | کلاس [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/) |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Autolink.h" >}} |  |
| **Link**<br />`[link text](url)`<br />`[link text](<url>"title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | کلاس [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/) |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Link.h" >}} |  |
| **Image**<br />`![](url)`<br />`![alt text](<url>"title")`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | کلاس [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Image.h" >}} |  |

## بلوک های کانتینری

یک سند یک دنباله از بلوک های کانتینر مانند عناوین، پاراگراف ها، لیست ها، نقل قول ها و دیگران است. بلوک های کانتینر را می توان به کلاس های 2 تقسیم کرد: بلوک های برگ و ظروف پیچیده. بلوک های برگ فقط می توانند حاوی محتوای خطی باشند. ظروف پیچیده به نوبه خود می توانند حاوی بلوک های ظرف دیگری از جمله بلوک های برگ باشند.

### بلوک های برگ

جدول زیر نمونه هایی از استفاده از بلوک های برگ Markdown در Aspose.Wordsرا نشان می دهد:

| ویژگی Markdown | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | این یک پاراگراف ساده با شکل HorizontalRule مربوطه است:<br />`DocumentBuilder::InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-HorizontalRule.h" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `get_ParagraphFormat()->set_StyleName(u"Heading N")`، جایی که (1<= N <= 9).<br />این به یک سبک داخلی ترجمه شده است و باید دقیقا از الگوی مشخص شده باشد (هیچ پسوند یا پیشوند مجاز نیست).<br />در غیر این صورت، فقط یک پاراگراف معمولی با سبک مربوطه خواهد بود. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Heading.h" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `get_ParagraphFormat->set_StyleName(u"SetextHeading[some suffix]")`، بر اساس `"Heading N"` سبک.<br />اگر (N > = 2)، پس `"Heading 2"` استفاده خواهد شد، در غیر این صورت `"Heading 1"`.<br />هر پسوند مجاز است، اما وارد کننده Aspose.Words به ترتیب از اعداد "1" و "2" استفاده می کند. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-SetextHeading.h" >}} |  |
| **Indented Code** | `get_ParagraphFormat->set_StyleName(u"IndentedCode[some suffix]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-IndentedCode.h" >}} |  |
| **Fenced Code**<br />{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} | `get_ParagraphFormat()->set_StyleName(u"FencedCode[.][info string]")`<br />`[.]` و `[info string]` اختیاری هستند. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-FencedCode.h" >}} |  |

### ظروف پیچیده

جدول زیر نمونه هایی از استفاده از Markdown ظروف پیچیده در Aspose.Wordsرا نشان می دهد:

| ویژگی Markdown | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `get_ParagraphFormat()->set_StyleName(u"Quote[some suffix]")`<br />پسوند در نام سبک اختیاری است، اما وارد کننده Aspose.Words از اعداد مرتب شده استفاده می کند1, 2, 3, .... در مورد نقل قول های آشیانه ای.<br />لانه سازی از طریق سبک های ارثی تعریف می شود. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Quote.h" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | لیست های با گلوله با استفاده از شماره گذاری پاراگراف نمایش داده می شوند:<br />`get_ListFormat()->ApplyBulletDefault()`<br />می تواند 3 انواع لیست های با گلوله وجود داشته باشد. آنها فقط در قالب شماره گذاری در سطح اول متفاوت هستند. این ها عبارتند از: `‘-’`، `‘+’` یا `‘*’` به ترتیب. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BulletedList.h" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | لیست های مرتب شده با استفاده از شماره گذاری پاراگراف نمایش داده می شوند:<br />`get_ListFormat()->ApplyNumberDefault()`<br />می تواند نشانگرهای فرمت عدد 2 وجود داشته باشد: ‘.’ و ‘)’. نشانگر پیش فرض ‘.’ است. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-OrderedList.h" >}} |  |

### جداول

Aspose.Words همچنین اجازه می دهد تا جداول را به DOM ترجمه کنیم، همانطور که در زیر نشان داده شده است:

| ویژگی Markdown | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/)، [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) و [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) کلاس ها. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Table.h" >}} |  |

## بایگانی برچسب برای:

* [کار با ویژگی های Markdown ](/words/cpp/working-with-markdown-features/)

