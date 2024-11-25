---
title: ترجمه Markdown به DOM
second_title: Aspose.Words برای Java
articleTitle: ترجمه Markdown به مستند سازی مدل شی (DOM)
linktitle: ترجمه Markdown به مستند سازی مدل شی (DOM)
type: docs
description: "Tarnslate یک سند Markdown برای مستند کردن مدل شی و بازگشت. بنابراین شما می توانید با Markdown پیچیده موجود کار کنید و به صورت برنامه ریزی شده یک سند Markdown از ابتدا با استفاده از Java ایجاد کنید."
weight: 20
url: /fa/java/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

برای خواندن، دستکاری و تغییر برنامه ریزی محتوا و قالب بندی یک سند، باید آن را به مدل شیء سند Aspose.Words (DOM) ترجمه کنید.

برخلاف اسناد ورد، Markdown با DOM که در [Aspose.Words مدل شیء سند (DOM)](/words/java/aspose-words-document-object-model/) مقاله. با این حال، Aspose.Words مکانیسم خود را برای ترجمه Markdown اسناد به DOM و بازگشت فراهم می کند، به طوری که ما می توانیم با موفقیت با عناصر آنها مانند قالب بندی متن، جداول، سرصفحه ها و دیگران کار کنیم.

این مقاله توضیح می دهد که چگونه ویژگی های مختلف markdown را می توان به Aspose.Words DOM و به Markdown ترجمه کرد.

## پیچیدگی ترجمه Markdown – DOM – Markdown

مشکل اصلی این مکانیزم نه تنها ترجمه Markdown به DOM، بلکه انجام تبدیل معکوس است – برای ذخیره سند به فرمت Markdown با حداقل از دست دادن. عناصری مانند نقل قول های چند سطحی وجود دارد که تبدیل معکوس برای آنها بی اهمیت نیست.

موتور ترجمه ما به کاربران اجازه می دهد نه تنها با عناصر پیچیده در یک سند Markdown موجود کار کنند، بلکه سند خود را در فرمت Markdown با ساختار اصلی از ابتدا ایجاد کنند. برای ایجاد عناصر مختلف، باید از سبک هایی با نام های خاص با توجه به قوانین خاصی که بعدا در این مقاله شرح داده شده است استفاده کنید. چنین سبک هایی می توانند به صورت برنامه ریزی شده ایجاد شوند.

## اصول ترجمه متداول

ما از فرمت [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) برای بلوک های خطی استفاده می کنیم. وقتی که هیچ مکاتبه مستقیم برای یک ویژگی Markdown در Aspose.Words DOM وجود ندارد، ما از یک سبک کاراکتر با نامی استفاده می کنیم که از برخی کلمات خاص شروع می شود.

برای بلوک های کانتینر، ما از میراث سبک برای نشان دادن ویژگی های آشیانه ای Markdown استفاده می کنیم. در این مورد، حتی زمانی که هیچ ویژگی آشیانه ای وجود ندارد، ما همچنین از سبک های پاراگراف با نامی استفاده می کنیم که از برخی کلمات خاص شروع می شود.

لیست های با گلوله و مرتب شده بلوک های کانتینری در Markdown نیز هستند. لانه سازی آنها در DOM به همان شیوه ای که برای تمام بلوک های کانتینر دیگر با استفاده از میراث سبک نشان داده شده است. با این حال، علاوه بر این، لیست های DOM دارای قالب بندی شماره مربوطه در سبک لیست یا قالب بندی پاراگراف هستند.

## بلوک های خطی

ما هنگام ترجمه ویژگی های **Bold**، *Italic* یا ~~Strikethrough~~ inline markdown از قالب بندی [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) استفاده می کنیم.

