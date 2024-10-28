---
title: تایپوگرافی آسیایی در C++
second_title: Aspose.Words برای C++
articleTitle: کار با تایپوگرافی آسیایی
linktitle: کار با تایپوگرافی آسیایی
description: "کار با تایپوگرافی آسیایی با استفاده از C++. تنظیم فضای بین متن آسیایی و لاتین در C++."
type: docs
weight: 240
url: /fa/cpp/working-with-asian-typography/
---

تایپوگرافی آسیایی مجموعه ای از گزینه ها برای پاراگراف های متنی در اسناد نوشته شده به زبان های آسیایی است.

Aspose.Words از تایپوگرافی آسیایی با استفاده از کلاس [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) و برخی از خواص آن پشتیبانی می کند.

## تنظیم خودکار فضای بین متن یا اعداد آسیایی و لاتین

اگر شما در حال طراحی یک قالب با متن شرق آسیا و لاتین هستید و می خواهید ظاهر قالب فرم خود را با کنترل فضاهای بین هر دو نوع متن افزایش دهید، می توانید قالب فرم خود را برای تنظیم خودکار فضاهای بین این دو نوع متن تنظیم کنید. برای رسیدن به این هدف می توانید از ویژگی های [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastandalpha/) و [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastanddigit/) کلاس `ParagraphFormat` استفاده کنید.

مثال کد زیر نشان می دهد که چگونه از ویژگی های **AddSpaceBetweenFarEastAndAlpha** و **AddSpaceBetweenFarEastAndDigit** استفاده کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

## گزینه های شکستن خط را تنظیم کنید

برگه تایپوگرافی آسیایی جعبه گفتگو ویژگی های پاراگراف در Microsoft Word دارای گروه شکستن خط است. گزینه های این گروه را می توان با استفاده از [FarEastLineBreakControl](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_hangingpunctuation/) ویژگی های کلاس **ParagraphFormat**

مثال کد زیر نشان می دهد که چگونه از این ویژگی ها استفاده کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}
