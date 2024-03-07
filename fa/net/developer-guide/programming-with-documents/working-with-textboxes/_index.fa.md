---
title: کار با TextBox در C#
second_title: Aspose.Words برای .NET
articleTitle: کار با TextBoxها
linktitle: کار با TextBoxها
description: "مقدمه ای بر ویژگی جعبه های متنی مرتبط در Aspose.Words for .NET."
type: docs
weight: 250
url: /fa/net/working-with-textboxes/
---

در Aspose.Words، کلاس [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/) برای تعیین نحوه نمایش متن در یک شکل استفاده می شود. این یک ویژگی عمومی به نام **Parent** را برای دریافت شکل والد برای جعبه متن نمایش می دهد تا مشتری بتواند [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) پیوند شده را از **TextBox** مرتبط پیدا کند.

## ایجاد لینک

کلاس **TextBox** روش [IsValidLinkTarget](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/isvalidlinktarget/) را به منظور بررسی اینکه آیا **TextBox** می تواند به **Textbox** هدف پیوند داده شود ارائه می دهد.

مثال کد زیر نشان می دهد که چگونه می توان بررسی کرد که آیا `TextBox` می تواند به Textbox هدف پیوند داده شود یا خیر:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cs" >}}

## دنباله TextBox را علامت بزنید

روش های مختلفی برای نمایش متن در یک شکل وجود دارد. [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shape/textbox/) می تواند سر، وسط یا دم یک دنباله باشد.

مثال کد زیر نشان می دهد که چگونه می توان بررسی کرد که آیا **TextBox** سر، دم یا وسط دنباله است:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cs" >}}

## شکستن یک پیوند

با استفاده از روش [BreakForwardLink](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/breakforwardlink/) می توانید پیوند را به **TextBox** بعدی قطع کنید.

مثال کد زیر نحوه شکستن پیوند برای یک **TextBox** را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cs" >}}
