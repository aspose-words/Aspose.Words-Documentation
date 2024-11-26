---
title: Alan Özellikleri Nasıl Bulunur
second_title: Aspose.Words için C++
articleTitle: Alan Özelliklerini Bul
linktitle: Alan Özelliklerini Bul
description: "Alan kodu ve alan sonucu C++ gibi bazı alan özellikleri nasıl bulunur."
type: docs
weight: 25
url: /tr/cpp/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) kullanılarak eklenen bir alan.[InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) bir [Field](https://reference.aspose.com/words/cpp/aspose.words.fields/field/) nesnesi döndürür. Bu, bir alanın bazı özelliklerini hızlı bir şekilde bulmak için yararlı yöntemler sağlayan bir cephe sınıfıdır.

Aşağıdaki kod örneği, alan kodunu ve alan sonucunu nasıl bulacağınızı gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsCode.cpp" >}}

Not bir belgede yalnızca birleştirme alanlarının adlarını arıyorsanız, bunun yerine yerleşik [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/) yöntemini kullanabilirsiniz.

Aşağıdaki kod örneği, belgedeki tüm birleştirme alanlarının adlarının nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}