| ویژگی Markdown | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `Font.Bold = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}} |  |
| **Italic**<br />`*italic text*` | `Font.Italic = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `Font.StrikeThrough = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}} |  |

ما از یک سبک کاراکتر با نامی استفاده می کنیم که از کلمه `InlineCode` شروع می شود، و به دنبال آن یک نقطه اختیاری `(.)` و تعدادی از backticks ```(`)``` برای ویژگی `InlineCode` است. اگر تعدادی از backticks از دست رفته باشد، پس از آن یک backtick به طور پیش فرض استفاده خواهد شد.

| ویژگی Markdown | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `Font.StyleName = "InlineCode[.][N]"` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | کلاس [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}} |  |
| **Link**<br />`[متن لینک](url)`<br />`[متن لینک](<url>"title")`<br />`[متن لینک](url 'title')`<br />`[متن لینک](url (title))` | کلاس [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}} |  |
| **Image**<br />`![](/words/java/translate-markdown-to-document-object-model/url)`<br />`![متن جایگزین](/words/java/translate-markdown-to-document-object-model/<url>"title")`<br />`![متن جایگزین](/words/java/translate-markdown-to-document-object-model/url ‘title’)`<br />`![متن جایگزین](/words/java/translate-markdown-to-document-object-model/url (title))` | کلاس [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}} |  |

## بلوک های کانتینری

یک سند یک دنباله از بلوک های کانتینر مانند عناوین، پاراگراف ها، لیست ها، نقل قول ها و دیگران است. بلوک های ظرف را می توان به 2 کلاس تقسیم کرد: بلوک های برگ و ظروف پیچیده. بلوک های برگ فقط می توانند حاوی محتوای خطی باشند. ظروف پیچیده به نوبه خود می توانند حاوی بلوک های ظرف دیگری از جمله بلوک های برگ باشند.

### بلوک های برگ

جدول زیر نمونه هایی از استفاده از بلوک های برگ Markdown در Aspose.Wordsرا نشان می دهد:

| ویژگی Markdown | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | این یک پاراگراف ساده با شکل HorizontalRule مربوطه است:<br />`DocumentBuilder.InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `ParagraphFormat.StyleName = "Heading N"`، جایی که (1<= N <= 9).<br />این به یک سبک داخلی ترجمه شده است و باید دقیقا از الگوی مشخص شده باشد (هیچ پسوند یا پیشوند مجاز نیست).<br />در غیر این صورت، فقط یک پاراگراف معمولی با سبک مربوطه خواهد بود. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `ParagraphFormat.StyleName = "SetextHeading[some suffix]"`، بر اساس سبک "Heading N".<br />اگر (n >= 2)، پس "Heading 2 "استفاده خواهد شد، در غیر این صورت" Heading 1".<br />هر پسوند مجاز است، اما وارد کننده Aspose.Words به ترتیب از اعداد "1" و "2" استفاده می کند. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}} |  |
| **Indented Code**<br>{{< highlight java >}}<br/>if ()<br/>then<br/>else<br/>```{{< /highlight >}} | `ParagraphFormat.StyleName = "IndentedCode[some suffix]"` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}} |  |
### ظروف پیچیده

جدول زیر نمونه هایی از استفاده از Markdown ظروف پیچیده در Aspose.Wordsرا نشان می دهد:

| ویژگی Markdown | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `ParagraphFormat.StyleName = "Quote[some suffix]"`<br />پسوند در نام سبک اختیاری است ،اما Aspose.Words وارد کننده از اعداد مرتب شده استفاده می کند 1, 2, 3, .... در مورد نقل قول های آشیانه ای.<br />لانه سازی از طریق سبک های ارثی تعریف می شود. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | لیست های با گلوله با استفاده از شماره گذاری پاراگراف نمایش داده می شوند:<br />`ListFormat.ApplyBulletDefault()`<br />می تواند 3 نوع لیست با گلوله وجود داشته باشد. آنها فقط در قالب شماره گذاری در سطح اول متفاوت هستند. این ها عبارتند از: `‘-’`، `‘+’` یا `‘*’` به ترتیب. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | لیست های مرتب شده با استفاده از شماره گذاری پاراگراف نمایش داده می شوند:<br />`ListFormat.ApplyNumberDefault()`<br />می تواند 2 عدد نشانگر فرمت وجود داشته باشد: ‘.’ و ‘)’. نشانگر پیش فرض ‘.’ است. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}} |  |

### جداول

Aspose.Words همچنین اجازه می دهد تا جداول را به DOM ترجمه کنیم، همانطور که در زیر نشان داده شده است:

| ویژگی Markdown | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | [Table](https://reference.aspose.com/words/java/com.aspose.words/table/)، [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) و [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) کلاس ها. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}} |  |

## بایگانی برچسب برای:

* [کار با ویژگی های Markdown](/words/java/working-with-markdown-features/)

