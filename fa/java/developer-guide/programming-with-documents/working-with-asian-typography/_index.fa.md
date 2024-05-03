---
title: تایپوگرافی آسیایی در Java
second_title: Aspose.Words برای Java
articleTitle: کار با تایپوگرافی آسیایی
linktitle: کار با تایپوگرافی آسیایی
description: "کار با تایپوگرافی آسیایی با استفاده از Java... تنظیم فضا بین متن آسیایی و لاتین Java..."
type: docs
weight: 240
url: /fa/java/working-with-asian-typography/
---

تایپوگرافی آسیایی مجموعه ای از گزینه ها برای پاراگراف های متنی در اسناد نوشته شده در زبان های آسیایی است.

Aspose.Words حمایت از تایپوگرافی آسیایی با استفاده از [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) کلاس و برخی از خواص آن

## به طور خودکار فضای بین متن آسیایی و لاتین یا اعداد را تنظیم کنید

اگر شما در حال طراحی یک الگو با متن شرق آسیا و لاتین هستید و می خواهید ظاهر قالب خود را با کنترل فضاهای بین هر دو نوع متن افزایش دهید، می توانید قالب خود را پیکربندی کنید تا به طور خودکار فضاهای بین این دو نوع متن را تنظیم کنید. برای رسیدن به این هدف، می توانید از آن استفاده کنید. [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndAlpha) و [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndDigit) خواص `ParagraphFormat` کلاس

مثال کد زیر نشان می دهد که چگونه از **AddSpaceBetweenFarEastAndAlpha** و **AddSpaceBetweenFarEastAndDigit** خواص:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetSpaceBetweenAsianAndLatinText.java" >}}

## گزینه های Line Break Options

زبانه تایپوگرافی آسیایی از جعبه گفتگو خواص پاراگراف در Microsoft Word گروه شکستن خط دارد. گزینه های این گروه را می توان با استفاده از [FarEastLineBreakControl](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getFarEastLineBreakControl), [WordWrap](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getWordWrap), [HangingPunctuation](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getHangingPunctuation) خواص **ParagraphFormat** کلاس

مثال کد زیر نشان می دهد که چگونه از این خواص استفاده کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetAsianTypographyLinebreakGroupProp.java" >}}

## تغییر چتر آسیایی و Indents

مثال کد زیر نشان می دهد که چگونه فاصله پاراگراف آسیایی و ناتوانی را تغییر دهید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ChangeAsianParagraphSpacingandIndents.java" >}}