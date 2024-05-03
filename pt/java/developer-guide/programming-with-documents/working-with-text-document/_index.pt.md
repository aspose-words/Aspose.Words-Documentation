---
title: Trabalhando com documento de texto em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhando com documento de texto
linktitle: Trabalhando com documento de texto
description: "Processamento avançado de documentos TXT, listas, BiDi, cabeçalhos / rodapé, usando Java."
type: docs
weight: 430
url: /pt/java/working-with-text-document/
---

Neste artigo, aprenderemos quais opções podem ser úteis para trabalhar com um documento de texto via Aspose.Words. Por favor, note que esta não é uma lista completa de opções disponíveis, mas apenas um exemplo de trabalhar com alguns deles.

## Adicionar Bidirecional Marcas

Você pode usar o [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks) propriedade para especificar se adicionar marcas bidirecionais antes de cada BiDi ser executado ao exportar em formato de texto simples. Aspose.Words insere Unicode Character 'RIGHT-TO-LEFT MARK' (U+200F) antes de cada Run bidirecional em texto. Esta opção corresponde à opção "Adicionar marcas bidirecionais" na caixa de diálogo Conversão de arquivos do MS Word quando você exporta para um formato de texto simples. Note que aparece em diálogo somente se algum dos idiomas de edição árabe ou hebraico for adicionado no MS Word.

O seguinte exemplo de código mostra como usar `TxtSaveOptions.AddBidiMarks` propriedade. O valor padrão desta propriedade é *true*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## Reconheça os itens da lista durante a carga TXT

Aspose.Words pode importar item de lista de um arquivo de texto como números de lista ou texto simples em seu modelo de objeto de documento. O [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) propriedade permite especificar como os itens da lista numeradas são reconhecidos quando um documento é importado do formato de texto simples:

* Se esta opção estiver definida *true*, whitespaces também são usados como delimitadores de número de lista: algoritmo de reconhecimento de lista para numeração de estilo árabe (1., 1.1.2.) usa ambos os espaços brancos e símbolos do ponto (".").
* Se esta opção estiver definida *false*, o algoritmo de reconhecimento de listas detecta parágrafos de lista, quando os números de lista termina com qualquer ponto, suporte direito ou símbolos de bala (como "•", "*", "-" ou "o").

O exemplo de código a seguir mostra como usar esta propriedade:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## Lidar com espaços de liderança e de reboque durante carregar TXT

Você pode controlar a maneira de lidar com espaços principais e rastreadores durante o carregamento de arquivos TXT. Os espaços principais podem ser aparados, conservados ou convertidos em espaços de recuo e rastreio podem ser aparados ou preservados.

O exemplo de código dado abaixo mostra como cortar espaços principais e rastreadores ao importar o arquivo TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## Documento de identificação Direção de Texto

Aspose.Words fornece [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) propriedade em [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) classe para detectar a direção de texto (RTL / LTR) no documento. Esta propriedade define ou recebe instruções de texto do documento fornecidas em [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/) enumeração. O valor padrão é deixado para a direita.

O exemplo de código a seguir mostra como detectar a direção de texto do documento ao importar o arquivo TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## Exportar cabeçalho e rodapé no arquivo de saída TXT

Se você quiser exportar o cabeçalho e rodapé no documento TXT de saída, você pode usar o [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode) propriedade. Esta propriedade especifica a forma como cabeçalhos e rodapés são exportados para o formato de texto simples.

O exemplo a seguir mostra como exportar cabeçalhos e rodapés para formato de texto simples:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## Indentação da lista de exportação na saída TXT

Aspose.Words introduzido [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/) classe que permite especificar como os níveis de lista são recuados ao exportar para um formato de texto simples. Ao trabalhar com [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/), o [ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation) propriedade é fornecida para especificar o caractere a ser usado para recuar níveis de lista e contar especificando quantos caracteres usar como indentação por um nível de lista.

O valor padrão para a propriedade de caracteres é '\0' indicando que não há indentação. Para a propriedade de contagem, o valor padrão é 0, o que significa não indentação.

### Usando Tab Character

O exemplo de código a seguir mostra como exportar níveis de lista usando caracteres de aba:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### Usando o personagem espacial

O exemplo a seguir mostra como exportar níveis de lista usando caracteres espaciais:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### Usando a identificação padrão

O exemplo de código a seguir mostra como exportar níveis de lista usando indentação padrão:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
