---
title: کار با Footnote و Endnote در C++
second_title: Aspose.Words برای C++
articleTitle: کار با Footnote و Endnote
linktitle: کار با Footnote و Endnote
description: "چگونه با استفاده از C++ حاشیه ها و حاشیه های پایانی را دستکاری کنیم."
type: docs
weight: 160
url: /fa/cpp/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words همچنین برخی از کلاس ها، روش ها و خواص را برای کار با حاشیه ها و حاشیه ها فراهم می کند.

## Endnote را وارد کنید و گزینه های شماره گذاری را تنظیم کنید

اگر می خواهید یک زیرنویس یا پایان نامه را در یک سند ورد قرار دهید، لطفا از روش [InsertFootnote](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfootnote/) استفاده کنید. این روش یک یادداشت زیر یا یادداشت پایانی را در سند قرار می دهد.

کلاس های [EndnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/endnoteoptions/) و [FootnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/) گزینه های شماره گذاری برای یادداشت زیر و یادداشت پایانی را نشان می دهند.

مثال کد زیر نشان می دهد که چگونه endnote را در سند وارد کنید و گزینه های شماره گذاری آن را تنظیم کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cpp" >}}

## تعداد ستون های طرح بندی زیرنویس را تنظیم کنید

شما می توانید تعداد ستون های طرح زیرنویس را با استفاده از ویژگی [Columns](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/get_columns/) تنظیم کنید. اگر این ویژگی دارای مقدار 0 باشد، منطقه footnotes با تعدادی ستون بر اساس تعداد ستون های صفحه نمایش داده شده فرمت می شود.

مثال کد زیر نشان می دهد که چگونه تعداد ستون ها را برای طرح زیرنویس تنظیم کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cpp" >}}

## موقعیت زیرنویس و EndNoteرا تنظیم کنید

موقعیت زیرنویس می تواند در پایین هر صفحه یا زیر متن در هر صفحه باشد. موقعیت endnote می تواند در انتهای بخش یا در انتهای سند باشد.

مثال کد زیر نشان می دهد که چگونه موقعیت footnote و endnote را تنظیم کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.cpp" >}}
