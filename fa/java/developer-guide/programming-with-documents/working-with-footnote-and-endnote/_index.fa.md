---
title: کار با Footnote و Endnote Java
second_title: Aspose.Words برای Java
articleTitle: کار با Footnote و Endnote
linktitle: کار با Footnote و Endnote
description: "چگونه به دستکاری یادداشت ها و یادداشت های نهایی با استفاده از Java..."
type: docs
weight: 160
url: /fa/java/working-with-footnote-and-endnote/
---

Aspose.Words همچنین برخی از کلاس ها، روش ها و خواص را برای کار با یادداشت های پا و پایان نامه ها فراهم می کند.

## Insert Endnote و set Numbering Options

اگر می خواهید یک یادداشت یا پایان نامه را در یک سند Word قرار دهید، لطفا از آن استفاده کنید. [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String) روش این روش یک یادداشت یا پایان نامه را به سند وارد می کند.

[EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) و [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) کلاس ها نشان دهنده گزینه های عددی برای یادداشت پا و پایان است.

مثال کد زیر نشان می دهد که چگونه پایان نامه را به سند وارد کنید و گزینه های شماره گذاری آن را تنظیم کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## تعداد ستون های Footnote Set

شما می توانید تعداد ستون های طرح پادار را با استفاده از [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns) مالکیت اگر این ملک ارزش 0 را داشته باشد، منطقه پادار با تعدادی از ستون ها بر اساس تعداد ستون ها در صفحه نمایش فرمت شده است.

مثال کد زیر نشان می دهد که چگونه تعداد ستون ها را برای طرح پادار تنظیم کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## موقعیت Footnote و EndNote را تنظیم کنید

موقعیت پایه می تواند در پایین هر صفحه یا زیر متن در هر صفحه باشد. موقعیت نهایی می تواند در پایان بخش یا در پایان سند باشد.

مثال کد زیر نشان می دهد که چگونه موقعیت پاتل و پایان را تنظیم کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
