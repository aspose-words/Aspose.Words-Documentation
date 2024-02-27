---
title: کار با Footnote و Endnote در C#
second_title: Aspose.Words برای .NET
articleTitle: کار با Footnote و Endnote
linktitle: کار با Footnote و Endnote
description: "نحوه دستکاری پاورقی ها و یادداشت های پایانی با استفاده از C#."
type: docs
weight: 160
url: /fa/net/working-with-footnote-and-endnote/
---

Aspose.Words همچنین برخی از کلاس‌ها، روش‌ها و ویژگی‌ها را برای کار با پانوشت‌ها و یادداشت‌های پایانی ارائه می‌کند.

## درج Endnote و تنظیم گزینه های شماره گذاری

اگر می‌خواهید پاورقی یا پایانی را در سند Word وارد کنید، لطفاً از روش [InsertFootnote](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfootnote/) استفاده کنید. این روش یک پاورقی یا پایانی را در سند وارد می کند.

کلاس‌های [EndnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/endnoteoptions/) و [FootnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/) گزینه‌های شماره‌گذاری برای پاورقی و یادداشت پایانی را نشان می‌دهند.

مثال کد زیر نحوه درج endnote در سند و تنظیم گزینه های شماره گذاری آن را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cs" >}}

## تعداد ستون های طرح پاورقی را تنظیم کنید

با استفاده از ویژگی [Columns](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/columns/) می توانید تعداد ستون های طرح پاورقی را تنظیم کنید. اگر این ویژگی دارای مقدار 0 باشد، ناحیه پانوشت ها با تعدادی ستون بر اساس تعداد ستون های صفحه نمایش داده شده فرمت می شود.

مثال کد زیر نحوه تنظیم تعداد ستون ها برای طرح پاورقی را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cs" >}}

## موقعیت پانوشت و پایان نوت را تنظیم کنید

موقعیت پاورقی می تواند در پایین هر صفحه یا زیر متن هر صفحه باشد. موقعیت یادداشت پایانی می تواند در انتهای بخش یا در انتهای سند باشد.

مثال کد زیر نحوه تنظیم موقعیت پاورقی و پایانی را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteOptions.cs" >}}
