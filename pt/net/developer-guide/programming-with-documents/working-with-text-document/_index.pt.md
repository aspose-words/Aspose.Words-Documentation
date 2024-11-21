---
title: Trabalhando com documento de texto em C#
second_title: Aspose.Words para .NET
articleTitle: Trabalhando com documento de texto
linktitle: Trabalhando com documento de texto
description: "Processamento avançado de documentos TXT, listas, BiDi, cabeçalhos/rodapés, usando C#."
type: docs
weight: 430
url: /pt/net/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

Neste artigo aprenderemos quais opções podem ser úteis para trabalhar com um documento de texto via Aspose.Words. Observe que esta não é uma lista completa das opções disponíveis, mas apenas um exemplo de como trabalhar com algumas delas.

## Adicionar marcas bidirecionais

Você pode usar a propriedade [AddBidiMarks](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/addbidimarks/) para especificar se deseja adicionar marcas bidirecionais antes de cada execução BiDi ao exportar em formato de texto simples. Aspose.Words insere o caractere Unicode 'MARCA DA DIREITA PARA A ESQUERDA' (U + 200F) antes de cada execução bidirecional no texto. Esta opção corresponde à opção "Adicionar marcas bidirecionais" na caixa de diálogo Conversão de arquivo do MS Word quando você exporta para um formato de texto simples. Observe que ele aparece na caixa de diálogo apenas se algum dos idiomas de edição árabe ou hebraico for adicionado ao MS Word.

O exemplo de código a seguir mostra como usar a propriedade **AddBidiMarks**. O valor padrão desta propriedade é *false*:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-AddBidiMarks.cs" >}}

## Reconhecer itens da lista durante o carregamento do TXT

Aspose.Words pode importar itens de lista de um arquivo de texto como números de lista ou texto simples em seu modelo de objeto de documento. A propriedade [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detectnumberingwithwhitespaces/) permite especificar como os itens da lista numerada são reconhecidos quando um documento é importado do formato de texto simples:

* Se esta opção estiver definida como *true*, os espaços em branco também serão usados como delimitadores de número de lista: o algoritmo de reconhecimento de lista para numeração em estilo árabe (1., 1.1.2.) usa espaços em branco e símbolos de ponto (".").

* Se esta opção estiver definida como *false*, o algoritmo de reconhecimento de listas detecta parágrafos de lista, quando os números da lista terminam com ponto, colchete direito ou símbolos de marcador (como "•", "*", "-" ou "o").

O exemplo de código a seguir mostra como usar essa propriedade:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DetectNumberingWithWhitespaces.cs" >}}

## Lidar com espaços iniciais e finais durante o carregamento TXT

Você pode controlar a forma de lidar com espaços iniciais e finais durante o carregamento do arquivo TXT. Os espaços iniciais podem ser aparados, preservados ou convertidos em recuo e os espaços finais podem ser aparados ou preservados.

O exemplo de código a seguir mostra como cortar espaços iniciais e finais ao importar um arquivo TXT:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-HandleSpacesOptions.cs" >}}

## Detectar a direção do texto do documento

Aspose.Words fornece a propriedade [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/documentdirection/) na classe [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) para detectar a direção do texto (RTL/LTR) no documento. Esta propriedade define ou obtém instruções de texto do documento fornecidas na enumeração [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/documentdirection/). O valor padrão é deixado para *right*.

O exemplo de código a seguir mostra como detectar a direção do texto do documento ao importar o arquivo TXT:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DocumentTextDirection.cs" >}}

## Exportar cabeçalho e rodapé na saída TXT

Se desejar exportar cabeçalho e rodapé no documento TXT de saída, você pode usar a propriedade [ExportHeadersFootersMode](https://reference.aspose.com/words/net/aspose.words.saving/exportheadersfootersmode/). Esta propriedade especifica a forma como os cabeçalhos e rodapés são exportados para o formato de texto simples.

O exemplo de código a seguir mostra como exportar cabeçalhos e rodapés para formato de texto simples:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-ExportHeadersFootersMode.cs" >}}

## Exportar recuo da lista na saída TXT

Aspose.Words introduziu a classe [TxtListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtlistindentation/) que permite especificar como os níveis da lista são recuados durante a exportação para um formato de texto simples. Ao trabalhar com [TxtSaveOption](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/), a propriedade [ListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/listindentation/) é fornecida para especificar o caractere a ser usado para recuar níveis de lista e contar especificando quantos caracteres usar como recuo por nível de lista.

O valor padrão para propriedade de caractere é '\0' indicando que não há recuo. Para a propriedade count, o valor padrão é 0, o que significa que não há recuo.

### Usando caractere de tabulação

O exemplo de código a seguir mostra como exportar níveis de lista usando caracteres de tabulação:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseTabCharacterPerLevelForListIndentation.cs" >}}

### Usando caractere espacial

O exemplo de código a seguir mostra como exportar níveis de lista usando caracteres de espaço:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseSpaceCharacterPerLevelForListIndentation.cs" >}}

### Usando recuo padrão

O exemplo de código a seguir mostra como exportar níveis de lista usando recuo padrão:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DefaultLevelForListIndentation.cs" >}}
