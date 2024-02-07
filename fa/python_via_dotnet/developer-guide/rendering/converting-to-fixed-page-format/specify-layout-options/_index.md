---
title: گزینه های Layout را در Python مشخص کنید
second_title: Aspose.Words برای Python via .NET
articleTitle: گزینه های Layout را مشخص کنید
linktitle: گزینه های Layout را مشخص کنید
description: "گزینه های Layout را برای طرح بندی اسناد مختلف با استفاده از Python مشخص کنید."
type: docs
weight: 10
url: /fa/python-net/specify-layout-options/
---

Aspose.Words به شما امکان می دهد اسناد خروجی را با طرح بندی های مختلف، بسته به پارامترهای مشخص شده در ویژگی های کلاس [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) ایجاد کنید. برخی از این ویژگی ها شبیه به برخی از گزینه های منوی رابط کاربری Microsoft Word هستند - آنها در این مقاله توضیح داده خواهند شد.

برای فهرست کامل پارامترهایی مانند [continuous_section_page_numbering_restart](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/continuous_section_page_numbering_restart/) برای محاسبه شماره صفحات در یک بخش پیوسته که شماره‌گذاری صفحه را مجدداً راه‌اندازی می‌کند، یا [ignore_printer_metrics](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/ignore_printer_metrics/) برای نادیده گرفتن گزینه سازگاری "استفاده از معیارهای چاپگر برای طرح‌بندی سند"، صفحه کلاس [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) را ببینید.

## قالب بندی علامت ها

Aspose.Words اجازه می دهد تا علائم قالب بندی را با استفاده از ویژگی های زیر مدیریت کنید:

- [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) - یک مقدار `Boolean`، که مشخص می کند آیا متن پنهان ارائه می شود یا خیر.
- [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) - یک مقدار `Boolean`، که مشخص می کند آیا کاراکترهای علامت پاراگراف ارائه می شوند یا خیر.

صفحه نشان داده شده در مثال زیر شامل سه پاراگراف است. دومی پنهان است. کاربر می تواند گزینه [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) را برای نمایش این متن پنهان در صفحه تغییر دهد. همچنین هر پاراگراف یک علامت پاراگراف در پایان دارد. علامت پاراگراف معمولاً قابل مشاهده نیست مگر اینکه ویژگی [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) برای ارائه آن تنظیم شده باشد.

![specify-layout-options_1](/words/python-net/specify-layout-options/specify-layout-options-1.png)

در Microsoft Word، این پارامترها با استفاده از کادر محاوره ای "File → Options → Display" به صورت زیر تنظیم می شوند:

![specify-layout-options_2](/words/python-net/specify-layout-options/specify-layout-options-2.jpg)

## نظرات و تجدید نظرها

با Aspose.Words، می‌توانید کامنت‌های سندی را که شبیه Microsoft Word به نظر می‌رسند ارائه دهید. برای تعیین اینکه آیا نظرات ارائه می شوند یا خیر، از ویژگی [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) استفاده کنید.

در Microsoft Word، این پارامتر با استفاده از کادر محاوره‌ای "Track Changes Options" مانند شکل زیر تنظیم می‌شود:

![specify-layout-options_3](/words/python-net/specify-layout-options/specify-layout-options-3.jpg)

همچنین، Aspose.Words به شما اجازه می دهد تا ویرایش ها را در یک سند نمایش دهید. از ویژگی [revision_options](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/revision_options/) کلاس [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) برای تعیین اینکه آیا ویرایش های سند نمایش داده می شوند استفاده کنید. برای کنترل ظاهر آنها (رنگ برجسته بازبینی، رنگ نوار بازبینی و غیره) از کلاس [RevisionOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/revisionoptions/) استفاده کنید.

همچنین می‌توانید ویرایش‌ها را به‌عنوان نظر در محتوا نمایش دهید. برای این منظور از ویژگی [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) و مقدار [SHOW_IN_BALLOONS](https://reference.aspose.com/words/python-net/aspose.words.layout/commentdisplaymode/#show_in_balloons) استفاده کنید.

مثال کد زیر نحوه سفارشی سازی نمایش نسخه ها را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShowRevisionsInBalloons.py" >}}

تصویر زیر نشان می‌دهد که چگونه Aspose.Words نظرات و ویرایش‌های Delete را ارائه می‌کند:

<img src="/words/python-net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>