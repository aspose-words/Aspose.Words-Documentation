---
title: Introdução e criação de tabelas
second_title: Aspose.Words para Python via .NET
articleTitle: Introdução e criação de tabelas
linktitle: Introdução e criação de tabelas
description: "Crie e gerencie tabelas em um documento usando Python."
type: docs
weight: 10
url: /pt/python-net/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words permite aos usuários criar tabelas em um documento do zero e fornece vários métodos diferentes para fazer isso. Este artigo apresenta detalhes sobre como adicionar tabelas formatadas ao seu documento usando cada método, bem como uma comparação de cada método no final do artigo.

## Estilos de tabela padrão

A tabela recém-criada recebe valores padrão semelhantes aos usados em Microsoft Word:

| Propriedade da tabela | Padrão em Aspose.Words |
|  :-  |  :-  |
| `Border Style` |  `Single`  |
| `Border Width` | `1/2 pt` |
| `Border Color` |  `Black`  |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` |  `True`  |
{{% alert color="primary" %}}

Uma tabela pode ser embutida se estiver bem posicionada ou flutuante se puder ser posicionada em qualquer lugar da página. Por padrão, o Aspose.Words sempre cria tabelas embutidas.

{{% /alert %}}

## Crie uma tabela com DocumentBuilder

No Aspose.Words, os usuários podem criar uma tabela em um documento usando o [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/). O algoritmo básico para criar uma tabela é o seguinte:

1. Inicie a tabela com [StartTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_table/)
2. Adicione uma célula à tabela usando [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/) – isso inicia automaticamente uma nova linha
3. Opcionalmente, use a propriedade [CellFormat](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) para especificar a formatação da célula
4. Insira o conteúdo da célula usando os métodos **DocumentBuilder** apropriados, como [Writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/#str), [InsertImage](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/#str) e outros
5. Repita as etapas 2 a 4 até que a linha esteja completa
6. Chame [EndRow](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_row/) para encerrar a linha atual
7. Opcionalmente, use a propriedade [RowFormat](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) para especificar a formatação de linha
8. Repita as etapas 2 a 7 até que a tabela esteja completa
9. Ligue para o [EndTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_table/) para terminar de construir a mesa

{{% alert color="primary" %}}

Detalhes importantes:

- [StartTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_table/) também pode ser chamado dentro de uma célula, neste caso inicia a criação de uma tabela aninhada dentro da célula.
- Após chamar [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/), uma nova célula é criada, e qualquer conteúdo adicionado usando outros métodos da classe [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) será adicionado à célula atual. Para criar uma nova célula na mesma linha, chame **InsertCell** novamente.
- Se **InsertCell** for chamado imediatamente após [EndRow](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_row/) e no final de uma linha, a tabela continuará em uma nova linha.
- O método [EndTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_table/) para finalizar a tabela só deve ser chamado uma vez após a chamada do **EndRow**. Chamar **EndTable** move o cursor da célula atual para a posição imediatamente após a tabela.

{{% /alert %}}

O processo de criação de uma tabela pode ser visto claramente na imagem a seguir:

<img src="/words/python-net/create-a-table/creating-table-process.jpg" alt="processo de criação de tabela" style="zoom:50%;" />

O exemplo de código a seguir mostra como criar uma tabela simples usando **DocumentBuilder** com formatação padrão:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "create-simple-table.py" >}}

O exemplo de código a seguir mostra como criar uma tabela formatada usando DocumentBuilder:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "formatted-table.py" >}}

O exemplo de código a seguir mostra como inserir uma tabela aninhada usando DocumentBuilder:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "nested-table.py" >}}

## Crie uma tabela via DOM (Document Object Model)

Você pode inserir tabelas diretamente no DOM adicionando um novo nó [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) em uma posição específica.

Observe que imediatamente após a criação do nó da tabela, a própria tabela estará completamente vazia, ou seja, ainda não contém linhas e células. Para inserir linhas e células em uma tabela, adicione os nós filhos [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) e [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) apropriados ao DOM.

{{% alert color="primary" %}}

Este método de criação de uma tabela usa os mesmos padrões de tabela do **DocumentBuilder**.

{{% /alert %}}

O exemplo de código a seguir mostra como construir uma nova tabela do zero adicionando os nós filhos apropriados à árvore do documento:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "insert-table-directly.py" >}}

##Create uma tabela de HTML

Aspose.Words suporta a inserção de conteúdo em um documento a partir de uma fonte HTML usando o método [InsertHtml](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/). A entrada pode ser uma página HTML completa ou apenas um trecho parcial.

Usando o método **InsertHtml**, os usuários podem inserir tabelas no documento por meio de tags de tabela como `<table>`, `<tr>`, `<td>`.

O exemplo de código a seguir mostra como inserir uma tabela em um documento a partir de uma string contendo tags HTML:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "insert-table-from-html.py" >}}

## Insira uma cópia de uma tabela existente

Muitas vezes você precisa criar uma tabela com base em uma tabela já existente em um documento. A maneira mais fácil de duplicar uma tabela mantendo toda a formatação é clonar o nó Tabela usando o método [Clone](https://reference.aspose.com/words/python-net/aspose.words/node/clone/).

A mesma técnica pode ser usada para adicionar cópias de uma linha ou célula existente a uma tabela.

O exemplo de código a seguir mostra como duplicar uma tabela usando construtores de nó:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "clone-complete-table.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

O exemplo de código a seguir mostra como clonar a última linha de uma tabela e anexá-la à tabela:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "clone-last-row.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Se você deseja criar tabelas em um documento que cresçam dinamicamente com cada registro de sua fonte de dados, o método acima não é recomendado. Em vez disso, o resultado desejado é alcançado mais facilmente usando Mail merge com regiões.

## Compare maneiras de criar uma tabela

Aspose.Words fornece vários métodos para criar novas tabelas em um documento. Cada método tem suas próprias vantagens e desvantagens, portanto a escolha de qual usar geralmente depende da situação específica.

Vamos dar uma olhada nessas formas de criar tabelas e comparar seus prós e contras:

|  Método | Vantagens |  Desvantagens |
|  :-  |  :-  |  :-  |
| Através do DocumentBuilder | O método padrão para inserir tabelas e outros conteúdos de documentos | Às vezes é difícil criar muitas variedades de tabelas ao mesmo tempo com a mesma instância do construtor |
| Via DOM |  Adapta-se melhor ao código circundante que cria e insere nós diretamente no DOM sem usar um **DocumentBuilder** | A tabela é criada "vazia": antes de executar a maioria das operações, você deve chamar [EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words.tables/table/ensure_minimum/) para criar quaisquer nós filhos ausentes |
| Do HTML | Pode criar uma nova tabela a partir de fonte HTML usando tags como `<table>`, `<tr>`, `<td>` | Nem todos os formatos de tabela Microsoft Word possíveis podem ser aplicados ao HTML |
| Clonando uma tabela existente | Você pode criar uma cópia de uma tabela existente, mantendo toda a formatação de linhas e células | Os nós filhos apropriados devem ser removidos antes que a tabela esteja pronta para uso |
