---
title: Trabalhando com estilos e temas
second_title: Aspose.Words para Python via .NET
articleTitle: Trabalhando com estilos e temas
linktitle: Trabalhando com estilos e temas
description: "Acesse e gerencie estilos e temas em um documento usando Python."
type: docs
weight: 110
url: /pt/python-net/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

A classe [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) é usada para gerenciar configurações integradas e aplicar configurações definidas pelo usuário a estilos.

## Acessando Estilos

Você pode obter uma coleção de estilos definidos no documento usando a propriedade [Document.styles](https://reference.aspose.com/words/python-net/aspose.words/documentbase/styles/). Esta coleção contém os estilos integrados e definidos pelo usuário em um documento. Um estilo específico pode ser obtido por seu nome/alias, identificador de estilo ou índice. O exemplo de código a seguir demonstra como obter acesso à coleção de estilos definidos no documento.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-AccessStyles.py" >}}

## Como extrair conteúdo com base em estilos

Em um nível simples, recuperar o conteúdo com base em estilos de um documento do Word pode ser útil para identificar, listar e contar parágrafos e execuções de texto formatado com um estilo específico. Por exemplo, pode ser necessário identificar tipos específicos de conteúdo no documento, como exemplos, títulos, referências, palavras-chave, nomes de figuras e estudos de caso.

Indo mais alguns passos, isso também pode ser usado para aproveitar a estrutura do documento, definida pelos estilos que ele usa, para redirecionar o documento para outra saída, como HTML. Na verdade, é assim que a documentação do Aspose é construída, colocando o Aspose.Words à prova. Uma ferramenta criada com Aspose.Words pega os documentos originais do Word e os divide em tópicos em determinados níveis de título. Um arquivo XML é produzido usando Aspose.Words que é usado para construir a árvore de navegação que você pode ver à esquerda. E então o Aspose.Words converte cada tópico em HTML.

A solução para recuperar texto formatado com estilos específicos em um documento do Word é normalmente econômica e direta usando Aspose.Words.

### A solução

Para ilustrar a facilidade com que o Aspose.Words lida com a recuperação de conteúdo com base em estilos, vejamos um exemplo. Neste exemplo, recuperaremos texto formatado com um estilo de parágrafo específico e um estilo de caractere de um documento do Word de amostra. Em alto nível, isso envolverá:
- Abrindo um documento Word usando a classe [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).
- Obtendo coleções de todos os parágrafos e todas as execuções do documento.
- Selecionando apenas os parágrafos e execuções necessários. Especificamente, recuperaremos o texto formatado com o estilo de parágrafo 'Título 1' e o estilo de caractere 'Ênfase intensa' deste exemplo de documento do Word.

![working-with-styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


Neste documento de amostra, o texto formatado com o estilo de parágrafo 'Título 1' é 'Inserir guia', 'Estilos rápidos' e 'Tema', e o texto formatado com o estilo de caractere 'Ênfase intensa' são as diversas ocorrências de azul, texto em itálico e em negrito, como 'galerias' e 'aspecto geral'.

### O código

A implementação de uma consulta baseada em estilo é bastante simples no modelo de objeto de documento Aspose.Words, pois ele simplesmente utiliza ferramentas que já existem. Dois métodos de classe são implementados para esta solução:
- **parágrafos_por_style_name** – Este método recupera uma matriz dos parágrafos do documento que possuem um nome de estilo específico.
- **run_by_style_name** – Este método recupera um array das execuções no documento que possuem um nome de estilo específico. Ambos os métodos são muito semelhantes, as únicas diferenças são os tipos de nós e a representação das informações de estilo dentro do parágrafo e dos nós de execução. Aqui está uma implementação de `paragraphs_by_style_name`: Abaixo do exemplo, encontre todos os parágrafos formatados com o estilo especificado.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ParagraphsByStyleName.py" >}}

{{% alert color="primary" %}}

Esta implementação também utiliza o método [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) da classe [Document](https://reference.aspose.com/words/python-net/aspose.words/document/), que retorna uma coleção de todos os nós com o tipo especificado, que neste caso em todos os parágrafos.

Observe que o segundo parâmetro do método [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) está definido como `True`. Isso força o método [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) a selecionar todos os nós filhos recursivamente, em vez de selecionar apenas os filhos imediatos.

{{% /alert %}}

Também vale ressaltar que a coleção de parágrafos não cria uma sobrecarga imediata porque os parágrafos são carregados nessa coleção somente quando você acessa os itens contidos neles. Então, tudo que você precisa fazer é percorrer a coleção, usando o operador foreach padrão e adicionar parágrafos que tenham o estilo especificado ao array parágrafos_com_estilo. O nome do estilo `Paragraph` pode ser encontrado na propriedade [Style.name](https://reference.aspose.com/words/python-net/aspose.words/style/name/) do objeto [Paragraph.paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/paragraph/paragraph_format/). A implementação do **run_by_style_name** é quase a mesma, embora obviamente estejamos usando [NodeType.RUN](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#run) para recuperar nós de execução. A propriedade [Font.style](https://reference.aspose.com/words/python-net/aspose.words/font/style/) de um objeto [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) é usada para acessar informações de estilo nos nós [Run](https://reference.aspose.com/words/python-net/aspose.words/run/). O exemplo abaixo encontra todas as execuções formatadas com o estilo especificado.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-RunsByStyleName.py" >}}


Quando ambas as consultas são implementadas, tudo o que você precisa fazer é passar um objeto de documento e especificar os nomes dos estilos do conteúdo que deseja recuperar: O exemplo abaixo executa consultas e exibe os resultados. Você pode baixar o arquivo de modelo deste exemplo em [aqui](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Styles.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractContentBasedOnStyles.py" >}}

### Resultado final

Quando tudo estiver pronto, a execução do exemplo exibirá a seguinte saída:

![styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


Como você pode ver, este é um exemplo muito simples, mostrando o número e o texto dos parágrafos coletados e executados no documento Word de amostra.

## Copiar todos os estilos do modelo

Há casos em que você deseja copiar todos os estilos de um documento para outro. Você pode usar o método [Document.copy_styles_from_template](https://reference.aspose.com/words/python-net/aspose.words/document/copy_styles_from_template/) para copiar estilos do modelo especificado para um documento. Quando os estilos são copiados de um modelo para um documento, os estilos com nomes semelhantes no documento são redefinidos para corresponder às descrições de estilo no modelo. Os estilos exclusivos do modelo são copiados para o documento. Os estilos exclusivos do documento permanecem intactos. O exemplo Below code mostra como copiar estilos de um documento para outro.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-CopyStyles.py" >}}

## Como manipular propriedades do tema

Adicionamos API básico em Aspose.Words para acessar as propriedades do tema do documento. Por enquanto, este API inclui os seguintes objetos públicos:

- [Theme](https://reference.aspose.com/words/python-net/aspose.words.themes/theme/)
- [ThemeFonts](https://reference.aspose.com/words/python-net/aspose.words.themes/themefonts/)
- [ThemeColors](https://reference.aspose.com/words/python-net/aspose.words.themes/themecolors/)

Veja como você pode obter propriedades do tema:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-GetThemeProperties.py" >}}

E aqui está como você pode definir as propriedades do tema:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-SetThemeProperties.py" >}}
