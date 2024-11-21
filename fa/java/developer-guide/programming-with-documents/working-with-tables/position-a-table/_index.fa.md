---
title: موقعیت جدول در Java
second_title: Aspose.Words برای Java
articleTitle: موقعیت یک جدول
linktitle: موقعیت یک جدول
description: "موقعیت جدول در Java... یک تراز جدول، دریافت و تنظیم موقعیت جدول شناور با استفاده از Java..."
type: docs
weight: 50
url: /fa/java/position-a-table/
timestamp: 2024-01-27-14-07-04
---

جداول شناور و جداول خط وجود دارد:

* **جدول های خط** در همان لایه به عنوان متن قرار داده می شود و در جریان متن قرار می گیرد که فقط جدول بالا و پایین را احاطه می کند. جداول خط همیشه بین پاراگراف هایی که در آن قرار داده اید ظاهر می شوند.
* **جدول های شناور** بر روی متن لایه بندی شده اند و موقعیت جدول نسبت به پاراگراف توسط لنگر جدول مشخص می شود. به همین دلیل، موقعیت جدول شناور در سند تحت تاثیر تنظیمات موقعیت عمودی و افقی قرار می گیرد.

گاهی اوقات شما باید یک میز را در یک سند قرار دهید. برای انجام این کار، شما باید از ابزار تراز استفاده کنید و بین جدول و متن اطراف آن را تنظیم کنید.

در این مقاله، در مورد گزینه ها بحث خواهیم کرد. Aspose.Words برای موقعیت یابی فراهم می کند.

## ویژگی های Inline Table Position

شما می توانید موقعیت یک میز خط را با استفاده از Aspose.Words API و [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment) مالکیت بنابراین، شما می توانید تراز جدول را نسبت به صفحه سند تنظیم کنید.

مثال کد زیر نشان می دهد که چگونه موقعیت یک جدول زیر را تنظیم کنیم:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## جدول شناور Alignment

اگر بسته بندی متن جدول تنظیم شود **Around**, شما می توانید تراز افقی و عمودی جدول را با استفاده از [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) و [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) خواص

با **انواع دیگر بسته بندی متن**, شما می توانید تراز جدول را با استفاده از **Alignment** مالکیت

مثال کد زیر نشان می دهد که چگونه تراز جدول را دریافت کنید:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## صندلی جدول شناور

 موقعیت یک میز شناور با استفاده از خواص زیر مشخص می شود:

* [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) یک شی برای محاسبه موقعیت افقی یک میز شناور
* [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) - یک شی برای محاسبه موقعیت عمودی یک میز شناور
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) موقعیت جدول شناور افقی
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) موقعیت جدول شناور عمودی
* [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) - گزینه ای برای فعال کردن / همپوشانی با دیگر اشیاء شناور
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) جدول شناور در تراز افقی نسبی
* [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) جدول شناور تراز عمودی نسبی

مثال کد زیر نشان می دهد که چگونه موقعیت یک جدول شناور را بدست آورید:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## موقعیت جدول جدول شناور

درست مانند گرفتن، شما می توانید موقعیت یک میز شناور را با استفاده از همان حالت تنظیم کنید. Aspose.Words API...

مهم است که بدانیم که تراز و فاصله افقی و عمودی خواص ترکیبی هستند و می توان دیگری را مجدداً تنظیم کرد. به عنوان مثال، تنظیم **RelativeHorizontalAlignment** پس از آن، **AbsoluteHorizontalDistance** به ارزش پیش فرض و برعکس. همان true برای آرایش عمودی

مثال کد زیر نشان می دهد که چگونه موقعیت یک جدول شناور را تنظیم کنیم:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## فاصله بین جدول و متن فراگیر

Aspose.Words همچنین فرصتی برای پیدا کردن فاصله بین جداول و متون اطراف فراهم می کند:

- [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) ارزش فاصله از بالا
- [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) ارزش فاصله ادراک
- [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) ارزش فاصله در سمت راست
- [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) ارزش فاصله در سمت چپ

مثال کد زیر نشان می دهد که چگونه فاصله بین یک میز و متن اطراف آن را دریافت کنید:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
