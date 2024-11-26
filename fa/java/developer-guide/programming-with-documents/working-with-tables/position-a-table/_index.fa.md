---
title: موقعیت جدول در Java
second_title: Aspose.Words برای Java
articleTitle: یک جدول را قرار دهید
linktitle: یک جدول را قرار دهید
description: "موقعیت جدول را در Java مشخص کنید. با استفاده از Java یک تراز جدول بدست آورید، موقعیت جدول شناور را بدست آورید و تنظیم کنید."
type: docs
weight: 50
url: /fa/java/position-a-table/
timestamp: 2024-01-27-14-07-04
---

جداول شناور و جداول خطی وجود دارد:

* **Inline tables** در همان لایه متن قرار می گیرند و در جریان متن قرار می گیرند که فقط جدول بالا و پایین را احاطه می کند. جداول خطی همیشه بین پاراگراف هایی که در آن قرار داده اید ظاهر می شوند.
* **Floating tables** روی متن لایه بندی شده اند و موقعیت جدول نسبت به پاراگراف توسط لنگر جدول تعیین می شود. به همین دلیل، موقعیت جدول شناور در سند تحت تأثیر تنظیمات موقعیت عمودی و افقی قرار می گیرد.

گاهی اوقات شما باید یک جدول را در یک سند به روشی خاص قرار دهید. برای انجام این کار، باید از ابزارهای تراز استفاده کنید و فرورفتگی ها را بین جدول و متن اطراف تنظیم کنید.

در این مقاله، ما در مورد گزینه های Aspose.Words برای موقعیت یابی بحث خواهیم کرد.

## موقعیت جدول خطی را مشخص کنید

شما می توانید موقعیت یک جدول خطی را با استفاده از ویژگی Aspose.Words API و [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment) تنظیم کنید. بنابراین، می توانید تراز جدول را نسبت به صفحه سند تنظیم کنید.

مثال کد زیر نشان می دهد که چگونه موقعیت یک جدول خطی را تنظیم کنید:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## دریافت تراز جدول شناور

اگر بسته بندی متن جدول به **Around** تنظیم شده باشد، می توانید تراز افقی و عمودی جدول را با استفاده از ویژگی های [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) و [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) بدست آورید.

با **other types of text wrapping** می توانید تراز جدول خطی را با استفاده از ویژگی **Alignment** بدست آورید.

مثال کد زیر نشان می دهد که چگونه تراز جدول را بدست آوریم:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## دریافت موقعیت جدول شناور

 موقعیت یک جدول شناور با استفاده از ویژگی های زیر تعیین می شود:

* [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) - یک شی برای محاسبه موقعیت افقی یک جدول شناور
* [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) - یک شی برای محاسبه موقعیت عمودی یک جدول شناور
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) – موقعیت جدول شناور افقی مطلق
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) – موقعیت جدول شناور عمودی مطلق
* [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) – گزینه فعال/غیرفعال کردن همپوشانی با سایر اشیاء شناور
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) – جدول شناور تراز افقی نسبی.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) – جدول شناور تراز عمودی نسبی.

مثال کد زیر نشان می دهد که چگونه موقعیت یک جدول شناور را بدست آوریم:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## موقعیت میز شناور را تنظیم کنید

درست مثل گرفتن، شما می توانید موقعیت یک جدول شناور را با استفاده از همان Aspose.Words API تنظیم کنید.

مهم است بدانید که تراز و فاصله افقی و عمودی خواص ترکیبی هستند و یکی می تواند دیگری را بازنشانی کند. برای مثال، تنظیم **RelativeHorizontalAlignment** **AbsoluteHorizontalDistance** را به مقدار پیش فرض خود تنظیم می کند و برعکس. همین امر در مورد ترتیب عمودی نیز صدق می کند.

مثال کد زیر نشان می دهد که چگونه موقعیت یک جدول شناور را تنظیم کنید:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## فاصله بین جدول و متن اطراف را بدست آورید

Aspose.Words همچنین فرصتی برای پیدا کردن فاصله بین جداول و متون اطراف فراهم می کند:

- [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) - مقدار فاصله از بالا
- [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) - ارزش فاصله ادراک
- [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) – مقدار فاصله در سمت راست
- [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) - مقدار فاصله در سمت چپ

مثال کد زیر نشان می دهد که چگونه فاصله بین یک جدول و متن اطراف آن را بدست آوریم:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
