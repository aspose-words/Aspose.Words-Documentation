---
title: Trabalhando com documento de texto em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhar com documento de texto
linktitle: Trabalhar com documento de texto
description: "Avançado TXT processamento de documentos, listas, BiDi, cabeçalhos / rodapés, utilizando Java."
type: docs
weight: 430
url: /pt/java/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

Neste artigo, aprenderemos quais opções podem ser úteis para trabalhar com um documento de texto via Aspose.Words. Observe que esta não é uma lista completa de opções disponíveis, mas apenas um exemplo de trabalho com algumas delas.

## Adicionar Marcas Bidirecionais

Você pode usar a propriedade [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks) para especificar se deseja adicionar marcas bidirecionais antes de cada execução BiDi ao exportar em formato de texto simples. Aspose.Words insere caracteres Unicode'RIGHT-TO-LEFT MARK' (U + 200F) antes de cada execução bidirecional em texto. Esta opção corresponde à opção "Adicionar marcas bidirecionais" na caixa de diálogo de conversão de ficheiros do Word MS quando exporta para um formato de texto simples. Note que só aparece na caixa de diálogo se alguma das línguas de edição árabe ou hebraica for adicionada em MS palavra.

O exemplo de código a seguir mostra como usar a propriedade `TxtSaveOptions.AddBidiMarks`. O valor padrão desta propriedade é *true*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## Reconhecer Itens Da Lista Durante O Carregamento TXT

Aspose.Words pode importar item de Lista de um arquivo de texto como números de lista ou texto simples em seu modelo de objeto de Documento. A propriedade [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) permite especificar como os itens de lista numerados são reconhecidos quando um documento é importado do formato de texto simples:

* Se esta opção estiver definida como *true*, os espaços em branco também serão utilizados como delimitadores de número de lista: algoritmo de reconhecimento de lista para numeração de estilo árabe (1., 1.1.2.) usa espaços em branco e símbolos de ponto (".").
* Se esta opção estiver definida como *false*, o algoritmo de reconhecimento de listas detecta parágrafos de lista, quando os números de lista terminam com símbolos de ponto, colchete direito ou Marcador (como "•", "*", "-" ou "o").

O exemplo de código a seguir mostra como usar essa propriedade:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## Manuseie os espaços à esquerda e à direita durante o carregamento TXT

Você pode controlar a maneira de lidar com espaços iniciais e finais durante o carregamento de arquivos TXT. Os espaços à esquerda poderiam ser aparados, preservados ou convertidos em travessão e os espaços à direita poderiam ser aparados ou preservados.

O exemplo de código dado abaixo mostra como cortar espaços à esquerda e à direita ao importar o arquivo TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## Detectar A Direção Do Texto Do Documento

Aspose.Words fornece a propriedade [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) na classe [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) para detectar a direção do texto (RTL / LTR) no documento. Esta propriedade define ou obtém instruções de texto do documento fornecidas na enumeração [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/). O valor predefinido é da esquerda para a direita.

O exemplo de código a seguir mostra como detectar a direção do texto do documento ao importar o arquivo TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## Exportar cabeçalho e Rodapé no ficheiro de saída TXT

Se pretender exportar o cabeçalho e o rodapé no documento de saída TXT, pode utilizar a propriedade [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode). Esta propriedade especifica a forma como os cabeçalhos e rodapés são exportados para o formato de texto simples.

O exemplo de código a seguir mostra como exportar cabeçalhos e rodapés para o formato de texto simples:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## Recuo da lista de exportação na saída TXT

Aspose.Words introduziu a classe [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/) que permite especificar como os níveis de lista são recuados ao exportar para um formato de texto simples. Ao trabalhar com [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/), a propriedade [ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation) é fornecida para especificar o caractere a ser usado para recuar níveis de lista e contar especificando quantos caracteres usar como recuo por um nível de lista.

O valor padrão para a propriedade character é '\0', indicando que não há recuo. Para a propriedade count, o valor padrão é 0, o que significa que não há recuo.

### Usando O Caractere De Tabulação

O exemplo de código a seguir mostra como exportar níveis de lista usando caracteres de tabulação:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### Utilização De Caracteres De Espaço

O exemplo de código a seguir mostra como exportar níveis de lista usando caracteres de espaço:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### Utilização Da Indentação Predefinida

O exemplo de código a seguir mostra como exportar níveis de lista usando recuo padrão:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
