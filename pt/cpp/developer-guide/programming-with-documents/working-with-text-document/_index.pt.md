---
title: Trabalhando com documento de texto Em C++
second_title: Aspose.Words para C++
articleTitle: Trabalhar com documento de texto
linktitle: Trabalhar com documento de texto
description: "Avançado TXT processamento de documentos, listas, BiDi, cabeçalhos / rodapés, utilizando C++."
type: docs
weight: 430
url: /pt/cpp/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

Neste artigo, aprenderemos quais opções podem ser úteis para trabalhar com um documento de texto via Aspose.Words. Observe que esta não é uma lista completa de opções disponíveis, mas apenas um exemplo de trabalho com algumas delas.

## Adicionar Marcas Bidirecionais

Você pode usar a propriedade [AddBidiMarks](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_addbidimarks/) para especificar se deseja adicionar marcas bidirecionais antes de cada execução BiDi ao exportar em formato de texto simples. Aspose.Words insere caracteres Unicode'RIGHT-TO-LEFT MARK' (U + 200F) antes de cada execução bidirecional no texto. Esta opção corresponde à opção" Adicionar marcas bidirecionais " no diálogo de conversão de ficheiros do Word MS quando exporta para um formato de texto simples. Observe que ele aparece no diálogo apenas se qualquer um dos idiomas de edição em árabe ou hebraico for adicionado em MS palavra.

O exemplo de código a seguir mostra como usar a propriedade **AddBidiMarks**. O valor padrão desta propriedade é *false*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-AddBidiMarks.cpp" >}}

## Reconhecer Itens Da Lista Durante O Carregamento TXT

Aspose.Words pode importar item de Lista de um arquivo de texto como números de lista ou texto simples em seu modelo de objeto de Documento. A propriedade [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detectnumberingwithwhitespaces/) permite especificar como os itens de lista numerados são reconhecidos quando um documento é importado do formato de texto simples:

* Se esta opção estiver definida como *true*, os espaços em branco também serão utilizados como delimitadores de número de lista: algoritmo de reconhecimento de lista para numeração de estilo árabe (1., 1.1.2.) usa espaços em branco e símbolos de ponto (".").
* Se esta opção estiver definida como *false*, o algoritmo de reconhecimento de listas detecta parágrafos de lista, quando os números de lista terminam com símbolos de ponto, colchete direito ou Marcador (como "•", "*", "-" ou "o").

O exemplo de código a seguir mostra como usar essa propriedade:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DetectNumberingWithWhitespaces.cpp" >}}

## Como lidar com espaços à esquerda e à direita durante o carregamento TXT

Você pode controlar a maneira de lidar com espaços iniciais e finais durante o carregamento do arquivo TXT. Os espaços à esquerda poderiam ser aparados, preservados ou convertidos em travessão e os espaços à direita poderiam ser aparados ou preservados.

O exemplo de código a seguir mostra como cortar espaços à esquerda e à direita ao importar o arquivo TXT:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-HandleSpacesOptions.cpp" >}}

## Exportar cabeçalho e rodapé na saída TXT

Se pretender exportar cabeçalho e rodapé no documento de saída TXT, pode utilizar a propriedade [ExportHeadersFootersMode](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptionsbase/get_exportheadersfootersmode/). Esta propriedade especifica a forma como os cabeçalhos e rodapés são exportados para o formato de texto simples.

O exemplo de código a seguir mostra como exportar cabeçalhos e rodapés para o formato de texto simples:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-ExportHeadersFootersMode.cpp" >}}

## Recuo da lista de exportação na saída TXT

Aspose.Words introduziu a classe [TxtListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtlistindentation/) que permite especificar como os níveis de lista são recuados ao exportar para um formato de texto simples. Ao trabalhar com [TxtSaveOption](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/), a propriedade [ListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_listindentation/) é fornecida para especificar o caractere a ser usado para recuar níveis de lista e contar especificando quantos caracteres usar como recuo por um nível de lista.

O valor padrão para a propriedade character é ' \0', indicando que não há recuo. Para a propriedade count, o valor padrão é 0, o que significa que não há recuo.

### Usando O Caractere De Tabulação

O exemplo de código a seguir mostra como exportar níveis de lista usando caracteres de tabulação:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseTabCharacterPerLevelForListIndentation.cpp" >}}

### Utilização De Caracteres De Espaço

O exemplo de código a seguir mostra como exportar níveis de lista usando caracteres de espaço:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseSpaceCharacterPerLevelForListIndentation.cpp" >}}

### Utilização Da Indentação Predefinida

O exemplo de código a seguir mostra como exportar níveis de lista usando recuo padrão:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DefaultLevelForListIndentation.cpp" >}}
