---
title: Trabalhando com fontes em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhando com fontes
linktitle: Trabalhando com fontes
description: "Formatação de fonte em detalhes usando Java."
type: docs
weight: 230
url: /pt/java/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Uma fonte é um conjunto de caracteres com um determinado tamanho, cor e design. Aspose.Words permite que você trabalhe com fontes usando várias classes relacionadas à fonte, incluindo a [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) classe.

## Formatação de fonte

A formatação da fonte atual é representada por uma **Font** objeto retornado pelo [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) propriedade. O **Font** classe contém uma grande variedade de propriedades de fonte possíveis em Microsoft Word.

O exemplo de código a seguir mostra como definir formatação de fonte:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontFormatting.java" >}}

As propriedades de preenchimento agora também estão disponíveis para as fontes definir a formatação de preenchimento do texto. Dá uma capacidade de mudar, por exemplo, a cor do primeiro plano ou a transparência do preenchimento de texto.

## Getting Font Line Spacing

O espaçamento de linha de uma fonte é a distância vertical entre as linhas de base de duas linhas consecutivas de texto. Assim, o espaçamento de linha inclui o espaço em branco entre linhas, juntamente com a altura do próprio personagem.

O [LineSpacing](https://reference.aspose.com/words/java/com.aspose.words/font/#getLineSpacing) a propriedade foi introduzida no **Font** classe para obter este valor como mostrado no exemplo abaixo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetFontLineSpacing-GetFontLineSpacing.java" >}}

## InformaÃ§Ã£o da fonteMark

O **Font** classe fornece [EmphasisMark](https://reference.aspose.com/words/java/com.aspose.words/font/#getEmphasisMark) propriedade para obter ou definir valores de enumeração EmphasisMark a ser aplicado na formatação.

O seguinte exemplo de código mostra como definir o **EphasisMark** propriedade:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontEmphasisMark.java" >}}
