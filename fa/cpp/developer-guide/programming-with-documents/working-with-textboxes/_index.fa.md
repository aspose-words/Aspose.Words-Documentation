---
title: کار با TextBoxes در C++
second_title: Aspose.Words برای C++
articleTitle: کار با TextBoxes
linktitle: کار با TextBoxes
description: "معرفی ویژگی جعبه های متن مرتبط در Aspose.Words برای C++."
type: docs
weight: 250
url: /fa/cpp/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

در Aspose.Words، کلاس [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/) برای مشخص کردن نحوه نمایش متن در داخل یک شکل استفاده می شود. این یک ملک عمومی به نام **Parent** را برای به دست آوردن شکل والدین برای جعبه متن نشان می دهد تا مشتری بتواند [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) مرتبط را از **TextBox** مرتبط پیدا کند.

## ایجاد لینک

کلاس **TextBox** روش [IsValidLinkTarget](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/isvalidlinktarget/) را برای بررسی اینکه آیا **TextBox** می تواند به هدف **Textbox** مرتبط باشد، فراهم می کند.

مثال کد زیر نشان می دهد که چگونه می توان بررسی کرد که آیا `TextBox` می تواند به جعبه متن هدف پیوند داده شود:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cpp" >}}


## توالی TextBox را بررسی کنید

روش های مختلفی برای نمایش متن به شکل وجود دارد. [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_textbox/) می تواند سر، وسط یا دم یک دنباله باشد.

مثال کد زیر نشان می دهد که چگونه **TextBox** یک سر، دم یا وسط توالی است:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cpp" >}}

## شکستن یک لینک

با استفاده از روش [BreakForwardLink](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/breakforwardlink/) می توانید لینک **TextBox** بعدی را بشکنید.

مثال کد زیر نشان می دهد که چگونه یک لینک را برای **TextBox**بشکنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cpp" >}}
