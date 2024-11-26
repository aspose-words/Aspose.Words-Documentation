---
title: Encontre propriedades de campo em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Encontre propriedades de campo
linktitle: Encontre propriedades de campo
description: "Como encontrar algumas propriedades de campo, como código de campo e resultado de campo em Python."
type: docs
weight: 25
url: /pt/python-net/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

Um campo inserido usando [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).[insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) retorna um objeto [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/). Esta é uma classe de fachada que fornece métodos úteis para encontrar rapidamente algumas propriedades de um campo.

O exemplo de código a seguir mostra como encontrar o código do campo e o resultado do campo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldCode.py" >}}

Observe que se você estiver procurando apenas os nomes dos campos de mesclagem em um documento, poderá usar o método [get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/) integrado.

O exemplo de código a seguir mostra como obter nomes de todos os campos de mesclagem em um documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}
