---
title: گزینه های طرح بندی را در C++مشخص کنید
second_title: Aspose.Words برای C++
articleTitle: گزینه های طرح بندی را مشخص کنید
linktitle: گزینه های طرح بندی را مشخص کنید
description: "گزینه های طرح بندی را برای طرح بندی های مختلف سند مشخص کنید."
type: docs
weight: 20
url: /fa/cpp/specify-layout-options/
---

Aspose.Words شما را قادر می سازد تا اسناد خروجی با طرح های مختلف را بسته به پارامترهای مشخص شده در ویژگی [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options) **Document** ایجاد کنید. این ویژگی شبیه برخی از گزینه های منوی رابط کاربری Microsoft Word است که در این مقاله توضیح داده شده است.

برای یک لیست کامل از پارامترها مانند [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_continuoussectionpagenumberingrestart/) برای محاسبه اعداد صفحه در یک بخش مداوم که شماره گذاری صفحه را دوباره شروع می کند، یا [IgnorePrinterMetrics](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_ignoreprintermetrics/) برای نادیده گرفتن گزینه سازگاری "استفاده از معیارهای چاپگر برای طرح بندی سند"، به صفحه کلاس [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options) مراجعه کنید.

## علامت های قالب بندی

Aspose.Words اجازه می دهد تا مارک های قالب بندی را با استفاده از ویژگی های زیر مدیریت کند:

- [ShowHiddenText](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showhiddentext/) – یک `Boolean` مقدار، که مشخص می کند که آیا متن پنهان ارائه شده است.
- [ShowParagraphMarks](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showparagraphmarks/) – یک `Boolean` مقدار، که مشخص می کند که آیا کاراکترهای علامت پاراگراف ارائه شده اند.

صفحه ای که در مثال زیر نشان داده شده است شامل سه پاراگراف است. دومی پنهان است. کاربر می تواند گزینه **ShowHiddenText** را برای نمایش این متن پنهان در صفحه تغییر دهد. همچنین، هر پاراگراف در پایان یک علامت پاراگراف دارد. علامت پاراگراف معمولا قابل مشاهده نیست مگر اینکه ویژگی **ShowParagraphMarks** برای ارائه آن تنظیم شده باشد.

![specify-layout-options-aspose-words-cpp-1](specify-layout-options-1.png)

در Microsoft Word، این پارامترها با استفاده از جعبه گفتگو "File → Options → Display" به شرح زیر تنظیم می شوند:

![specify-layout-options-aspose-words-cpp-2](specify-layout-options-3.png)

## نظرات و بازنگری ها

با Aspose.Words می توانید نظرات سند را ارائه دهید که همانند Microsoft Word به نظر می رسد. برای مشخص کردن اینکه آیا نظرات ارائه شده است، از ویژگی [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_commentdisplaymode/) استفاده کنید.

در Microsoft Word، این پارامتر با استفاده از جعبه گفتگو "Track Changes Options" تنظیم شده است، همانطور که در زیر نشان داده شده است:

![specify-layout-options-aspose-words-cpp-3](specify-layout-options-4.png)

همچنین، Aspose.Words به شما اجازه می دهد تا اصلاحات را در یک سند نمایش دهید. از ویژگی [RevisionOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/) کلاس **LayoutOptions** برای تعریف اینکه آیا اصلاحات سند نمایش داده می شود استفاده کنید. برای کنترل ظاهر آنها (رنگ برجسته سازی تجدید نظر، رنگ نوار تجدید نظر و غیره)), از کلاس [RevisonOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/) استفاده کنید.

همچنین می توانید اصلاحات را به عنوان نظرات به محتوا نمایش دهید. برای این منظور از ویژگی [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/set_commentdisplaymode/) و مقدار [ShowInBalloons](https://reference.aspose.com/words/cpp/aspose.words.layout/commentdisplaymode/) استفاده کنید.

مثال کد زیر نشان می دهد که چگونه نمایش اصلاحات را سفارشی کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisionOptions-SetShowInBalloons.cpp" >}}

تصویر زیر نشان می دهد که چگونه Aspose.Words نظرات و اصلاحات حذف را ارائه می دهد:

<img src="specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_cpp" style="width:800px"/>

## شکل دهنده متن برای رندر تایپوگرافی پیشرفته

ویژگی [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/) شما را قادر می سازد تا قابلیت شکل دادن متن و همچنین پشتیبانی از ویژگی های `OpenType` را تنظیم کنید.

در موارد اصلی زیر از شکل دادن متن برای پردازش اسناد استفاده کنید:

- یک سند از کرنینگ، شکل گیری عددی، فرم های عددی یا لیگاتورها استفاده می کند.
- یک سند از اسکریپت های پیچیده ای مانند عربی، خمر، تایلندی و غیره استفاده می کند.

{{% alert color="primary" %}}

شکل دادن متن تنها در هنگام صادرات یک سند به PDF یا XPS فعال خواهد شد.

{{% /alert %}}
