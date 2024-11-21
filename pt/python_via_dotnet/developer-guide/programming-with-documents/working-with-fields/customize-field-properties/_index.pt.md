---
title: Personalize propriedades de campo em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Personalizar propriedades do campo
linktitle: Personalizar propriedades do campo
description: "Aprenda como personalizar propriedades de campo em Python. Renomeie campos de mesclagem ou obtenha resultados para campos sem nó separador em Python via .NET."
type: docs
weight: 27
url: /pt/python-net/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words oferece a capacidade de interagir programaticamente com várias propriedades de campo. Neste artigo, veremos alguns exemplos para que você entenda o princípio básico de trabalhar com propriedades de campo. Você pode ver a lista completa de propriedades para cada tipo de campo na classe correspondente no [Módulo Campos](https://reference.aspose.com/words/python-net/aspose.words.fields/).

## Atualização de propriedade de campo

Às vezes, os usuários precisam alterar o valor de uma propriedade de campo. Por exemplo, atualize a propriedade [author_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/author_name/) do campo `AUTHOR` ou altere a propriedade [field_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/field_name/) do campo `MERGEFIELD`.

O exemplo de código a seguir mostra como renomear campos de mesclagem em um documento do Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}

## Resultado de exibição do campo

Aspose.Words fornece uma propriedade para obter o resultado do campo para campos que não possuem um nó separador de campo. Chamamos isso de "resultado falso" ou resultado de exibição; O MS Word o exibe no documento calculando o valor do campo dinamicamente, mas não existe tal valor no modelo do documento.

O exemplo de código a seguir mostra o uso da propriedade [display_result](https://reference.aspose.com/words/python-net/aspose.words.fields/field/display_result/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-FieldDisplayResults.py" >}}
