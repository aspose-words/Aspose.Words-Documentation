---
title: Como encontrar propriedades de campo em C#
second_title: Aspose.Words para .NET
articleTitle: Encontre propriedades de campo
linktitle: Encontre propriedades de campo
description: "Como encontrar algumas propriedades de campo, como código de campo e resultado de campo em C#."
type: docs
weight: 25
url: /pt/net/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

Um campo inserido usando [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) retorna um objeto [Field](https://reference.aspose.com/words/net/aspose.words.fields/field/). Esta é uma classe de fachada que fornece métodos úteis para encontrar rapidamente algumas propriedades de um campo.

O exemplo de código a seguir mostra como encontrar o código do campo e o resultado do campo:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldCode.cs" >}}

Observe que se você estiver procurando apenas os nomes dos campos de mesclagem em um documento, poderá usar o método [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/) integrado.

O exemplo de código a seguir mostra como obter nomes de todos os campos de mesclagem em um documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cs" >}}
