---
title: Trabalhar com estilos em C++
second_title: Aspose.Words para C++
articleTitle: Trabalhar com estilos
linktitle: Trabalhar com estilos
description: "Recursos de formatação Microsoft Word aprimorados, trabalhando com estilos e temas usando C++."
type: docs
weight: 110
url: /pt/cpp/working-with-styles-and-themes/
timestamp: 2024-01-30-16-22-34
---

A classe [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) é usada para gerenciar configurações internas e aplicar configurações definidas pelo usuário a estilos.

## Como extrair conteúdo com base em estilos

Em um nível simples, recuperar o conteúdo com base em estilos de um documento do Word pode ser útil para identificar, listar e contar parágrafos e execuções de texto formatados com um estilo específico. Por exemplo, pode ser necessário identificar tipos específicos de conteúdo no documento, como exemplos, títulos, referências, palavras-chave, nomes de figuras e estudos de caso.

Para levar isso alguns passos adiante, isso também pode ser usado para alavancar a estrutura do documento, definida pelos estilos que ele usa, para reutilizar o documento para outra saída, como HTML. Na verdade, é assim que a documentação Aspose é construída, colocando Aspose.Words à prova. Uma ferramenta criada usando Aspose.Words pega os documentos do Word de origem e os divide em tópicos em determinados níveis de cabeçalho. Um arquivo XML é produzido usando Aspose.Words que é usado para construir a árvore de navegação que você pode ver à esquerda. E então Aspose.Words converte cada tópico em HTML.

A solução para recuperar texto formatado com estilos específicos em um documento do Word é normalmente econômica e direta usando Aspose.Words.

### A Solução

Para ilustrar a facilidade com que Aspose.Words lida com a recuperação de conteúdo com base em estilos, vejamos um exemplo. Neste exemplo, vamos recuperar texto formatado com um estilo de parágrafo específico e um estilo de caractere de um documento do Word de amostra. A um nível elevado, isso envolverá:
- Abrindo um documento do Word usando a classe `Document`.
- Obtendo coleções de todos os parágrafos e todas as execuções no documento.
- Seleccionar apenas os parágrafos e execuções necessários. Especificamente, recuperaremos o texto formatado com o estilo de parágrafo' Título 1 'e o estilo de caractere' ênfase intensa ' deste exemplo de Documento do Word.

![working-with-styles-aspose-words-cpp-1](working-with-styles-1.png)


Neste documento de exemplo, o texto formatado com o estilo de parágrafo 'Título 1' é 'inserir guia', 'Estilos Rápidos' e 'tema', e o texto formatado com o estilo de caractere 'ênfase intensa' são as várias instâncias de texto azul, em itálico e em negrito, como 'galerias' e 'aparência geral'.

### O Código

A implementação de uma consulta baseada em estilo é bastante simples no modelo de objeto de Documento Aspose.Words, pois simplesmente usa ferramentas que já estão em vigor. Dois métodos de classe são implementados para esta solução: # **ParagraphsByStyleName** - este método recupera uma matriz dos parágrafos no documento que têm um nome de estilo específico.# **RunsByStyleName** - este método recupera uma matriz dessas execuções no documento que têm um nome de estilo específico. Ambos os métodos são muito semelhantes, sendo as únicas diferenças os tipos de nós e a representação das informações de estilo nos nós de parágrafo e de execução. Aqui está uma implementação de ParagraphsByStyleName. Abaixo exemplo encontrar todos os parágrafos formatados com o estilo especificado.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cpp" >}}

{{% alert color="primary" %}}

Esta implementação também usa o método `Document.GetChildNodes` da classe `Document`, que retorna uma coleção de todos os nós com o tipo especificado, que neste caso em todos os parágrafos.

Observe que o segundo parâmetro do método **Document.GetChildNodes** é definido como true. Isso força o método **Document.GetChildNodes** a selecionar recursivamente de todos os nós filhos, em vez de selecionar apenas os filhos imediatos.

{{% /alert %}}

Também vale a pena salientar que a coleção de parágrafos não cria uma sobrecarga imediata porque os parágrafos são carregados nesta coleção apenas quando você acessa itens neles. Então, tudo o que você precisa fazer é percorrer a coleção, usando o padrão para cada operador e adicionar parágrafos que tenham o estilo especificado à matriz paragraphsWithStyle. O nome do estilo `Paragraph` pode ser encontrado no estilo. Propriedade Name do objecto `Paragraph.ParagraphFormat`. A implementação de RunsByStyleName é quase a mesma, embora obviamente estejamos usando `NodeType.Run` para recuperar nós executados. A propriedade `Font.Style` de um objeto `Run` é usada para acessar informações de estilo nos nós **Run**. O exemplo below code encontra todas as execuções formatadas com o estilo especificado.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cpp" >}}


Quando ambas as consultas são implementadas, tudo o que você precisa fazer é passar um objeto document e especificar os nomes de estilo do conteúdo que deseja recuperar: abaixo exemplo executar consultas e exibir resultados. Você pode baixar o arquivo de modelo deste exemplo aqui.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cpp" >}}

#### Resultado Final

Quando tudo estiver pronto, a execução da amostra exibirá a seguinte saída:

![working-with-styles-aspose-words-cpp-2](working-with-styles-2.png)


Como você pode ver, este é um exemplo muito simples, mostrando o número e o texto dos parágrafos coletados e é executado no documento do Word de amostra.

## Como Inserir e trabalhar com o campo Índice

Muitas vezes, você trabalhará com documentos contendo um índice (TOC). Usando Aspose.Words você pode inserir seu próprio índice ou reconstruir completamente o índice existente no documento usando apenas algumas linhas de código. Este artigo descreve como trabalhar com o campo índice e demonstra:

