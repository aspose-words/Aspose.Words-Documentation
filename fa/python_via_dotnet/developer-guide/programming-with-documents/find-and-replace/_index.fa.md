---
title: در Python پیدا و جایگزین کنید
second_title: Aspose.Words برای Python via .NET
articleTitle: پیدا کنید و جایگزین کنید
linktitle: پیدا کنید و جایگزین کنید
type: docs
description: "یک رشته یا الگوی عبارت منظم را در سند خود پیدا کنید و آن را با متنی که می خواهید با استفاده از Python جایگزین کنید."
weight: 100
url: /fa/python-net/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

شما به راحتی می توانید با استفاده از صفحه کلید و ماوس در سند خود حرکت کنید، اما اگر صفحات زیادی برای پیمایش دارید، یافتن متن خاصی در یک سند طولانی مدت زمان زیادی طول می کشد. زمانی که بخواهید نویسه‌ها یا کلمات خاصی را که در سند خود استفاده کرده‌اید جایگزین کنید زمان‌برتر خواهد بود. عملکرد "یافتن و جایگزینی" به شما امکان می دهد دنباله ای از کاراکترها را در یک سند پیدا کنید و آن را با دنباله دیگری از کاراکترها جایگزین کنید.

Aspose.Words به شما امکان می دهد یک رشته یا الگوی عبارت منظم را در سند خود پیدا کنید و بدون نصب و استفاده از برنامه های کاربردی اضافی مانند Microsoft Word، آن را با یک جایگزین جایگزین کنید. این کار بسیاری از کارهای تایپ و قالب بندی را سرعت می بخشد و به طور بالقوه باعث صرفه جویی در ساعات کار شما می شود.

این مقاله نحوه اعمال جایگزینی رشته و عبارات منظم با پشتیبانی از متاکراکترها را توضیح می دهد.

## راه هایی برای یافتن و جایگزینی {#ways-to-find-and-replace}

Aspose.Words با استفاده از موارد زیر دو راه را برای اعمال عملیات Find and جایگزین ارائه می دهد:

1. *تعویض رشته ساده* – برای یافتن و جایگزینی یک رشته خاص با رشته دیگر، باید یک رشته جستجو (کاراکترهای الفبایی) را مشخص کنید که قرار است با توجه به همه موارد با یک رشته جایگزین مشخص شده دیگر جایگزین شود. هر دو رشته نباید دارای علامت باشند. در نظر بگیرید که مقایسه رشته می تواند به حروف کوچک و بزرگ حساس باشد، یا ممکن است از املای آن مطمئن نباشید یا چندین املای مشابه داشته باشید.
2. *عبارات منظم* – برای تعیین یک عبارت منظم برای یافتن رشته های دقیق مطابق و جایگزینی آنها با توجه به عبارت منظم شما. توجه داشته باشید که یک کلمه به این صورت تعریف می شود که فقط از کاراکترهای الفبایی ساخته شده باشد. اگر جایگزینی فقط با کل کلمات مطابقت داده شود و رشته ورودی حاوی نمادها باشد، هیچ عبارتی پیدا نخواهد شد.

علاوه بر این، می‌توانید از متاکاراکترهای ویژه با جایگزینی رشته‌های ساده و عبارات منظم برای مشخص کردن شکست‌ها در عملیات find و جایگزین استفاده کنید.

