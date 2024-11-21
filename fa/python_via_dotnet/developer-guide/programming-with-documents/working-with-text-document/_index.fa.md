---
title: کار با سند متنی
second_title: Aspose.Words برای Python via .NET
articleTitle: کار با سند متنی
linktitle: کار با سند متنی
description: "با یک سند متنی کار کنید و اشیاء آن را با استفاده از Python تغییر دهید."
type: docs
weight: 430
url: /fa/python-net/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

در این مقاله می آموزیم که چه گزینه هایی می توانند برای کار با یک سند متنی از طریق Aspose.Words مفید باشند. لطفاً توجه داشته باشید که این لیست کاملی از گزینه های موجود نیست، بلکه تنها نمونه ای از کار با برخی از آنها است.

## علامت های دو جهته را اضافه کنید

می‌توانید از ویژگی [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) برای تعیین اینکه آیا علامت‌های دو جهته قبل از هر اجرا BiDi هنگام صادرات در قالب متن ساده اضافه شود یا خیر استفاده کنید. Aspose.Words نویسه یونیکد "علامت راست به چپ" (U+200F) را قبل از هر [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) دو جهته در متن درج می کند. این گزینه مربوط به گزینه "افزودن علائم دو جهته" در گفتگوی تبدیل فایل MS Word هنگام صادرات به یک قالب متن ساده است. توجه داشته باشید که تنها در صورتی در گفتگو ظاهر می شود که یکی از زبان های ویرایش عربی یا عبری در MS Word اضافه شود.

مثال کد زیر نحوه استفاده از ویژگی [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) را نشان می دهد. مقدار پیش فرض این ویژگی `False` است:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-AddBidiMarks.py" >}}

## شناسایی موارد لیست در حین بارگذاری TXT

Aspose.Words می‌تواند مورد فهرست یک فایل متنی را به عنوان شماره فهرست یا متن ساده در مدل شی سند خود وارد کند. ویژگی [detect_numbering_with_whitespaces](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_numbering_with_whitespaces/) اجازه می دهد تا مشخص کنید که چگونه موارد لیست شماره گذاری شده هنگام وارد شدن یک سند از قالب متن ساده شناسایی شوند:

* اگر این گزینه روی `True` تنظیم شده باشد، از فضاهای خالی به عنوان جداکننده اعداد لیست نیز استفاده می شود: الگوریتم تشخیص لیست برای شماره گذاری سبک عربی (1., 1.1.2.) از هر دو علامت فاصله و علامت نقطه (".") استفاده می کند.
* اگر این گزینه روی `False` تنظیم شده باشد، الگوریتم تشخیص لیست، پاراگراف های لیست را تشخیص می دهد، زمانی که اعداد لیست با علامت های نقطه، براکت راست یا گلوله (مانند "•"، "*"، "-" یا "o") پایان می یابد.

مثال کد زیر نحوه استفاده از این ویژگی را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DetectNumberingWithWhitespaces.py" >}}

## در حین بارگذاری TXT، فضاهای پیشرو و انتهایی را مدیریت کنید

شما می توانید نحوه مدیریت فضاهای پیشرو و انتهایی را در حین بارگذاری فایل TXT کنترل کنید. فضاهای پیشرو را می توان تراش داد، حفظ کرد یا به تورفتگی تبدیل کرد و فضاهای انتهایی را می توان کوتاه یا حفظ کرد.

مثال کد زیر نشان می دهد که چگونه می توان فضاهای اصلی و انتهایی را هنگام وارد کردن فایل TXT برش داد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-HandleSpacesOptions.py" >}}

## تشخیص جهت متن سند

Aspose.Words ویژگی [document_direction](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/document_direction/) را در کلاس [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) برای تشخیص جهت متن (RTL / LTR) در سند ارائه می دهد. این ویژگی دستورالعمل های متن سند ارائه شده در شمارش [DocumentDirection](https://reference.aspose.com/words/python-net/aspose.words.loading/documentdirection/) را تنظیم یا دریافت می کند. مقدار پیش فرض از چپ به راست است.

مثال کد زیر نحوه تشخیص جهت متن سند را در هنگام وارد کردن فایل TXT نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DocumentTextDirection.py" >}}

## هدر و پاورقی را در خروجی TXT صادر کنید

اگر می خواهید هدر و پاورقی را در سند خروجی TXT صادر کنید، می توانید از ویژگی [export_headers_footers_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptionsbase/export_headers_footers_mode/) استفاده کنید. این ویژگی نحوه صادرات سرصفحه ها و پاورقی ها به قالب متن ساده را مشخص می کند.

مثال کد زیر نحوه صادرات سرصفحه و پاورقی به قالب متن ساده را نشان می دهد:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Document.docx")

options = aw.saving.TxtSaveOptions()
options.save_format = aw.SaveFormat.TEXT

# All headers and footers are placed at the very end of the output document.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.ALL_AT_END
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_A.txt", options)

# Only primary headers and footers are exported at the beginning and end of each section.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.PRIMARY_ONLY
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_B.txt", options)

# No headers and footers are exported.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.NONE
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_C.txt", options)
{{< /highlight >}}

## صادرات تورفتگی لیست در خروجی TXT

Aspose.Words کلاس [TxtListIndentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtlistindentation/) را معرفی کرد که امکان تعیین نحوه تورفتگی سطوح لیست را در حین صادرات به قالب متن ساده فراهم می کند. در حین کار با [TxtSaveOption](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/)، ویژگی [list_indentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/list_indentation/) برای تعیین کاراکتر مورد استفاده برای تورفتگی سطوح لیست و تعداد کاراکترها به عنوان تورفتگی در هر سطح فهرست ارائه می شود. مقدار پیش فرض ویژگی کاراکتر '\0' است که نشان می دهد هیچ تورفتگی وجود ندارد. برای ویژگی count، مقدار پیش‌فرض 0 است که به معنای عدم تورفتگی است.

### استفاده از کاراکتر Tab

مثال کد زیر نحوه صادرات سطوح لیست را با استفاده از کاراکترهای برگه نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseTabCharacterPerLevelForListIndentation.py" >}}

### استفاده از کاراکتر فضایی

مثال کد زیر نحوه صادرات سطوح لیست را با استفاده از کاراکترهای فاصله نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseSpaceCharacterPerLevelForListIndentation.py" >}}