- Como inserir um novo `TOC`
- Actualizar TOCs novo ou existente no documento.
- Especifique as opções para controlar a formatação e a estrutura geral do TOC.
- Como modificar os estilos e a aparência do Índice.
- Como remover um campo `TOC` inteiro juntamente com todas as entradas do documento.

### Inserir TC Campos

Muitas vezes, uma linha de texto específica é designada para o `TOC` e é marcada com um campo `TC`. A maneira mais fácil de fazer isso em MS Word é destacar o texto e pressionar *ALT+SHIFT+O*. Isso cria automaticamente um campo `TC` usando o texto selecionado. A mesma técnica pode ser realizada através do Código. O código abaixo irá encontrar o texto correspondente à entrada e inserir um campo `TC` na mesma posição que o texto. O código baseia-se na mesma técnica utilizada no artigo. O exemplo abaixo mostra como localizar e inserir um campo `TC` no texto de um documento.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-InsertTCFieldHandler.cpp" >}}

### Modificar um índice

#### Alterar a formatação dos estilos

A formatação das entradas no `TOC` não usa os estilos originais das entradas marcadas, em vez disso, cada nível é formatado usando um estilo `TOC` equivalente. Por exemplo, o primeiro nível no `TOC` é formatado com o estilo **TOC1**, o segundo nível formatado com o estilo **TOC2** e assim por diante. Isso significa que, para alterar a aparência do `TOC`, esses estilos devem ser modificados. Em Aspose.Words, esses estilos são representados pelo locale independent `StyleIdentifier.TOC1` até `StyleIdentifier.TOC9` e podem ser recuperados da coleção `Document.Styles` usando esses identificadores. Uma vez recuperado o estilo apropriado do documento, a formatação deste estilo pode ser modificada. Quaisquer alterações a estes estilos serão automaticamente refletidas no TOCs do documento. O exemplo below code altera uma propriedade de formatação usada no estilo de primeiro nível `TOC`.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cpp" >}}

Também é útil notar que qualquer formatação direta de um parágrafo (definido no próprio parágrafo e não no estilo) marcado para ser incluído o `TOC` será copiado na entrada no TOC. Por exemplo, se o estilo Título 1 for usado para marcar o conteúdo para o `TOC` e este estilo tiver formatação em negrito, enquanto o parágrafo também tiver formatação em itálico aplicada diretamente a ele. A entrada `TOC` resultante não será em negrito, pois faz parte da formatação de estilo, mas será em itálico, pois está formatada diretamente no parágrafo. Também pode controlar a formatação dos separadores utilizados entre cada entrada e o número da página. Por padrão, trata-se de uma linha pontilhada que é espalhada até a numeração da página usando um caractere de tabulação e uma parada de tabulação direita alinhada perto da margem direita.

Usando a classe `Style` recuperada para o nível `TOC` específico que você deseja modificar, Você também pode modificar como elas aparecem no documento. Para alterar a forma como isso aparece, em primeiro lugar, `Style.ParagraphFormat` deve ser chamado para recuperar a formatação do parágrafo para o estilo. A partir disso, as paradas de tabulação podem ser recuperadas chamando `ParagraphFormat.TabStops` e a parada de tabulação apropriada modificada. Usando esta mesma técnica, a guia em si pode ser movida ou removida completamente. O exemplo below code mostra como modificar a posição do tab stop direito em `TOC` parágrafos relacionados. Você pode baixar o arquivo de modelo deste exemplo aqui.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cpp" >}}

### Remover um índice do documento

Um índice pode ser removido do documento removendo todos os nós encontrados entre os nós `FieldStart` e FieldEnd do campo `TOC`. O código abaixo demonstra isso. A remoção do campo `TOC` é mais simples do que um campo normal, pois não acompanhamos os campos aninhados. Em vez disso, verificamos que o nó `FieldEnd` é do tipo `FieldType.FieldTOC`, o que significa que encontramos o fim do TOC atual. Esta técnica pode ser usada neste caso sem se preocupar com quaisquer campos aninhados, pois podemos assumir que qualquer documento devidamente formado não terá um campo `TOC` Totalmente aninhado dentro de outro campo `TOC`. Em primeiro lugar, os nós `FieldStart` de cada `TOC` são recolhidos e armazenados. O `TOC` especificado é então enumerado para que todos os nós dentro do campo sejam visitados e armazenados. Os nós são então removidos do documento. O exemplo below code demonstra como remover um `TOC` especificado de um documento. Você pode baixar o arquivo de modelo deste exemplo aqui.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cpp" >}}

## Inserir Separador de estilo para colocar diferentes estilos de parágrafo

O separador de estilos pode ser adicionado ao final de um parágrafo utilizando o atalho de teclado Ctrl + Alt + Enter na palavra MS. Este recurso permite dois estilos de parágrafo diferentes usados em um parágrafo impresso lógico. Se pretender que algum texto do início de um título específico apareça num Sumário, mas não pretender que o título inteiro no sumário, pode utilizar esta funcionalidade. O exemplo below code mostra como inserir um separador de estilo para colocar diferentes estilos de parágrafo.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Copiar todos os estilos do modelo

Há casos em que você deseja copiar todos os estilos de um documento para outro. Você pode usar o método `Document.CopyStylesFromTemplate` para copiar estilos do modelo especificado para um documento. Quando os estilos são copiados de um modelo para um documento, os estilos com nomes semelhantes no documento são redefinidos para corresponder às descrições de estilo no modelo. Os estilos únicos do modelo são copiados para o documento. Os estilos únicos no documento permanecem intactos. O exemplo below code mostra como copiar estilos de um documento para outro.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cpp" >}}
