---
title: Personalizar Propriedades Do Campo
second_title: Aspose.Words para Java
articleTitle: Personalizar Propriedades Do Campo
linktitle: Personalizar Propriedades Do Campo
description: "Saiba como personalizar as propriedades do campo em Java. Renomeie mesclar campos ou obtenha resultados para campos sem nó separador em Java."
type: docs
weight: 27
url: /pt/java/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words fornece a capacidade de interagir programaticamente com várias propriedades de campo. Neste artigo, veremos alguns exemplos para que você entenda o princípio básico de trabalhar com propriedades de campo. Você pode ver a lista completa de propriedades para cada tipo de campo na classe correspondente.

## Actualização Da Propriedade Do Campo

Às vezes, os usuários precisam alterar o valor de uma propriedade de campo. Por exemplo, atualize a propriedade [AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName) do campo `AUTHOR` ou altere a propriedade [FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName) do campo `MERGEFIELD`.

O exemplo de código a seguir mostra como renomear campos de mesclagem em um documento do Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## Resultado Da Apresentação Do Campo

Aspose.Words fornece uma propriedade para obter o resultado do campo para campos que não possuem um nó separador de campo. Chamamos isso de" resultado falso " ou resultado de exibição; MS o Word o exibe no documento calculando o valor do campo em tempo real, mas não existe esse valor no modelo do documento.

O exemplo de código a seguir mostra o uso da propriedade [DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
