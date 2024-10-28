---
title: چگونه ویژگی های میدان را پیدا کنیم
second_title: Aspose.Words برای C++
articleTitle: ویژگی های میدان را پیدا کنید
linktitle: ویژگی های میدان را پیدا کنید
description: "چگونه برخی از ویژگی های فیلد مانند کد فیلد و نتیجه فیلد را در C++ پیدا کنیم."
type: docs
weight: 25
url: /fa/cpp/find-field-properties/
---

فیلدی که با استفاده از [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) وارد می شود.[InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) یک شیء [Field](https://reference.aspose.com/words/cpp/aspose.words.fields/field/) را باز می گرداند. این یک کلاس نما است که روش های مفیدی را برای یافتن سریع برخی از خواص یک میدان فراهم می کند.

مثال کد زیر نشان می دهد که چگونه کد فیلد و نتیجه فیلد را پیدا کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsCode.cpp" >}}

توجه اگر فقط به دنبال نام فیلد های ادغام در یک سند هستید، می توانید از روش [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/) داخلی استفاده کنید.

مثال کد زیر نشان می دهد که چگونه نام تمام فیلد های ادغام را در یک سند بدست آوریم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}