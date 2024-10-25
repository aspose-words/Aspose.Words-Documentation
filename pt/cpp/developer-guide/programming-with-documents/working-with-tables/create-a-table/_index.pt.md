---
title: Como criar uma tabela em C++
second_title: Aspose.Words para C++
articleTitle: Criar uma tabela
linktitle: Criar uma tabela
description: "Diferentes maneiras de criar tabelas usando C++. Crie uma tabela em C++ para seu documento. Adicione uma tabela em C++."
type: docs
weight: 20
url: /pt/cpp/create-a-table/
---

Aspose.Words permite aos utilizadores criar tabelas num documento a partir do zero e fornece vários métodos diferentes para o fazer. Este artigo apresenta detalhes sobre como adicionar tabelas formatadas ao seu documento usando cada método, bem como uma comparação de cada método no final do artigo.

## Estilos De Tabela Predefinidos

A tabela recém-criada recebe valores padrão semelhantes aos usados em Microsoft Word:

| Propriedade Da Tabela | Predefinição em Aspose.Words |
| :- | :- |
| `Border Style` | `Single` |
| `Border Width` | 1/2 pt |
| `Border Color` | `Black` |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` | `True` |

{{% alert color="primary" %}}

Uma tabela pode ser embutida se estiver bem posicionada ou flutuante se puder ser posicionada em qualquer lugar da página. Por padrão, Aspose.Words sempre cria tabelas embutidas.

{{% /alert %}}

## Criar uma tabela com DocumentBuilder

Em Aspose.Words, os usuários podem criar uma tabela em um documento usando o [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/). O algoritmo básico para criar uma tabela é o seguinte:

1. Comece a tabela com [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/)
2. Adicione uma célula à tabela usando [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/) - isso inicia automaticamente uma nova linha
3. Opcionalmente, use a propriedade [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/) para especificar a formatação da célula
4. Insira o conteúdo da célula usando os métodos **DocumentBuilder** apropriados, como [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertImage](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertimage/) e outros
5. Repita as etapas 2-4 até que a linha esteja completa
6. Chamar [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/) para terminar a linha actual
7. Opcionalmente, use a propriedade [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/) para especificar a formatação da linha
8. Repita os passos 2-7 até que a tabela esteja completa
9. Chame [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/) para terminar de construir a tabela

{{% alert color="primary" %}}

Detalhes importantes:

- [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/) também pode ser chamado dentro de uma célula, caso em que inicia a criação de uma tabela aninhada dentro da célula.
- Depois de chamar [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/), uma nova célula é criada e qualquer conteúdo que você adicionar usando outros métodos da classe [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) será adicionado à célula atual. Para criar uma nova célula na mesma linha, chame **InsertCell** novamente.
- Se **InsertCell** for chamado imediatamente após [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/) e o final de uma linha, a tabela continuará em uma nova linha.
- O método [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/) para terminar a tabela só deve ser chamado uma vez após chamar **EndRow**. Chamar **EndTable** move o cursor da célula actual para a posição imediatamente após a tabela.

{{% /alert %}}

O processo de criação de uma tabela pode ser visto claramente na figura a seguir:

![creating-table-process](creating-table-process.jpg)

O exemplo de código a seguir mostra como criar uma tabela simples usando **DocumentBuilder** com formatação padrão:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "create-simple-table.h" >}}

O exemplo de código a seguir mostra como criar uma tabela formatada usando DocumentBuilder:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "formatted-table.h" >}}

O exemplo de código a seguir mostra como inserir uma tabela aninhada usando DocumentBuilder:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "nested-table.h" >}}

## Criar uma tabela através de DOM (Document Object Model)

Você pode inserir tabelas diretamente no DOM Adicionando um novo nó [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) em uma posição específica.

Observe que imediatamente após a criação do nó da tabela, a própria tabela estará completamente vazia, ou seja, ainda não contém linhas e células. Para inserir linhas e células em uma tabela, adicione os nós filhos [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) e [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) apropriados ao DOM.

{{% alert color="primary" %}}

Este método de criação de uma tabela usa os mesmos padrões de tabela que ao usar o **DocumentBuilder**.

{{% /alert %}}

O exemplo de código a seguir mostra como construir uma nova tabela do zero adicionando os nós filhos apropriados à árvore de documentos:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-directly.h" >}}

## Criar uma tabela a partir de HTML

Aspose.Words suporta a inserção de conteúdo em um documento a partir de uma fonte HTML usando o método [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/). A entrada pode ser uma página completa HTML ou apenas um trecho parcial.

Usando o método **InsertHtml**, os usuários podem inserir tabelas no documento por meio de tags de tabela como `<table>`, `<tr>`, `<td>`.

O exemplo de código a seguir mostra como inserir uma tabela em um documento a partir de uma string contendo tags HTML:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-from-html.h" >}}

## Inserir uma cópia de uma tabela existente

Muitas vezes, é necessário criar uma tabela com base numa tabela já existente num documento. A maneira mais fácil de duplicar uma tabela mantendo toda a formatação é clonar o nó da tabela usando o método [Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/).

A mesma técnica pode ser usada para adicionar cópias de uma linha ou célula existente a uma tabela.

O exemplo de código a seguir mostra como duplicar uma tabela usando construtores de nós:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-complete-table.h" >}}

O exemplo de código a seguir mostra como clonar a última linha de uma tabela e anexá-la à tabela:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-last-row.h" >}}

Se você estiver olhando para a criação de tabelas em um documento que crescem dinamicamente com cada registro de sua fonte de dados, em seguida, o método acima não é aconselhável. Em vez disso, a saída desejada é mais facilmente alcançada usando Mail merge com regiões. Você pode aprender mais sobre essa técnica no [Mail Merge Com regiões](/words/cpp/types-of-mail-merge-operations/) secção.

## Comparar formas de criar uma tabela

Aspose.Words fornece vários métodos para criar novas tabelas num documento. Cada método tem as suas próprias vantagens e desvantagens, pelo que a escolha de qual utilizar depende frequentemente da situação específica.

Vamos dar uma olhada mais de perto nessas formas de criar tabelas e comparar seus prós e contras:

| Método | Vantagens | Desvantagens |
| :- | :- | :- |
| `DocumentBuilder` | O método padrão para a inserção de tabelas e outros conteúdos de documentos | Às vezes é difícil criar muitas variedades de tabelas ao mesmo tempo com a mesma instância do construtor |
| Via DOM | Se encaixa melhor com o código circundante que cria e insere nós diretamente no DOM sem usar um **DocumentBuilder** | A tabela é criada "vazia": antes de executar a maioria das operações, você deve chamar [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words.tables/table/ensureminimum/) para criar quaisquer nós filhos ausentes |
| Da HTML | Pode criar uma nova tabela a partir da fonte HTML usando tags como `<table>`, `<tr>`, `<td>` | Nem todos os formatos de tabela Microsoft Word possíveis podem ser aplicados a HTML |
| Clonar uma tabela existente | Você pode criar uma cópia de uma tabela existente, mantendo toda a formatação de linha e célula | Os nós filhos apropriados devem ser removidos antes que a tabela esteja pronta para uso |
