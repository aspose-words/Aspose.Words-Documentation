---
title: Alan Özelliklerini Nasıl Bulabilirsiniz?
second_title: Aspose.Words için Java
articleTitle: Alan Özelliklerini Bul
linktitle: Alan Özelliklerini Bul
description: "Bir alan kodu ve bir alan sonucu gibi bazı alan özelliklerini Java içinde nasıl bulabilirim?"
type: docs
weight: 25
url: /tr/java/find-field-properties/
---

Bir alan [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) kullanarak eklenir, bir [Field](https://reference.aspose.com/words/java/com.aspose.words/field/) nesnesi döndürür. Bu, böyle bir özelliğin hızlı bir şekilde bulunmasını sağlamak için yararlı yöntemler sağlayan bir fasad sınıfıdır.

Aşağıdaki kod örneği, alan kodunu ve alan sonucunu nasıl bulacağınızı gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldCode.java" >}}

Sadece belgede birleştirme alanlarının adlarını arıyorsanız, bunun yerine yerleşik yöntemi [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames) kullanabilirsiniz.

Aşağıdaki kod örneği, bir belge içindeki tüm birleştirme alanlarının adlarını nasıl alacağınızı göstermektedir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldNames.java" >}}
