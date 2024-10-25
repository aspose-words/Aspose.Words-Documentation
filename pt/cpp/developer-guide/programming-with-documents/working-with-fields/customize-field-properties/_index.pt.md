---
title: Personalizar propriedades de Campo Em C++
second_title: Aspose.Words para C++
articleTitle: Personalizar Propriedades Do Campo
linktitle: Personalizar Propriedades Do Campo
description: "Saiba como personalizar propriedades de campo em C++. Renomeie mesclar campos ou obtenha resultados para campos sem nó separador em C++."
type: docs
weight: 27
url: /pt/cpp/customize-field-properties/
---

Aspose.Words fornece a capacidade de interagir programaticamente com várias propriedades de campo. Neste artigo, veremos alguns exemplos para que você entenda o princípio básico de trabalhar com propriedades de campo. Você pode ver a lista completa de propriedades para cada tipo de campo na classe correspondente no [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## Actualização Da Propriedade Do Campo

Às vezes, os usuários precisam alterar o valor de uma propriedade de campo. Por exemplo, atualize a propriedade [AuthorName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/get_authorname/) do campo `AUTHOR` ou altere a propriedade [FieldName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_fieldname/) do campo `MERGEFIELD`.

O exemplo de código a seguir mostra como renomear campos de mesclagem em um documento do Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cpp" >}}

## Resultado Da Apresentação Do Campo

Aspose.Words fornece uma propriedade para obter o resultado do campo para campos que não possuem um nó separador de campo. Chamamos isso de" resultado falso " ou resultado de exibição; Microsoft Word o exibe no documento calculando o valor do campo em tempo real, mas não existe esse valor no modelo do documento.

O exemplo de código a seguir mostra o uso da propriedade [DisplayResult](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_displayresult/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cpp" >}}