---
title: Como encontrar propriedades de campo
second_title: Aspose.Words para C++
articleTitle: Encontrar Propriedades Do Campo
linktitle: Encontrar Propriedades Do Campo
description: "Como encontrar algumas propriedades de campo, como código de campo e resultado de campo em C++."
type: docs
weight: 25
url: /pt/cpp/find-field-properties/
---

Um campo que é inserido utilizando [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) devolve um objecto [Field](https://reference.aspose.com/words/cpp/aspose.words.fields/field/). Esta é uma classe de fachada que fornece métodos úteis para encontrar rapidamente algumas propriedades de um campo.

O exemplo de código a seguir mostra como encontrar o código do campo e o resultado do campo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsCode.cpp" >}}

Observação Se você estiver procurando apenas os nomes dos campos de mesclagem em um documento, poderá usar o método [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/) integrado.

O exemplo de código a seguir mostra como obter nomes de todos os campos de mesclagem em um documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}