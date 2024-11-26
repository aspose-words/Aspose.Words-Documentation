---
title: Trabalhando com fontes em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhar com fontes
linktitle: Trabalhar com fontes
description: "Formatação de fonte em detalhes usando Java."
type: docs
weight: 230
url: /pt/java/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Uma fonte é um conjunto de caracteres com um determinado tamanho, cor e design. Aspose.Words permite que você trabalhe com fontes usando várias classes relacionadas a fontes, incluindo a classe [Font](https://reference.aspose.com/words/java/com.aspose.words/font/).

## Formatação Da Fonte

A formatação da fonte atual é representada por um objeto **Font** retornado pela propriedade [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont). A classe **Font** contém uma grande variedade de propriedades de fonte possíveis em Microsoft Word.

O exemplo de código a seguir mostra como definir a formatação da fonte:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontFormatting.java" >}}

As propriedades de preenchimento agora também estão disponíveis para fontes para definir a formatação de preenchimento do texto. Permite alterar, por exemplo, a cor do primeiro plano ou a transparência do preenchimento do texto.

## Obtendo O Espaçamento Entre Linhas Da Fonte

O espaçamento entre linhas de uma fonte é a distância vertical entre as linhas de base de duas linhas consecutivas de texto. Assim, o espaçamento entre linhas inclui o espaço em branco entre as linhas, juntamente com a altura do próprio caractere.

A propriedade [LineSpacing](https://reference.aspose.com/words/java/com.aspose.words/font/#getLineSpacing) foi introduzida na classe **Font** para obter este valor como mostrado no exemplo abaixo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetFontLineSpacing-GetFontLineSpacing.java" >}}

## Fonte EmphasisMark

A classe **Font** fornece a propriedade [EmphasisMark](https://reference.aspose.com/words/java/com.aspose.words/font/#getEmphasisMark) para obter ou definir valores de enumeração EmphasisMark a serem aplicados na formatação.

O exemplo de código a seguir mostra como definir a propriedade **EphasisMark**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontEmphasisMark.java" >}}
