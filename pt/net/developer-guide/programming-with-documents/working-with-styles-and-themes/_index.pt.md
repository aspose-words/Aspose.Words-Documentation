---
title: Trabalhando com estilos e temas em C#
second_title: Aspose.Words para .NET
articleTitle: Trabalhando com estilos e temas
linktitle: Trabalhando com estilos e temas
description: "Recursos avançados de formatação Microsoft Word, trabalhando com estilos e temas usando C#."
type: docs
weight: 110
url: /pt/net/working-with-styles-and-themes/
timestamp: 2024-10-24-11-44-28
---

A classe [StyleCollection](https://reference.aspose.com/words/net/aspose.words/stylecollection/) é usada para gerenciar configurações integradas e aplicar configurações definidas pelo usuário a estilos.

## Acessando Estilos

Você pode obter uma coleção de estilos definidos no documento usando a propriedade [Document.Styles](https://reference.aspose.com/words/net/aspose.words/documentbase/styles/). Esta coleção contém os estilos integrados e definidos pelo usuário em um documento. Um estilo específico pode ser obtido por seu nome/alias, identificador de estilo ou índice. O exemplo de código a seguir demonstra como obter acesso à coleção de estilos definidos no documento.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-AccessStyles-AccessStyles.cs" >}}

## Como extrair conteúdo com base em estilos

Em um nível simples, recuperar o conteúdo com base em estilos de um documento do Word pode ser útil para identificar, listar e contar parágrafos e execuções de texto formatado com um estilo específico. Por exemplo, pode ser necessário identificar tipos específicos de conteúdo no documento, como exemplos, títulos, referências, palavras-chave, nomes de figuras e estudos de caso.

Indo mais alguns passos, isso também pode ser usado para aproveitar a estrutura do documento, definida pelos estilos que ele usa, para redirecionar o documento para outra saída, como HTML. Na verdade, é assim que a documentação do Aspose é construída, colocando o Aspose.Words à prova. Uma ferramenta criada com Aspose.Words pega os documentos originais do Word e os divide em tópicos em determinados níveis de título. Um arquivo XML é produzido usando Aspose.Words que é usado para construir a árvore de navegação que você pode ver à esquerda. E então o Aspose.Words converte cada tópico em HTML.

A solução para recuperar texto formatado com estilos específicos em um documento do Word é normalmente econômica e direta usando Aspose.Words.

### A solução

Para ilustrar a facilidade com que o Aspose.Words lida com a recuperação de conteúdo com base em estilos, vejamos um exemplo. Neste exemplo, recuperaremos texto formatado com um estilo de parágrafo específico e um estilo de caractere de um documento do Word de amostra. Em um nível superior, isso envolverá:# Abrir um documento do Word usando a classe [Document](https://reference.aspose.com/words/net/aspose.words/document/).# Obter coleções de todos os parágrafos e todos os trechos do documento.# Selecionando apenas os parágrafos e trechos necessários. Especificamente, recuperaremos o texto formatado com o estilo de parágrafo 'Título 1' e o estilo de caractere 'Ênfase intensa' deste exemplo de documento do Word.

![working-with-styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


Neste documento de amostra, o texto formatado com o estilo de parágrafo 'Título 1' é 'Inserir guia', 'Estilos rápidos' e 'Tema', e o texto formatado com o estilo de caractere 'Ênfase intensa' são as diversas ocorrências de azul, texto em itálico e em negrito, como 'galerias' e 'aspecto geral'.

### O código

A implementação de uma consulta baseada em estilo é bastante simples no modelo de objeto de documento Aspose.Words, pois simplesmente usa ferramentas que já estão instaladas. Dois métodos de classe são implementados para esta solução:# **ParagraphsByStyleName** – Este método recupera uma matriz desses parágrafos em o documento que possui um nome de estilo específico.# **RunsByStyleName** – Este método recupera uma matriz daquelas execuções no documento que possuem um nome de estilo específico.Ambos os métodos são muito semelhantes, as únicas diferenças são os tipos de nós e a representação do estilo informações dentro do parágrafo e nós de execução. Aqui está uma implementação de ParagraphsByStyleName: Abaixo do exemplo, encontre todos os parágrafos formatados com o estilo especificado.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cs" >}}

{{% alert color="primary" %}}

Esta implementação também utiliza o método `Document.GetChildNodes` da classe `Document`, que retorna uma coleção de todos os nós com o tipo especificado, que neste caso em todos os parágrafos.

Observe que o segundo parâmetro do método **Document.GetChildNodes** está definido como true. Isso força o método **Document.GetChildNodes** a selecionar todos os nós filhos recursivamente, em vez de selecionar apenas os filhos imediatos.

{{% /alert %}}

Também vale ressaltar que a coleção de parágrafos não cria uma sobrecarga imediata porque os parágrafos são carregados nessa coleção somente quando você acessa os itens contidos neles. Então, tudo que você precisa fazer é percorrer a coleção, usando o operador foreach padrão e adicionar parágrafos que tenham o estilo especificado ao array parágrafosWithStyle. O nome do estilo `Paragraph` pode ser encontrado na propriedade [Style.Name](https://reference.aspose.com/words/net/aspose.words/style/name/) do objeto [Paragraph.ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraph/paragraphformat/). A implementação de RunsByStyleName é quase a mesma, embora obviamente estejamos usando [NodeType.Run](https://reference.aspose.com/words/net/aspose.words/nodetype/) para recuperar nós de execução. A propriedade [Font.Style](https://reference.aspose.com/words/net/aspose.words/font/style/) de um objeto [Run](https://reference.aspose.com/words/net/aspose.words/run/) é usada para acessar informações de estilo nos nós **Run**. O exemplo abaixo encontra todas as execuções formatadas com o estilo especificado.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cs" >}}


Quando ambas as consultas são implementadas, tudo o que você precisa fazer é passar um objeto de documento e especificar os nomes dos estilos do conteúdo que deseja recuperar: O exemplo abaixo executa consultas e exibe os resultados. Você pode baixar o arquivo de modelo deste exemplo em [aqui](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Styles.docx).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cs" >}}

### Resultado final

Quando tudo estiver pronto, a execução do exemplo exibirá a seguinte saída:

![styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


Como você pode ver, este é um exemplo muito simples, mostrando o número e o texto dos parágrafos coletados e executados no documento Word de amostra.

## Copiar todos os estilos do modelo

Há casos em que você deseja copiar todos os estilos de um documento para outro. Você pode usar o método `Document.CopyStylesFromTemplate` para copiar estilos do modelo especificado para um documento. Quando os estilos são copiados de um modelo para um documento, os estilos com nomes semelhantes no documento são redefinidos para corresponder às descrições de estilo no modelo. Os estilos exclusivos do modelo são copiados para o documento. Os estilos exclusivos do documento permanecem intactos. O exemplo Below code mostra como copiar estilos de um documento para outro.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cs" >}}

## Como manipular propriedades do tema

Adicionamos API básico em Aspose.Words para acessar as propriedades do tema do documento. Por enquanto, este API inclui os seguintes objetos públicos:

- Tema
- Fontes temáticas
- Cores do tema

Veja como você pode obter propriedades do tema:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-GetThemeProperties.cs" >}}

E aqui está como você pode definir as propriedades do tema:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-SetThemeProperties.cs" >}}