Aspose.Words قابلیت یافتن و جایگزینی را با ماژول [aspose.words.replacing](https://reference.aspose.com/words/python-net/aspose.words.replacing/) ارائه می دهد. با استفاده از کلاس [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/) می‌توانید با گزینه‌های زیادی در طول فرآیند Find and جایگزینی کار کنید.

### یافتن و جایگزینی متن با استفاده از جایگزین رشته ساده {#find-and-replace-text-using-simple-string-replacement}

می‌توانید از یکی از روش‌های [replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/) و [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) برای یافتن یا جایگزینی یک رشته خاص استفاده کنید و تعداد جایگزین‌های انجام شده را برگردانید. در این مورد، می‌توانید رشته‌ای را برای جایگزینی تعیین کنید، رشته‌ای که جایگزین همه موارد آن می‌شود، اینکه آیا جایگزینی به حروف بزرگ و کوچک حساس است یا نه و آیا فقط کلمات مستقل تحت تأثیر قرار می‌گیرند.

مثال کد زیر نشان می دهد که چگونه می توان رشته "_CustomerName_" را پیدا کرد و آن را با رشته *"James Bond"* جایگزین کرد:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Hello _CustomerName_,")
print("Original document text: " + doc.range.text)

doc.range.replace("_CustomerName_", "James Bond", aw.replacing.FindReplaceOptions(aw.replacing.FindReplaceDirection.FORWARD))

print("Document text after replace: " + doc.range.text)

# Save the modified document
doc.save(docs_base.artifacts_dir + "FindAndReplace.simple_find_replace.docx")
{{< /highlight >}}

می توانید قبل از اعمال جایگزینی ساده رشته، تفاوت بین سند را متوجه شوید:

<img src="/words/python-net/find-and-replace/before-simple-string-replacement.png" alt="قبل از جایگزینی رشته" style="width:600px"/>

و پس از اعمال جایگزینی ساده رشته:

<img src="/words/python-net/find-and-replace/after-simple-string-replacement.png" alt="پس از جایگزینی سیم ساده" style="width:600px"/>

### یافتن و جایگزینی متن با استفاده از عبارات منظم {#find-and-replace-text-using-regular-expressions}

عبارت منظم الگویی است که توالی خاصی از متن را توصیف می کند. فرض کنید می خواهید همه تکرارهای یک کلمه را با یک کلمه واحد جایگزین کنید. سپس می توانید عبارت منظم زیر را برای تعیین الگوی دو کلمه ای اعمال کنید: `([a-zA-Z]+) \1`.

از روش [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) برای جستجو و جایگزینی ترکیب‌های کاراکتر خاص با تنظیم پارامتر عبارت منظم به عنوان الگو برای یافتن موارد منطبق استفاده کنید.

مثال کد زیر نشان می دهد که چگونه رشته هایی را که با یک الگوی عبارت منظم مطابقت دارند با یک رشته جایگزین مشخص جایگزین کنید:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceWithRegex.py" >}}

قبل از اعمال جایگزینی رشته با عبارات منظم می توانید تفاوت بین سند را مشاهده کنید:

<img src="/words/python-net/find-and-replace/before-replacement-with-regular-expressions.png" alt="قبل از جایگزینی با عبارات منظم" style="width:600px"/>

و پس از اعمال جایگزینی رشته با عبارات منظم:

<img src="/words/python-net/find-and-replace/after-replacement-with-regular-expressions.png" alt="بعد از جایگزینی با عبارات منظم" style="width:600px"/>

### با استفاده از متاکاراکترهای {#find-and-replace-text-using-metacharacters}، رشته را پیدا و جایگزین کنید

اگر متن یا عبارت خاصی از چند پاراگراف، بخش یا صفحه تشکیل شده باشد، می‌توانید از متاکاراکترها در رشته جستجو یا رشته جایگزین استفاده کنید. برخی از متاکاراکترها عبارتند از **&amp;پ** برای شکست پاراگراف، **&amp;b** برای شکست بخش، **&amp;m** برای شکست صفحه و **&amp;l** برای شکست خط.

{{% alert color="primary" %}}

توجه داشته باشید که متاکاراکتر **&&** برابر با **&** است. به عنوان مثال، اگر نیاز دارید متنی را برای **&amp;پ** بیابید که پاراگراف شکسته نیست، می توانید از **&amp;&amp;پ** استفاده کنید.

{{% /alert %}}

مثال کد زیر نحوه جایگزینی متن با پاراگراف و صفحه شکست را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextContainingMetaCharacters.py" >}}

## یافتن و جایگزینی رشته در سربرگ / پاورقی یک سند {#find-and-replace-string-in-header-or-footer-of-a-document}

می‌توانید با استفاده از کلاس [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)، متنی را در قسمت سرصفحه/پانویس یک سند Word پیدا کرده و جایگزین کنید.

مثال کد زیر نحوه جایگزینی متن بخش هدر در سند خود را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextInFooter.py" >}}

قبل از اعمال جایگزینی رشته هدر می توانید تفاوت بین سند را مشاهده کنید:

<img src="/words/python-net/find-and-replace/before-applying-header-string-replacement.png" alt="قبل از اعمال-هدر-رشته-جایگزینی" style="width:600px"/>

و پس از اعمال جایگزینی رشته هدر:

<img src="/words/python-net/find-and-replace/after-applying-header-string-replacement.png" alt="جایگزینی رشته سربرگ بعد از اعمال" style="width:600px"/>

مثال کد برای جایگزینی متن بخش فوتر در سند شما بسیار شبیه به مثال کد سرصفحه قبلی است. تنها کاری که باید انجام دهید این است که دو خط زیر را جایگزین کنید:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.HEADER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

با موارد زیر:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.FOOTER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

می توانید قبل از اعمال جایگزینی رشته پاورقی، تفاوت بین سند را متوجه شوید:

<img src="/words/python-net/find-and-replace/before-applying-footer-string-replacement.png" alt="قبل از اعمال-جایگزینی-فوتر-رشته" style="width:600px"/>

و پس از اعمال جایگزینی رشته فوتر:

<img src="/words/python-net/find-and-replace/after-applying-footer-string-replacement.png" alt="پس از اعمال-جایگزینی-فوتر-رشته" style="width:600px"/>

## در حین یافتن و جایگزینی {#ignore-text-during-find-and-replace}، متن را نادیده بگیرید

در حین اعمال عملیات یافتن و جایگزینی، می توانید بخش های خاصی از متن را نادیده بگیرید. بنابراین، بخش‌های خاصی از متن را می‌توان از جستجو حذف کرد و یافتن و جایگزینی را می‌توان تنها برای قسمت‌های باقی‌مانده اعمال کرد.

Aspose.Words بسیاری از ویژگی های یافتن و جایگزینی را برای نادیده گرفتن متن مانند [ignore_deleted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_deleted/)، [ignore_fields](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_fields/) و [ignore_inserted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_inserted/) فراهم می کند.

مثال کد زیر نحوه نادیده گرفتن متن داخل ویرایش های حذف را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-IgnoreTextInsideDeleteRevisions.py" >}}

## یافتن و جایگزینی عملیات {#customize-find-and-replace-operation} را سفارشی کنید

Aspose.Words ویژگی‌های مختلفی را برای یافتن و جایگزینی متن ارائه می‌کند، مانند اعمال فرمت خاص با ویژگی‌های [apply_font](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_font/) و [apply_paragraph_formats](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_paragraph_format/)، استفاده از جایگزینی در الگوهای جایگزین با ویژگی [use_substitutions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/use_substitutions/) و موارد دیگر.

مثال کد زیر نشان می دهد که چگونه یک کلمه خاص را در سند خود برجسته کنید:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-FindAndHighlight.py" >}}
