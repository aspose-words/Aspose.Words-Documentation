---
title: کار با Footnote و Endnote در Java
second_title: Aspose.Words برای Java
articleTitle: کار با Footnote و Endnote
linktitle: کار با Footnote و Endnote
description: "چگونه با استفاده از Java حاشیه ها و حاشیه های پایانی را دستکاری کنیم."
type: docs
weight: 160
url: /fa/java/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words همچنین برخی از کلاس ها، روش ها و خواص را برای کار با حاشیه ها و حاشیه ها فراهم می کند.

## Endnote را وارد کنید و گزینه های شماره گذاری را تنظیم کنید

اگر می خواهید یک یادداشت زیر یا یک یادداشت پایانی را در یک سند ورد قرار دهید، لطفا از روش [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String) استفاده کنید. این روش یک یادداشت زیر یا یادداشت پایانی را در سند قرار می دهد.

کلاس های [EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) و [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) گزینه های شماره گذاری برای یادداشت زیر و یادداشت پایانی را نشان می دهند.

مثال کد زیر نشان می دهد که چگونه endnote را در سند وارد کنید و گزینه های شماره گذاری آن را تنظیم کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## تعداد ستون های طرح بندی زیرنویس را تنظیم کنید

شما می توانید تعداد ستون های طرح زیرنویس را با استفاده از ویژگی [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns) تنظیم کنید. اگر این خاصیت دارای مقدار 0 باشد، منطقه footnotes با تعدادی ستون بر اساس تعداد ستون های صفحه نمایش داده شده فرمت می شود.

مثال کد زیر نشان می دهد که چگونه تعداد ستون ها را برای طرح زیرنویس تنظیم کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## موقعیت زیرنویس و EndNoteرا تنظیم کنید

موقعیت زیرنویس می تواند در پایین هر صفحه یا زیر متن در هر صفحه باشد. موقعیت endnote می تواند در انتهای بخش یا در انتهای سند باشد.

مثال کد زیر نشان می دهد که چگونه موقعیت footnote و endnote را تنظیم کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
