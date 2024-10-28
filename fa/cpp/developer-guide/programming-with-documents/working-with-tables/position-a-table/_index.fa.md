---
title: موقعیت جدول در C++
second_title: Aspose.Words برای C++
articleTitle: یک جدول را قرار دهید
linktitle: یک جدول را قرار دهید
description: "موقعیت جدول را در C++ مشخص کنید. با استفاده از C++ یک تراز جدول بدست آورید، موقعیت جدول شناور را بدست آورید و تنظیم کنید."
type: docs
weight: 50
url: /fa/cpp/position-a-table/
---

جداول شناور و جداول خطی وجود دارد:

* **Inline tables** در همان لایه متن قرار می گیرند و در جریان متن قرار می گیرند که فقط جدول بالا و پایین را احاطه می کند. جداول خطی همیشه بین پاراگراف هایی که در آن قرار داده اید ظاهر می شوند.
* **Floating tables** روی متن لایه بندی شده اند و موقعیت جدول نسبت به پاراگراف توسط لنگر جدول تعیین می شود. به همین دلیل، موقعیت جدول شناور در سند تحت تأثیر تنظیمات موقعیت عمودی و افقی قرار می گیرد.

گاهی اوقات شما باید یک جدول را در یک سند به روشی خاص قرار دهید. برای انجام این کار، باید از ابزارهای تراز استفاده کنید و فرورفتگی ها را بین جدول و متن اطراف تنظیم کنید.

در این مقاله، ما در مورد گزینه های Aspose.Words برای موقعیت یابی بحث خواهیم کرد.

## موقعیت جدول خطی را مشخص کنید

شما می توانید موقعیت یک جدول خطی را با استفاده از ویژگی Aspose.Words API و [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/) تنظیم کنید. بنابراین، می توانید تراز جدول را نسبت به صفحه سند تنظیم کنید.

مثال کد زیر نشان می دهد که چگونه موقعیت یک جدول خطی را تنظیم کنید:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "inline-table-position.h" >}}

## دریافت تراز جدول شناور

اگر بسته بندی متن جدول به **Around** تنظیم شده باشد، می توانید تراز افقی و عمودی جدول را با استفاده از ویژگی های [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) و [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/) بدست آورید.

با **other types of text wrapping** می توانید با استفاده از ویژگی [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/) تراز جدول خطی را بدست آورید.

مثال کد زیر نشان می دهد که چگونه تراز جدول را بدست آوریم:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-table-position.h" >}}

## دریافت موقعیت جدول شناور

 موقعیت یک جدول شناور با استفاده از ویژگی های زیر تعیین می شود:

* [HorizontalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_horizontalanchor/) - یک شی برای محاسبه موقعیت افقی یک جدول شناور
* [VerticalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_verticalanchor/) - یک شی برای محاسبه موقعیت عمودی یک جدول شناور
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absolutehorizontaldistance/) – موقعیت جدول شناور افقی مطلق
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absoluteverticaldistance/) – موقعیت جدول شناور عمودی مطلق
* [AllowOverlap](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowoverlap/) – گزینه فعال/غیرفعال کردن همپوشانی با سایر اشیاء شناور
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) – جدول شناور تراز افقی نسبی.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/) – جدول شناور تراز عمودی نسبی.

مثال کد زیر نشان می دهد که چگونه موقعیت یک جدول شناور را بدست آوریم:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-floating-table-position.h" >}}

## موقعیت میز شناور را تنظیم کنید

درست مثل گرفتن، شما می توانید موقعیت یک جدول شناور را با استفاده از همان Aspose.Words API تنظیم کنید.

مهم است بدانید که تراز و فاصله افقی و عمودی خواص ترکیبی هستند و یکی می تواند دیگری را بازنشانی کند. برای مثال، تنظیم **RelativeHorizontalAlignment** **AbsoluteHorizontalDistance** را به مقدار پیش فرض خود تنظیم می کند و برعکس. همین امر در مورد ترتیب عمودی نیز صدق می کند.

مثال کد زیر نشان می دهد که چگونه موقعیت یک جدول شناور را تنظیم کنید:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "floating-table-position.h" >}}

## فاصله بین جدول و متن اطراف را بدست آورید

Aspose.Words همچنین فرصتی برای پیدا کردن فاصله بین جداول و متون اطراف فراهم می کند:

- [DistanceTop](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancetop/) - مقدار فاصله از بالا
- [DistanceBottom](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancebottom/) - ارزش فاصله ادراک
- [DistanceRight](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceright/) – مقدار فاصله در سمت راست
- [DistanceLeft](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceleft/) - مقدار فاصله در سمت چپ

مثال کد زیر نشان می دهد که چگونه فاصله بین یک جدول و متن اطراف آن را بدست آوریم:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "distance-between-table-surrounding-text.h" >}}
