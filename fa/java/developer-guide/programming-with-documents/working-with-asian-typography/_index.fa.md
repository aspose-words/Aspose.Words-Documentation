---
title: تایپوگرافی آسیایی در Java
second_title: Aspose.Words برای Java
articleTitle: کار با تایپوگرافی آسیایی
linktitle: کار با تایپوگرافی آسیایی
description: "کار با تایپوگرافی آسیایی با استفاده از Java. تنظیم فضای بین متن آسیایی و لاتین در Java."
type: docs
weight: 240
url: /fa/java/working-with-asian-typography/
timestamp: 2024-01-27-14-07-04
---

تایپوگرافی آسیایی مجموعه ای از گزینه ها برای پاراگراف های متنی در اسناد نوشته شده به زبان های آسیایی است.

Aspose.Words از تایپوگرافی آسیایی با استفاده از کلاس [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) و برخی از خواص آن پشتیبانی می کند.

## تنظیم خودکار فضای بین متن یا اعداد آسیایی و لاتین

اگر شما در حال طراحی یک قالب با متن شرق آسیا و لاتین هستید و می خواهید ظاهر قالب فرم خود را با کنترل فضاهای بین هر دو نوع متن افزایش دهید، می توانید قالب فرم خود را برای تنظیم خودکار فضاهای بین این دو نوع متن تنظیم کنید. برای رسیدن به این هدف می توانید از ویژگی های [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndAlpha) و [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndDigit) کلاس `ParagraphFormat` استفاده کنید.

مثال کد زیر نشان می دهد که چگونه از ویژگی های **AddSpaceBetweenFarEastAndAlpha** و **AddSpaceBetweenFarEastAndDigit** استفاده کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetSpaceBetweenAsianAndLatinText.java" >}}

## گزینه های شکستن خط را تنظیم کنید

برگه تایپوگرافی آسیایی جعبه گفتگو ویژگی های پاراگراف در Microsoft Word دارای گروه شکستن خط است. گزینه های این گروه را می توان با استفاده از [FarEastLineBreakControl](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getFarEastLineBreakControl), [WordWrap](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getWordWrap), [HangingPunctuation](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getHangingPunctuation) ویژگی های کلاس **ParagraphFormat**

مثال کد زیر نشان می دهد که چگونه از این ویژگی ها استفاده کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetAsianTypographyLinebreakGroupProp.java" >}}

## تغییر فاصله پاراگراف آسیایی و تورفتگی

مثال کد زیر نشان می دهد که چگونه فاصله پاراگراف آسیایی و حفره ها را تغییر دهیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ChangeAsianParagraphSpacingandIndents.java" >}}
