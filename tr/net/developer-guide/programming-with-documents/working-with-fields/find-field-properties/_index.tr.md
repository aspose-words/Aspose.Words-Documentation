---
title: C#'te Alan Özellikleri Nasıl Bulunur?
second_title: .NET için Aspose.Words
articleTitle: Alan Özelliklerini Bul
linktitle: Alan Özelliklerini Bul
description: "C#'te alan kodu ve alan sonucu gibi bazı alan özellikleri nasıl bulunur?"
type: docs
weight: 25
url: /tr/net/find-field-properties/
---

[DocumentBuilder](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/insertfield/) kullanılarak eklenen alan bir [Field](https://reference.aspose.com/words/tr/net/aspose.words.fields/field/) nesnesi döndürür. Bu, bir alanın bazı özelliklerini hızla bulmak için kullanışlı yöntemler sağlayan bir cephe sınıfıdır.

Aşağıdaki kod örneği, alan kodunun ve alan sonucunun nasıl bulunacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldCode.cs" >}}

Bir belgede yalnızca birleştirme alanlarının adlarını arıyorsanız bunun yerine yerleşik [GetFieldNames](https://reference.aspose.com/words/tr/net/aspose.words.mailmerging/mailmerge/getfieldnames/) yöntemini kullanabileceğinizi unutmayın.

Aşağıdaki kod örneği, bir belgedeki tüm birleştirme alanlarının adlarının nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cs" >}}