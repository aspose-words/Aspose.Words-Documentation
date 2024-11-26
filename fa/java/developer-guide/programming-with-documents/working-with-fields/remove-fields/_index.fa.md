---
title: حذف فیلد ها در Java
second_title: Aspose.Words برای Java
articleTitle: حذف زمینه ها
linktitle: حذف زمینه ها
description: "یاد بگیرید که چگونه فیلد ها را در Java حذف کنید. حذف فیلد ها به صورت برنامه ریزی شده با استفاده از Java API."
type: docs
weight: 35
url: /fa/java/remove-fields/
timestamp: 2024-01-27-14-07-04
---

گاهی اوقات لازم است یک فیلد را از سند حذف کنید. این ممکن است زمانی رخ دهد که باید با یک نوع فیلد متفاوت جایگزین شود یا زمانی که فیلد دیگر در سند مورد نیاز نیست. به عنوان مثال یک فیلد `TOC` هنگام ذخیره به HTML.

برای حذف یک فیلد وارد شده به یک سند با استفاده از [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean)، از شیء [Field](https://reference.aspose.com/words/java/com.aspose.words/field/) بازگردانده شده استفاده کنید، که یک روش [Remove](https://reference.aspose.com/words/java/com.aspose.words/field/#remove) مناسب برای حذف آسان فیلد از سند فراهم می کند.

مثال کد زیر نشان می دهد که چگونه یک فیلد را از سند حذف کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RemoveField-RemoveField.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Various%20fields.docx).

{{% /alert %}}
