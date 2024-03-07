---
title: ویژگی های فیلد را در Python پیدا کنید
second_title: Aspose.Words برای Python via .NET
articleTitle: ویژگی های فیلد را پیدا کنید
linktitle: ویژگی های فیلد را پیدا کنید
description: "چگونه برخی از ویژگی های فیلد مانند کد فیلد و نتیجه فیلد را در Python پیدا کنیم."
type: docs
weight: 25
url: /fa/python-net/find-field-properties/
---

فیلدی که با استفاده از [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).[insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) درج می شود یک شی [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) را برمی گرداند. این یک کلاس faсade است که روش های مفیدی را برای یافتن سریع برخی از ویژگی های یک فیلد ارائه می دهد.

مثال کد زیر نحوه یافتن کد فیلد و نتیجه فیلد را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldCode.py" >}}

توجه داشته باشید اگر فقط به دنبال نام فیلدهای ادغام در یک سند هستید، در عوض می توانید از روش داخلی [get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/) استفاده کنید.

مثال کد زیر نحوه دریافت نام تمام فیلدهای ادغام در یک سند را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}