---
title: کار با Hyperlinks در Java
second_title: Aspose.Words برای Java
articleTitle: Add or Modify Hyperlinks
linktitle: Add or Modify Hyperlinks
description: "چگونه یک لینک را به سند خود اضافه کنید Java..."
type: docs
weight: 50
url: /fa/java/working-with-hyperlinks/
---

یک لینک در Microsoft Word اسناد `HYPERLINK` زمینه In In In Aspose.Words, لینک ها از طریق [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) کلاس

## اضافه کردن Hyperlink

استفاده از [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) روش قرار دادن یک لینک به سند این روش سه پارامتر را می پذیرد:

1. متن لینک به نمایش در سند
2. مقصد لینک (URL یا نام یک نشانه در داخل سند)
3. پارامتر Boolean که باید باشد true اگر `URL` نام یک نشانه در داخل یک سند

The The The The The The **InsertHyperlink** روش همیشه در ابتدا و انتهای URL، apostrophes را اضافه می کند

{{% alert color="primary" %}}

توجه داشته باشید که شما باید قالب بندی فونت را برای متن صفحه نمایش لینک به وضوح با استفاده از `Font` مالکیت

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک لینک را به یک سند وارد کنید. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## جایگزین یا Modify Hyperlinks

Hyperlink در Microsoft Word اسناد یک میدان است. یک زمینه در یک سند Word، همانطور که قبلا گفتیم، یک ساختار پیچیده متشکل از گره های متعدد است که شامل شروع زمینه، کد زمینه، جدا کننده زمینه، نتیجه زمینه و پایان زمینه است. فیلد ها را می توان به دام انداخت، حاوی محتوای غنی و شامل چندین پاراگراف یا بخش در یک سند است.

برای جایگزینی یا اصلاح لینک ها، باید لینک ها را در سند پیدا کرده و یا متن، URL ها یا هر دو آنها را جایگزین کنید.

مثال کد زیر نشان می دهد که چگونه تمام لینک ها را در سند Word پیدا کنید و آنها را تغییر دهید `URL` نام نمایش:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
