---
title: کار با TextBox در Python
second_title: Aspose.Words برای Python via .NET
articleTitle: کار با TextBoxها
linktitle: کار با TextBoxها
description: "با استفاده از Python با جعبه متن در یک سند کار کنید."
type: docs
weight: 250
url: /fa/python-net/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

در Aspose.Words از کلاس [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) برای تعیین نحوه نمایش متن در یک شکل استفاده می شود. این یک ویژگی عمومی به نام [parent](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/parent/) برای دریافت شکل والد برای جعبه متن فراهم می کند تا به مشتری اجازه دهد [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) پیوند شده را از [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) پیوند یافته پیدا کند.

## ایجاد لینک

کلاس [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) روش [is_valid_link_target](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/is_valid_link_target/) را به منظور بررسی اینکه آیا [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) می تواند به Textbox هدف پیوند داده شود ارائه می دهد.

مثال کد زیر نشان می دهد که چگونه می توان بررسی کرد که آیا `TextBox` می تواند به Textbox هدف پیوند داده شود یا خیر:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CreateALink.py" >}}

## دنباله TextBox را علامت بزنید

روش های مختلفی برای نمایش متن در یک شکل وجود دارد. [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) می تواند سر، وسط یا دم یک دنباله باشد.

مثال کد زیر نشان می دهد که چگونه می توان بررسی کرد که آیا **TextBox** سر، دم یا وسط دنباله است:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CheckSequence.py" >}}

## شکستن یک پیوند

با استفاده از روش [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) می توانید پیوند را به **TextBox** بعدی قطع کنید.

مثال کد زیر نحوه شکستن پیوند برای یک **TextBox** را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-BreakALink.py" >}}
