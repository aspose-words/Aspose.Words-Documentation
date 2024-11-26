---
title: Trabalhar com estilos e temas
second_title: Aspose.Words para Java
articleTitle: Trabalhar com estilos e temas
linktitle: Trabalhar com estilos e temas
description: "Recursos de formatação Microsoft Word aprimorados, trabalhando com estilos e temas usando Java."
type: docs
weight: 110
url: /pt/java/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

A classe [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) é usada para gerenciar configurações internas e aplicar configurações definidas pelo usuário a estilos.

## Como extrair conteúdo com base em estilos

Em um nível simples, recuperar o conteúdo com base em estilos de um documento do Word pode ser útil para identificar, listar e contar parágrafos e execuções de texto formatados com um estilo específico. Por exemplo, pode ser necessário identificar tipos específicos de conteúdo no documento, como exemplos, títulos, referências, palavras-chave, nomes de figuras e estudos de caso.

Para levar isso alguns passos adiante, isso também pode ser usado para alavancar a estrutura do documento, definida pelos estilos que ele usa, para reutilizar o documento para outra saída, como HTML. Na verdade, é assim que a documentação Aspose é construída, colocando Aspose.Words à prova. Uma ferramenta criada usando Aspose.Words pega os documentos do Word de origem e os divide em tópicos em determinados níveis de cabeçalho. Um arquivo XML é produzido usando Aspose.Words que é usado para construir a árvore de navegação que você pode ver à esquerda. E então Aspose.Words converte cada tópico em HTML. A solução para recuperar texto formatado com estilos específicos em um documento do Word é normalmente econômica e direta usando Aspose.Words.

Para ilustrar a facilidade com que Aspose.Words lida com a recuperação de conteúdo com base em estilos, vejamos um exemplo. Neste exemplo, vamos recuperar texto formatado com um estilo de parágrafo específico e um estilo de caractere de um documento do Word de amostra.

A um nível elevado, isso envolverá:

1. Abrindo um documento do Word usando a classe [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. Obtendo coleções de todos os parágrafos e todas as execuções no documento.
1. Seleccionar apenas os parágrafos e execuções necessários.

Especificamente, recuperaremos o texto formatado com o estilo de parágrafo' Heading 1 'e o estilo de caractere' ênfase intensa ' deste exemplo de Documento do Word.

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

Neste documento de exemplo, o texto formatado com o estilo de parágrafo 'Heading 1' é 'inserir guia', 'Estilos Rápidos' e 'tema', e o texto formatado com o estilo de caractere 'ênfase intensa' são as várias instâncias de texto azul, em itálico e em negrito, como 'galerias' e 'aparência geral'.

A implementação de uma consulta baseada em estilo é bastante simples no modelo de objeto de documento Aspose.Words, pois simplesmente usa ferramentas que já estão em vigor. Dois métodos de classe são implementados para esta solução:

1. **ParagraphsByStyleName** - este método recupera uma matriz dos parágrafos no documento que têm um nome de estilo específico.
1. **RunsByStyleName** - este método recupera uma matriz dessas execuções no documento que têm um nome de estilo específico.

Ambos os métodos são muito semelhantes, sendo as únicas diferenças os tipos de nós e a representação das informações de estilo nos nós de parágrafo e de execução. Aqui está uma implementação de ParagraphsByStyleName mostrada no exemplo de código dado abaixo para encontrar todos os parágrafos formatados com o estilo especificado.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

Essa implementação também usa o método [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) da classe `Document`, que retorna uma coleção de todos os nós filhos imediatos.

Também vale a pena salientar que a coleção de parágrafos não cria uma sobrecarga imediata porque os parágrafos são carregados nesta coleção apenas quando você acessa itens neles.Então, tudo o que você precisa fazer é percorrer a coleção, usando o operador foreach padrão e adicionar parágrafos que tenham o estilo especificado à matriz paragraphsWithStyle. O nome do estilo `Paragraph` pode ser encontrado na propriedade [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) do objeto [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat).

A implementação de RunsByStyleName é quase a mesma, embora estejamos obviamente usando `NodeType.Run` para recuperar nós executados. A propriedade [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) de um objeto [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) é usada para acessar informações de estilo nos nós **Run**.

O exemplo de código a seguir encontra todas as execuções formatadas com o estilo especificado.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

Quando ambas as consultas são implementadas, tudo o que você precisa fazer é passar um objeto document e especificar os nomes de estilo do conteúdo que deseja recuperar:

{{% /alert %}}

O exemplo de código a seguir executa consultas e exibe resultados.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

Quando tudo estiver pronto, a execução da amostra exibirá a seguinte saída:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

Como você pode ver, este é um exemplo muito simples, mostrando o número e o texto dos parágrafos coletados e é executado no documento do Word de amostra.

## Inserir Separador de estilo para colocar diferentes estilos de parágrafo

O separador de estilos pode ser adicionado ao final de um parágrafo utilizando o atalho de teclado Ctrl + Alt + Enter na palavra MS. Este recurso permite dois estilos de parágrafo diferentes usados em um parágrafo impresso lógico. Se pretender que algum texto do início de um título específico apareça num Sumário, mas não pretender que o título inteiro no sumário, pode utilizar esta funcionalidade.

O exemplo de código a seguir mostra como inserir um separador de estilo para colocar estilos de parágrafo diferentes.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## Copiar todos os estilos do modelo

Há casos em que você deseja copiar todos os estilos de um documento para outro. Você pode usar o método `Document.CopyStylesFromTemplate` para copiar estilos do modelo especificado para um documento. Quando os estilos são copiados de um modelo para um documento, os estilos com nomes semelhantes no documento são redefinidos para corresponder às descrições de estilo no modelo. Os estilos únicos do modelo são copiados para o documento. Os estilos únicos no documento permanecem intactos.

O exemplo de código a seguir mostra como copiar estilos de um documento para outro.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## Como manipular as propriedades do tema

Adicionamos API básico em Aspose.Words para acessar as propriedades do tema do documento. Por enquanto, isso API inclui os seguintes objetos públicos:

- Tema
- ThemeFonts
- ThemeColors

Veja como você pode obter propriedades do tema:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

E aqui está como você pode definir as propriedades do tema:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
