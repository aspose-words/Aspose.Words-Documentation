---
title: نحوه ایجاد بارکد
second_title: Aspose.Words برای .NET
articleTitle: یک تصویر بارکد سفارشی ایجاد کنید
linktitle: یک تصویر بارکد سفارشی ایجاد کنید
description: "نمونه ای از تولید شکل بارکد با استفاده از C#."
type: docs
weight: 350
url: /fa/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Aspose.Words دارای یک رابط برای تولید بارکدهای سفارشی است که استفاده از Aspose.Words و [Aspose.BarCode](https://products.aspose.com/barcode/net/) را برای ارائه تصاویر بارکد در اسناد خروجی بسیار آسان می کند. به عنوان مثال، می توانید یک سند DOC، OOXML یا RTF حاوی فیلد `DISPLAYBARCODE` را در Aspose.Words بارگذاری کنید، پیاده سازی خود را از تولید کننده بارکد سفارشی ارائه دهید و در قالب های صفحه ثابت مانند PDF، XPS و غیره ذخیره کنید.

یک فیلد معمولی `DISPLAYBARCODE` دارای نحو زیر است:

{ `DISPLAYBARCODE` "SomeData" QR \h 720 }

در زیر یک نمونه تولید کننده کد است که از `Aspose.BarCode` API استفاده می کند. این مثال نحوه درج تصاویر بارکد را در موقعیت `DISPLAYBARCODE` Field در سند Word با استفاده از Aspose.Words و `Aspose.BarCode` API نشان می دهد:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}
