---
title: Personalizar Propriedades de Campo
second_title: Aspose.Words para Java
articleTitle: Personalizar Propriedades de Campo
linktitle: Personalizar Propriedades de Campo
description: "Saiba como personalizar propriedades de campo em Java. Renomear campos de mesclagem ou obter resultados para campos sem nó separador em Java."
type: docs
weight: 27
url: /pt/java/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words fornece a capacidade de interagir programaticamente com várias propriedades de campo. Neste artigo, vamos olhar para alguns exemplos para que você entenda o princípio básico de trabalhar com propriedades de campo. Você pode ver a lista completa de propriedades para cada tipo de campo na classe correspondente.

## Atualização da propriedade de campo

Às vezes, os usuários precisam alterar o valor de uma propriedade de campo. Por exemplo, atualize o [AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName) propriedade da `AUTHOR` campo ou alterar o [FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName) propriedade da `MERGEFIELD` campo.

O exemplo de código a seguir mostra como renomear campos de mesclagem em um documento do Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## Resultado de exibição de campo

Aspose.Words fornece uma propriedade para obter o resultado do campo para campos que não têm um nó separador de campo. Chamamos este "resultado falso" ou resultado de exibição; o MS Word o exibe no documento calculando o valor do campo na mosca, mas não há tal valor no modelo de documento.

O seguinte exemplo de código mostra o uso de [DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult) propriedade:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
