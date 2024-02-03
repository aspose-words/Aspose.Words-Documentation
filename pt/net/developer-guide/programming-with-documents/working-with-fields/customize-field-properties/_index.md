---
title: Personalize propriedades de campo em C#
second_title: Aspose.Words para .NET
articleTitle: Personalizar propriedades do campo
linktitle: Personalizar propriedades do campo
description: "Aprenda como personalizar propriedades de campo em C#. Renomeie campos de mesclagem ou obtenha resultados para campos sem nó separador em .NET."
type: docs
weight: 27
url: /pt/net/customize-field-properties/
---

Aspose.Words oferece a capacidade de interagir programaticamente com várias propriedades de campo. Neste artigo, veremos alguns exemplos para que você entenda o princípio básico de trabalhar com propriedades de campo. Você pode ver a lista completa de propriedades para cada tipo de campo na classe correspondente no [Namespace de campos](https://reference.aspose.com/words/net/aspose.words.fields/).

## Atualização de propriedade de campo

Às vezes, os usuários precisam alterar o valor de uma propriedade de campo. Por exemplo, atualize a propriedade [AuthorName](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/authorname/) do campo `AUTHOR` ou altere a propriedade [FieldName](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/fieldname/) do campo `MERGEFIELD`.

O exemplo de código a seguir mostra como renomear campos de mesclagem em um documento do Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cs" >}}

## Resultado de exibição do campo

Aspose.Words fornece uma propriedade para obter o resultado do campo para campos que não possuem um nó separador de campo. Chamamos isso de "resultado falso" ou resultado de exibição; O MS Word o exibe no documento calculando o valor do campo dinamicamente, mas não existe tal valor no modelo do documento.

O exemplo de código a seguir mostra o uso da propriedade [DisplayResult](https://reference.aspose.com/words/net/aspose.words.fields/field/displayresult/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cs" >}}
