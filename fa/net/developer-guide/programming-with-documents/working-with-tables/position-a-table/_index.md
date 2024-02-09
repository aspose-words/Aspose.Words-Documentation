---
title: موقعیت جدول در C#
second_title: Aspose.Words برای .NET
articleTitle: یک جدول قرار دهید
linktitle: یک جدول قرار دهید
description: "موقعیت جدول را در C# مشخص کنید. تراز جدول را دریافت کنید، موقعیت جدول شناور را با استفاده از C# دریافت و تنظیم کنید."
type: docs
weight: 50
url: /fa/net/position-a-table/
---

جداول شناور و جداول درون خطی وجود دارد:

* **جداول درون خطی** روی همان لایه متن قرار می گیرد و در جریانی از متن قرار می گیرد که فقط جدول بالا و پایین را احاطه کرده است. جداول درون خطی همیشه بین پاراگراف هایی که آنها را قرار داده اید ظاهر می شوند.
* **میزهای شناور** روی متن لایه بندی می شود و موقعیت جدول نسبت به پاراگراف توسط لنگر جدول تعیین می شود. به همین دلیل، موقعیت جدول شناور در سند تحت تأثیر تنظیمات موقعیت یابی عمودی و افقی قرار می گیرد.

گاهی اوقات لازم است یک جدول را در یک سند به روشی خاص قرار دهید. برای این کار باید از ابزارهای تراز استفاده کنید و تورفتگی ها را بین جدول و متن اطراف تنظیم کنید.

در این مقاله، ما در مورد گزینه هایی که Aspose.Words برای موقعیت یابی ارائه می دهد بحث خواهیم کرد.

## موقعیت جدول درون خطی را مشخص کنید

می توانید موقعیت یک جدول درون خطی را با استفاده از Aspose.Words API و ویژگی [Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/) تنظیم کنید. بنابراین، می توانید تراز جدول را نسبت به صفحه سند تنظیم کنید.

مثال کد زیر نحوه تنظیم موقعیت یک جدول درون خطی را نشان می دهد:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "inline-table-position.cs" >}}

## تراز جدول شناور را دریافت کنید

اگر بسته بندی متن جدول روی **Around** تنظیم شده باشد، می توانید تراز افقی و عمودی جدول را با استفاده از ویژگی های [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) و [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/) بدست آورید.

با **انواع دیگر بسته بندی متن**، می توانید با استفاده از ویژگی [Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/) تراز جدول درون خطی را دریافت کنید.

مثال کد زیر نحوه بدست آوردن تراز جدول را نشان می دهد:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-table-position.cs" >}}

## موقعیت میز شناور را دریافت کنید

 موقعیت یک میز شناور با استفاده از ویژگی های زیر تعیین می شود:

* [HorizontalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/horizontalanchor/) - یک شی برای محاسبه موقعیت افقی یک میز شناور
* [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/verticalanchor/) - یک شی برای محاسبه موقعیت عمودی یک میز شناور
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absolutehorizontaldistance/) - موقعیت میز شناور افقی مطلق
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absoluteverticaldistance/) - موقعیت میز شناور عمودی مطلق
* [AllowOverlap](https://reference.aspose.com/words/net/aspose.words.tables/table/allowoverlap/) – گزینه ای برای فعال/غیرفعال کردن همپوشانی با سایر اشیاء شناور
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) - جدول شناور تراز افقی نسبی.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/) - جدول شناور تراز نسبی عمودی.

مثال کد زیر نحوه بدست آوردن موقعیت یک جدول شناور را نشان می دهد:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-floating-table-position.cs" >}}

## تنظیم موقعیت میز شناور

درست مانند گرفتن، می توانید موقعیت یک میز شناور را با استفاده از همان Aspose.Words API تنظیم کنید.

مهم است بدانید که هم ترازی و فاصله افقی و عمودی ویژگی های ترکیبی هستند و یکی می تواند دیگری را بازنشانی کند. به عنوان مثال، تنظیم **RelativeHorizontalAlignment** **AbsoluteHorizontalDistance** را به مقدار پیش فرض خود بازنشانی می کند و بالعکس. true برای آرایش عمودی هم همینطور است.

مثال کد زیر نحوه تنظیم موقعیت جدول شناور را نشان می دهد:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "floating-table-position.cs" >}}

## فاصله بین جدول و متن اطراف را بدست آورید

Aspose.Words همچنین فرصتی برای یافتن فاصله بین جداول و متون اطراف فراهم می کند:

- [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/) - مقدار فاصله از بالا
- [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/) - مقدار فاصله ادراک
- [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/) - مقدار فاصله در سمت راست
- [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/) - مقدار فاصله در سمت چپ

مثال کد زیر نحوه بدست آوردن فاصله بین یک جدول و متن اطراف آن را نشان می دهد:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "distance-between-table-surrounding-text.cs" >}}
