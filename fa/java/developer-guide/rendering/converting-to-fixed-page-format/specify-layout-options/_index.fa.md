---
title: گزینه های Specify Configuration in Java
second_title: Aspose.Words برای Java
articleTitle: گزینه های Specify Configuration
linktitle: گزینه های Specify Configuration
description: "ایجاد اسناد خروجی با طرح های مختلف، بسته به پارامترهای مشخص شده در سند با استفاده از Java..."
type: docs
weight: 10
url: /fa/java/specify-layout-options/
---

Aspose.Words شما را قادر می سازد تا اسناد خروجی را با طرح های مختلف ایجاد کنید، بسته به پارامترهای مشخص شده در آن [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) مالکیت **Document**... این اموال شبیه به برخی از Microsoft Word گزینه های منوی رابط کاربری که در این مقاله توضیح داده شده است.

برای یک لیست کامل از پارامترهای مانند [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) برای محاسبه اعداد صفحه در یک بخش مداوم که تعداد صفحات را دوباره شروع می کند یا [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) برای نادیده گرفتن "معیارهای پرینتر استفاده شده برای خارج کردن سند" گزینه سازگاری، گزینه سازگاری را ببینید [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) صفحه کلاس

## فرمت کردن مارک ها

Aspose.Words اجازه می دهد تا علامت های قالب بندی را با استفاده از خواص زیر مدیریت کنید:

- [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) – A `Boolean` ارزش، که مشخص می کند که آیا متن پنهان ارائه شده است.
- [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) – A `Boolean` ارزش، که مشخص می کند که آیا شخصیت های علامت پاراگراف ارائه می شوند.

صفحه نمایش داده شده در مثال زیر شامل سه پاراگراف است. دومی پنهان است. کاربر می تواند تغییر کند **ShowHiddenText** گزینه نمایش این متن پنهان در صفحه همچنین هر پاراگراف دارای یک علامت پاراگراف در پایان است. علامت پاراگراف معمولا قابل مشاهده نیست مگر اینکه **ShowParagraphMarks** اموال برای ارائه آن تنظیم شده است.

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

In In In Microsoft Word, این پارامتر ها با استفاده از جعبه گفتگو "File → Options" تنظیم می شوند:

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## نظرات و Revisions

با Aspose.Words, شما می توانید نظرات سند را ارائه دهید که به نظر می رسد یکسان است. Microsoft Word... برای مشخص کردن اینکه آیا نظرات ارائه شده است، از آن استفاده کنید. [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) مالکیت

In In In Microsoft Word, این پارامتر با استفاده از جعبه محاوره "Track تغییرات" تنظیم شده است، همانطور که در زیر نشان داده شده است:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

همچنین، Aspose.Words اجازه می دهد تا شما را به نمایش در یک سند. استفاده از [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) مالکیت **LayoutOptions** کلاس برای تعریف اینکه آیا اصلاحات سند نمایش داده می شود. برای کنترل ظاهر خود (رنگ برجسته، رنگ بار تجدید نظر و غیره) استفاده از [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/) کلاس

شما همچنین می توانید اصلاحات را به عنوان نظرات به محتوا نشان دهید. برای این منظور، استفاده از [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) مالکیت و [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/) ارزش

مثال کد زیر نشان می دهد که چگونه نمایش بازنگری را سفارشی کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

تصویر زیر نشان می دهد که چگونه Aspose.Words ارائه نظرات و تجدید نظر حذف:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## Text Shaper for Advanced Typography

The The The The The The [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) ملک شما را قادر می سازد تا قابلیت های شکل گیری متن و همچنین `OpenType` ویژگی های پشتیبانی

از شکل گیری متن برای پردازش سند در موارد اصلی زیر استفاده کنید:

- یک سند از Kerning، Numeral Shaping، فرم های عددی یا Ligatures استفاده می کند.
- یک سند از اسکریپت های پیچیده مانند عربی، Khmer، تایلندی و غیره استفاده می کند.

{{% alert color="primary" %}}

شکل گیری متن تنها زمانی امکان پذیر خواهد شد که یک سند را به PDF یا PDF صادر کنیم. XPS...

{{% /alert %}}
