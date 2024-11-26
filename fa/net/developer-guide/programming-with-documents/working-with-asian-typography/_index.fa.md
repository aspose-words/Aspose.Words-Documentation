---
title: تایپوگرافی آسیایی در C#
second_title: Aspose.Words برای .NET
articleTitle: کار با تایپوگرافی آسیایی
linktitle: کار با تایپوگرافی آسیایی
description: "با تایپوگرافی آسیایی با استفاده از C# کار کنید. تنظیم فاصله بین متن آسیایی و لاتین در C#."
type: docs
weight: 240
url: /fa/net/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

تایپوگرافی آسیایی مجموعه ای از گزینه ها برای پاراگراف های متنی در اسناد نوشته شده به زبان های آسیایی است.

Aspose.Words از تایپوگرافی آسیایی با استفاده از کلاس [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) و برخی از ویژگی های آن پشتیبانی می کند.

## به طور خودکار فاصله بین متن یا اعداد آسیایی و لاتین را تنظیم کنید

اگر در حال طراحی قالبی با متن آسیای شرقی و لاتین هستید و می خواهید با کنترل فاصله بین هر دو نوع متن ظاهر قالب فرم خود را بهبود بخشید، می توانید قالب فرم خود را طوری پیکربندی کنید که به طور خودکار فاصله بین این دو نوع متن را تنظیم کند.. برای رسیدن به این هدف می توانید از ویژگی های [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastandalpha/) و [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastanddigit/) کلاس `ParagraphFormat` استفاده کنید.

مثال کد زیر نحوه استفاده از ویژگی های **AddSpaceBetweenFarEastAndAlpha** و **AddSpaceBetweenFarEastAndDigit** را نشان می دهد:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cs" >}}

## گزینه های شکست خط را تنظیم کنید

برگه تایپوگرافی آسیایی کادر محاوره‌ای ویژگی‌های پاراگراف در Microsoft Word دارای گروه شکست خط است. گزینه های این گروه را می توان با استفاده از ویژگی های [FarEastLineBreakControl](https://reference.aspose.com/words/net/aspose.words/paragraphformat/fareastlinebreakcontrol/)، [WordWrap](https://reference.aspose.com/words/net/aspose.words/paragraphformat/wordwrap/)، [HangingPunctuation](https://reference.aspose.com/words/net/aspose.words/paragraphformat/hangingpunctuation/) کلاس **ParagraphFormat** تنظیم کرد.

مثال کد زیر نحوه استفاده از این ویژگی ها را نشان می دهد:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cs" >}}
