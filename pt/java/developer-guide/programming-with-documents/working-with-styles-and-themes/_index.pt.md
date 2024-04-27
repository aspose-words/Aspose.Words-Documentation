---
title: Trabalhando com estilos e temas
second_title: Aspose.Words para Java
articleTitle: Trabalhando com estilos e temas
linktitle: Trabalhando com estilos e temas
description: "Melhorado Microsoft Word características de formatação, trabalhando com estilos e temas usando Java."
type: docs
weight: 110
url: /pt/java/working-with-styles-and-themes/
---

O [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) classe é usado para gerenciar built-in e aplicar configurações definidas pelo usuário a estilos.

## Como Extrair conteúdo com base em estilos

Em um nível simples, recuperar o conteúdo baseado em estilos de um documento do Word pode ser útil para identificar, listar e contar parágrafos e execução de texto formatado com um estilo específico. Por exemplo, você pode precisar identificar tipos específicos de conteúdo no documento, como exemplos, títulos, referências, palavras-chave, nomes de figuras e estudos de casos.

Para dar mais alguns passos, isso também pode ser usado para alavancar a estrutura do documento, definido pelos estilos que ele usa, para reutilizar o documento para outra saída, como HTML. Esta é de fato como a documentação de Aspose é construída, colocando Aspose.Words ao teste. Uma ferramenta construída usando Aspose.Words leva os documentos do Word de origem e os divide em tópicos em determinados níveis de cabeçalho. Um arquivo XML é produzido usando Aspose.Words que é usado para construir a árvore de navegação que você pode ver na esquerda. E depois Aspose.Words converte cada tópico em HTML. A solução para recuperar texto formatado com estilos específicos em um documento do Word é tipicamente econômica e direta usando Aspose.Words.

Para ilustrar como facilmente Aspose.Words manipula recuperar conteúdo com base em estilos, vamos olhar para um exemplo. Neste exemplo, vamos recuperar texto formatado com um estilo de parágrafo específico e um estilo de personagem de um documento do Word de amostra.

Em um alto nível, isso envolverá:

1. Abrir um documento do Word usando o [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) classe.
1. Obter coleções de todos os parágrafos e todas as corridas no documento.
1. Selecionando apenas os parágrafos necessários e executados.

Especificamente, vamos recuperar texto formatado com o estilo de parágrafo ‘Heading 1’ e o estilo de caractere ‘Intense Emphasis’ deste documento do Word amostra

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

Neste documento de amostra, o texto formatado com o estilo de parágrafo ‘Heading 1’ é ‘Insert Tab’, ‘Quick Styles’ e ‘Theme’, e o texto formatado com o estilo de personagem ‘Intensa ênfase’ é as várias instâncias de texto azul, itálico, negrito, como ‘galleries’ e ‘overall look’.

A implementação de uma consulta baseada em estilo é bastante simples na Aspose.Words documento modelo objeto, como ele simplesmente usa ferramentas que já estão no lugar. Dois métodos de classe são implementados para esta solução:

1. **ParagraphsByStyleName** – Este método recupera um array desses parágrafos no documento que tem um nome de estilo específico.
1. **RunsByStyleName** – Este método recupera um array daqueles executados no documento que tem um nome de estilo específico.

Ambos os métodos são muito semelhantes, sendo as únicas diferenças os tipos de nó e a representação das informações de estilo dentro do parágrafo e nos nós de execução. Aqui está uma implementação do §sByStyleName mostrado no exemplo de código abaixo para encontrar todos os parágrafos formatados com o estilo especificado.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

Esta implementação também utiliza [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) método do `Document` classe, que retorna uma coleção de todos os nós da criança imediata.

Também vale ressaltar que a coleção de parágrafos não cria uma sobrecarga imediata porque os parágrafos são carregados nesta coleção apenas quando você acessa itens neles. Então, tudo o que você precisa fazer é passar pela coleção, usando o operador padrão para cada operador e adicionar parágrafos que têm o estilo especificado para os parágrafos Com array de estilo. O `Paragraph` nome de estilo pode ser encontrado no [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) propriedade da [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat) objeto.

A implementação do RunsByStyleName é quase a mesma, embora obviamente estejamos usando `NodeType.Run` para recuperar nós. O [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) propriedade de uma [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) objeto é usado para acessar informações de estilo no **Run** nós

O exemplo de código a seguir encontra todas as execuções formatadas com o estilo especificado.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

Quando ambas as consultas são implementadas, tudo que você precisa fazer é passar um objeto de documento e especificar os nomes de estilo do conteúdo que você deseja recuperar:

{{% /alert %}}

Os seguintes exemplos de código executam consultas e exibem resultados.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

Quando tudo for feito, a execução da amostra irá exibir a seguinte saída:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

Como você pode ver, este é um exemplo muito simples, mostrando o número e o texto dos parágrafos coletados e roda no documento do Word da amostra.

## Insira o separador de estilo para colocar diferentes estilos de parágrafo

O separador de estilo pode ser adicionado ao final de um parágrafo usando o Ctrl + Alt + Enter Keyboard atalho em MS Word. Este recurso permite dois estilos de parágrafo diferentes usados em um parágrafo impresso lógico. Se você quiser que algum texto a partir do início de um determinado cabeçalho apareça em uma Tabela de Conteúdos, mas não deseja que todo o cabeçalho na Tabela de Conteúdo, você pode usar esse recurso

O exemplo de código a seguir mostra como inserir um separador de estilo para colocar diferentes estilos de parágrafo

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## Copie todos os estilos do modelo

Há casos em que você deseja copiar todos os estilos de um documento para outro. Você pode usar o `Document.CopyStylesFromTemplate` método para copiar estilos do modelo especificado para um documento. Quando os estilos são copiados de um modelo para um documento, estilos de nome semelhante no documento são redefinidos para corresponder às descrições de estilo no modelo. Estilos únicos do modelo são copiados para o documento. Os estilos únicos no documento permanecem intactos

O exemplo de código a seguir mostra como copiar estilos de um documento para outro.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## Como Manipular Propriedades do tema

Nós adicionamos básico API em Aspose.Words para acessar propriedades do tema do documento. Por agora, isto API inclui os seguintes objetos públicos:

- Não. Tema
- Fontes temáticas
- Cores temáticas

Aqui está como você pode obter propriedades temáticas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

E aqui está como você pode definir propriedades temáticas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
