---
title: Como Criar uma Tabela em Java
second_title: Aspose.Words para Java
articleTitle: Criar uma tabela
linktitle: Criar uma tabela
description: "Diferentes maneiras de criar tabelas em seu documento usando Java."
type: docs
weight: 20
url: /pt/java/create-a-table/
---

Aspose.Words permite aos usuários criar tabelas em um documento do zero e fornece vários métodos diferentes para fazê-lo. Este artigo apresenta detalhes sobre como adicionar tabelas formatadas ao seu documento usando cada método, bem como uma comparação de cada método no final do artigo.

## Estilos de tabela padrão

A tabela recém-criada é dada valores padrão semelhantes aos usados em Microsoft Word:

| Propriedade da tabela | Padrão em Aspose.Words |
|  :-  |  :-  |
| `Border Style` |  `Single`  |
| `Border Width` | `1/2 pt` |
| Cor de fronteira |  `Black`  |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` |  `True`  |
{{% alert color="primary" %}}

Uma tabela pode ser inline se estiver bem posicionada ou flutuante se puder ser posicionada em qualquer lugar da página. Por padrão, Aspose.Words sempre cria tabelas inline.

{{% /alert %}}

## Criar uma tabela com DocumentBuilder

Em Aspose.Words, os usuários podem criar uma tabela em um documento usando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). O algoritmo básico para criar uma tabela é o seguinte:

1. Comece a tabela com [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)
2. Adicionar uma célula à tabela usando [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) – isso inicia automaticamente uma nova linha
3. Opcionalmente, use o [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) propriedade para especificar a formatação da célula
4. Insira o conteúdo da célula usando o apropriado **DocumentBuilder** métodos como [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte), e outros
5. Repita os passos 2-4 até que a linha esteja completa
6. Chamada [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) para terminar a linha atual
7. Opcionalmente, use o [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) propriedade para especificar formatação de linha
8. Repita os passos 2-7 até que a tabela esteja completa
9. Chamada [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) para terminar a construção da mesa

{{% alert color="primary" %}}

Detalhes importantes:

- Não. [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) também pode ser chamado dentro de uma célula, em que caso ele começa a criação de uma tabela aninhada dentro da célula.
- Depois de ligar [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell), uma nova célula é criada, e qualquer conteúdo que você adicionar usando outros métodos do [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) a classe será adicionada à célula atual. Para criar uma nova célula na mesma linha, ligue **InsertCell** outra vez.
- Se **InsertCell** é chamado imediatamente após [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) e o fim de uma linha, a tabela continuará em uma nova linha.
- O [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) método para terminar a tabela só deve ser chamado uma vez depois de chamar **EndRow**. Chamadas **EndTable** move o cursor da célula atual para a posição imediatamente após a tabela.

{{% /alert %}}

O processo de criação de uma tabela pode ser claramente visto na seguinte imagem:

![creating-table-process](/words/java/create-a-table/creating-table-process.jpg)

O exemplo de código a seguir mostra como criar uma tabela simples usando **DocumentBuilder** com formatação padrão:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

O exemplo a seguir mostra como criar uma tabela formatada usando o DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

O exemplo a seguir mostra como inserir uma tabela aninhada usando o DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## Criar uma tabela via DOM (Document Object Model)

Você pode inserir tabelas diretamente no DOM adicionando um novo [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) nó em uma posição específica.

Por favor, note que imediatamente após a criação do nó da tabela, a tabela em si estará completamente vazia, ou seja, ainda não contém linhas e células. Para inserir linhas e células em uma tabela, adicione o apropriado [Row](https://reference.aspose.com/words/java/com.aspose.words/run/) e [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) nós da criança para o DOM.

{{% alert color="primary" %}}

Este método de criação de uma tabela usa o mesmo padrão de tabela como ao usar o **DocumentBuilder**.

{{% /alert %}}

O exemplo de código a seguir mostra como construir uma nova tabela do zero adicionando os nós da criança apropriados à árvore do documento:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## Criar uma tabela de HTML

Aspose.Words suporta inserir conteúdo em um documento de uma fonte HTML usando o [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) método. A entrada pode ser uma página HTML completa ou apenas um trecho parcial.

Usando isto **InsertHtml** método, os usuários podem inserir tabelas no documento através de tags de tabela como `<table>`, `<tr>`, `<td>`.

O exemplo de código a seguir mostra como inserir uma tabela em um documento de uma string contendo tags HTML:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## Insira uma cópia de uma tabela existente

Há muitas vezes quando você precisa criar uma tabela com base em uma tabela já existente em um documento. A maneira mais fácil de duplicar uma tabela mantendo toda a formatação é clonar o nó Tabela usando o [deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) método.

A mesma técnica pode ser usada para adicionar cópias de uma linha ou célula existente a uma tabela.

O exemplo de código a seguir mostra como duplicar uma tabela usando construtores de nó:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

O exemplo de código a seguir mostra como clonar a última linha de uma tabela e anexá-la à tabela:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Se você está olhando para a criação de tabelas em um documento que cresce dinamicamente com cada registro de sua fonte de dados, então o método acima não é recomendado. Em vez disso, a saída desejada é mais facilmente alcançada usando Mail merge com regiões. Você pode aprender mais sobre esta técnica na [Mail Merge com regiões](/words/java/types-of-mail-merge-operations/) Secção.

## Compare maneiras de criar uma tabela

Aspose.Words fornece vários métodos para criar novas tabelas em um documento. Cada método tem suas próprias vantagens e desvantagens, de modo que a escolha de que usar muitas vezes depende da situação específica.

Vamos dar uma olhada mais estreita nessas formas de criar tabelas e comparar seus prós e contras:

|  Método | Vantagens |  Desvantagens |
|  :-  |  :-  |  :-  |
| Viajando `DocumentBuilder` | O método padrão para inserir tabelas e outros conteúdos de documentos | Às vezes difícil criar muitas variedades de tabelas ao mesmo tempo com a mesma instância do construtor |
| Viajando DOM |  Se encaixa melhor com o código circundante que cria e insere nós diretamente no DOM sem usar um **DocumentBuilder** | A tabela é criada "vazio": antes de executar a maioria das operações, você deve chamar [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum) para criar quaisquer nós de criança ausentes |
| De HTML | Pode criar uma nova tabela de origem HTML usando tags como `<table>`, `<tr>`, `<td>` | Nem tudo é possível Microsoft Word formatos de tabela podem ser aplicados em HTML |
| Clonagem de uma tabela existente | Você pode criar uma cópia de uma tabela existente, mantendo toda a formatação da linha e da célula | Os nós de criança apropriados devem ser removidos antes que a tabela esteja pronta para uso |
