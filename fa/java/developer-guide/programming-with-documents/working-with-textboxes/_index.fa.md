---
title: کار با Linked TextBoxs Java
second_title: Aspose.Words برای Java
articleTitle: کار با Linked TextBoxs
linktitle: کار با Linked TextBoxs
description: "معرفی ویژگی های textboxes مرتبط در Aspose.Words برای Java..."
type: docs
weight: 250
url: /fa/java/working-with-linked-textboxes/
timestamp: 2024-01-27-14-07-04
---

In In In Aspose.Words, The the the [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) کلاس استفاده می شود تا مشخص کند که چگونه یک متن در داخل یک شکل نمایش داده می شود. این یک ملک عمومی به نام پدر و مادر را برای به دست آوردن شکل والدین برای جعبه متن فراهم می کند تا به مشتری اجازه دهد تا ارتباط خود را پیدا کند. [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) مرتبط با **TextBox**...

## ایجاد یک لینک

The The The The The The **TextBox** کلاس فراهم می کند [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) روش برای بررسی اینکه آیا **TextBox** می تواند با هدف مرتبط باشد **Textbox**...

مثال کد زیر نشان می دهد که چگونه بررسی کنیم `TextBox` می تواند با Textbox هدف مرتبط باشد:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## چک کردن Text Box Sequence

چندین راه برای نمایش متن در یک شکل وجود دارد. The The The The The The [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) می تواند سر، خاورمیانه یا یک دنباله باشد.

مثال زیر نشان می دهد که چگونه بررسی کنیم **TextBox** یک سر، تی و یا وسط این سکانس است:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## شکستن یک لینک

استفاده از [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink) روش هایی که می توانید لینک را به بعدی تقسیم کنید **TextBox**...

مثال کد زیر نشان می دهد که چگونه یک لینک را برای یک لینک بشکنیم **TextBox**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
