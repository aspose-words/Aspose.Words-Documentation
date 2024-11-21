---
title: نحوه یافتن ویژگی های فیلد در C#
second_title: Aspose.Words برای .NET
articleTitle: ویژگی های فیلد را پیدا کنید
linktitle: ویژگی های فیلد را پیدا کنید
description: "چگونه برخی از ویژگی های فیلد مانند کد فیلد و نتیجه فیلد را در C# پیدا کنیم."
type: docs
weight: 25
url: /fa/net/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

فیلدی که با استفاده از [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) درج می شود یک شی [Field](https://reference.aspose.com/words/net/aspose.words.fields/field/) را برمی گرداند. این یک کلاس faсade است که روش های مفیدی را برای یافتن سریع برخی از ویژگی های یک فیلد ارائه می دهد.

مثال کد زیر نحوه یافتن کد فیلد و نتیجه فیلد را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldCode.cs" >}}

توجه داشته باشید اگر فقط به دنبال نام فیلدهای ادغام در یک سند هستید، در عوض می توانید از روش داخلی [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/) استفاده کنید.

مثال کد زیر نحوه دریافت نام تمام فیلدهای ادغام در یک سند را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cs" >}}
