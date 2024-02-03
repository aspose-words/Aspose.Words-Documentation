---
title: Python'te Alan Özelliklerini Bulma
second_title: Python via .NET için Aspose.Words
articleTitle: Alan Özelliklerini Bul
linktitle: Alan Özelliklerini Bul
description: "Python'te alan kodu ve alan sonucu gibi bazı alan özellikleri nasıl bulunur?"
type: docs
weight: 25
url: /tr/python-net/find-field-properties/
---

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).[insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) kullanılarak eklenen alan bir [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) nesnesi döndürür. Bu, bir alanın bazı özelliklerini hızla bulmak için kullanışlı yöntemler sağlayan bir cephe sınıfıdır.

Aşağıdaki kod örneği, alan kodunun ve alan sonucunun nasıl bulunacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldCode.py" >}}

Bir belgede yalnızca birleştirme alanlarının adlarını arıyorsanız bunun yerine yerleşik [get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/) yöntemini kullanabileceğinizi unutmayın.

Aşağıdaki kod örneği, bir belgedeki tüm birleştirme alanlarının adlarının nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}