---
title: کار با لینک TextBoxes در Java
second_title: Aspose.Words برای Java
articleTitle: کار با لینک TextBoxes
linktitle: کار با لینک TextBoxes
description: "معرفی ویژگی جعبه های متن مرتبط در Aspose.Words برای Java."
type: docs
weight: 250
url: /fa/java/working-with-linked-textboxes/
timestamp: 2024-01-27-14-07-04
---

در Aspose.Words، کلاس [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) برای مشخص کردن نحوه نمایش یک متن در داخل یک شکل استفاده می شود. این یک ملک عمومی به نام والدین را فراهم می کند تا شکل والدین را برای جعبه متن بدست آورد تا مشتری بتواند لینک [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) را از لینک **TextBox** پیدا کند.

## ایجاد لینک

کلاس **TextBox** روش [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) را برای بررسی اینکه آیا **TextBox** می تواند به هدف **Textbox** مرتبط باشد، فراهم می کند.

مثال کد زیر نشان می دهد که چگونه می توان بررسی کرد که آیا `TextBox` می تواند به جعبه متن هدف پیوند داده شود:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## توالی TextBox را بررسی کنید

روش های مختلفی برای نمایش متن به شکل وجود دارد. [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) می تواند سر، وسط یا دم یک دنباله باشد.

مثال کد زیر نشان می دهد که چگونه **TextBox** یک سر، دم یا وسط توالی است:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## شکستن یک لینک

با استفاده از روش [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink) می توانید لینک **TextBox** بعدی را بشکنید.

مثال کد زیر نشان می دهد که چگونه یک لینک را برای **TextBox**بشکنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
