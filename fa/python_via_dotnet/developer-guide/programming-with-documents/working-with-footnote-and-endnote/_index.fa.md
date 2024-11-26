---
title: کار با Footnote و Endnote
second_title: Aspose.Words برای Python via .NET
articleTitle: کار با Footnote و Endnote
linktitle: کار با Footnote و Endnote
description: "پاورقی ها یا یادداشت های پایانی را در یک سند وارد کنید و گزینه های آن را با استفاده از Python مشخص کنید."
type: docs
weight: 160
url: /fa/python-net/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words همچنین برخی از کلاس‌ها، روش‌ها و ویژگی‌ها را برای کار با پانوشت‌ها و یادداشت‌های پایانی ارائه می‌کند.

## درج Endnote و تنظیم گزینه های شماره گذاری

اگر می خواهید پاورقی یا پایانی را در سند Word وارد کنید، لطفا از روش [insert_footnote](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_footnote/) استفاده کنید. این روش یک پاورقی یا پایانی را در سند وارد می کند.

کلاس‌های [EndnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/endnoteoptions/) و [FootnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/) گزینه‌های شماره‌گذاری برای پاورقی و یادداشت پایانی را نشان می‌دهند.

مثال کد زیر نحوه درج endnote در سند و تنظیم گزینه های شماره گذاری آن را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetEndnoteOptions.py" >}}

## تعداد ستون های طرح پاورقی را تنظیم کنید

با استفاده از ویژگی [columns](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/columns/) می توانید تعداد ستون های طرح پاورقی را تنظیم کنید. اگر این ویژگی دارای مقدار 0 باشد، ناحیه پانوشت ها با تعدادی ستون بر اساس تعداد ستون های صفحه نمایش داده شده فرمت می شود.

مثال کد زیر نحوه تنظیم تعداد ستون ها برای طرح پاورقی را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootNoteColumns.py" >}}

## موقعیت پانوشت و پایان نوت را تنظیم کنید

موقعیت پاورقی می تواند در پایین هر صفحه یا زیر متن هر صفحه باشد. موقعیت یادداشت پایانی می تواند در انتهای بخش یا در انتهای سند باشد.

مثال کد زیر نحوه تنظیم موقعیت پاورقی و پایانی را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootnoteAndEndNotePosition.py" >}}
