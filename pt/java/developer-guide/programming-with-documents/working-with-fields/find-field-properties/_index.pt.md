---
title: Como Encontrar Propriedades de Campo
second_title: Aspose.Words para Java
articleTitle: Encontrar Propriedades de Campo
linktitle: Encontrar Propriedades de Campo
description: "Como encontrar algumas propriedades de campo como código de campo e resultado de campo em Java"
type: docs
weight: 25
url: /pt/java/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

Um campo que é inserido usando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) retorna um [Field](https://reference.aspose.com/words/java/com.aspose.words/field/) objeto. Esta é uma classe de fachada que fornece métodos úteis para encontrar rapidamente tais propriedades de um campo.

O exemplo a seguir mostra como encontrar o código de campo e o resultado do campo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldCode.java" >}}

Note se você está apenas procurando os nomes dos campos de mesclagem no documento, então você pode usar o método incorporado [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames).

O exemplo de código a seguir mostra como obter nomes de todos os campos de mesclagem em um documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldNames.java" >}}
