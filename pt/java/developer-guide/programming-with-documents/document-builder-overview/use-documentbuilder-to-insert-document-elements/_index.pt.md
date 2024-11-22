---
title: Uso `DocumentBuilder` para inserir elementos de documentos
second_title: Aspose.Words para Java
articleTitle: Uso `DocumentBuilder` para inserir elementos de documentos
linktitle: Uso `DocumentBuilder` para inserir elementos de documentos
type: docs
description: "Insira elementos de documento usando o construtor de documentos em Java."
weight: 10
url: /pt/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

O [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) é usado para modificar documentos. Este artigo explica e descreve como executar uma série de tarefas.

## Inserindo uma string de texto

Basta passar a string de texto que você precisa inserir no documento para o [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)) método. A formatação de texto é determinada pelo `Font` propriedade. Este objeto contém diferentes atributos de fonte (nome de fonte, tamanho da fonte, cor e assim por diante). Alguns atributos de fonte importantes também são representados por [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) propriedades para permitir que você acessá-los diretamente. Estas são propriedades booleanas [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), e [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

{{% alert color="primary" %}}

Note que a formatação de caracteres que você definiu será aplicada a todo o texto inserido na posição atual no documento em diante.

{{% /alert %}}

O exemplo de código a seguir Inserir texto formatado usando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## Inserindo um Parágrafo

DocumentBuilder.writeln insere uma cadeia de texto no documento, bem como, além disso, adiciona uma quebra de parágrafo. A formatação da fonte atual também é especificada pelo DocumentBuilder. Vamos. Propriedade da fonte e formatação de parágrafo atual é determinada pela propriedade DocumentBuilder.getParagraphFormat

O exemplo de código a seguir mostra como inserir um parágrafo no documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## Inserindo uma tabela

O algoritmo básico para criar uma tabela usando `DocumentBuilder` é simples:

1. Comece a tabela usando [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable).
1. Insira uma célula usando [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell). Isso inicia automaticamente uma nova linha. Se necessário, use o [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) propriedade para especificar a formatação da célula.
1. Insira o conteúdo da célula usando o `DocumentBuilder` métodos.
1. Repita os passos 2 e 3 até que a linha esteja completa.
1. Chamada [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) para terminar a linha atual. Se necessário, use [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) propriedade para especificar formatação de linha.
1. Repita os passos 2 - 5 até que a tabela esteja completa.
1. Chamada [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) para terminar o edifício da mesa. Os métodos apropriados de criação da tabela do DocumentBuilder são descritos abaixo.

### Iniciando uma Tabela

Chamando DocumentBuilder.start A tabela é o primeiro passo na construção de uma mesa. Também pode ser chamado dentro de uma célula, neste caso, ele começa uma tabela aninhada. O próximo método para chamar é DocumentBuilder.insertCell.

### Inserindo uma célula

Depois de ligar ao DocumentBuilder. inserção Célula, uma nova célula é criada e qualquer conteúdo que você adicionar usando outros métodos do `DocumentBuilder` a classe será adicionada à célula atual. Para iniciar uma nova célula na mesma linha, ligue para DocumentBuilder. inserção Célula outra vez. Use o DocumentBuilder.getCell Formate a propriedade para especificar a formatação da célula. Retorna um [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) objeto que representa toda a formatação para uma célula de tabela.

### Terminando uma linha

Call DocumentBuilder.end Remo para terminar a linha atual. Se você chamar DocumentBuilder. inserção Célula imediatamente depois disso, então a tabela continua em uma nova linha. Use o `DocumentBuilder.RowFormat` propriedade para especificar formatação de linha. Retorna um [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) objeto que representa toda a formatação para uma linha de tabela.

### Terminar uma Tabela

Call DocumentBuilder.end Tabela para terminar a tabela atual. Este método deve ser chamado apenas uma vez após DocumentBuilder. endRow foi chamado. Quando chamado, DocumentBuilder.end A tabela move o cursor para fora da célula atual para uma posição logo após a tabela. O exemplo a seguir demonstra como construir uma tabela formatada que contenha 2 linhas e 2 colunas.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## Inserindo uma ruptura

Se você quiser iniciar explicitamente uma nova linha, parágrafo, coluna, seção ou página, ligue para DocumentBuilder. insertBreak. Passe para este método o tipo da ruptura que você precisa inserir que é representado pelo `BreakType` enumeração
O exemplo de código a seguir mostra como inserir quebras de página em um documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## Inserindo uma imagem

DocumentBuilder fornece várias sobrecargas dos [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) método que permite inserir uma imagem em linha ou flutuante. Se a imagem for um metafile EMF ou WMF, ela será inserida no documento no formato metafile. Todas as outras imagens serão armazenadas no formato PNG. O DocumentBuilder.insert Método de imagem pode usar imagens de diferentes fontes:

- De um arquivo ou `URL` passando um parâmetro string
- De um córrego passando um `Stream` parâmetro
- De um objeto Imagem passando um parâmetro Imagem
- De um array byte passando um parâmetro array byte
- Não. E outros

Para cada um dos DocumentBuilder. inserção Métodos de imagem, há sobrecargas adicionais que permitem inserir uma imagem com as seguintes opções:

- Inline ou flutuando em uma posição específica
- Escala de porcentagem ou tamanho personalizado

Além disso, o DocumentBuilder.insert Método de imagem retorna um [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) objeto que foi apenas criado e inserido para que você possa modificar ainda mais as propriedades da forma.

### Inserindo uma imagem em linha

Passe uma única string representando um arquivo que contém a imagem para DocumentBuilder. inserção Imagem para inserir a imagem no documento como um gráfico em linha. O exemplo de código a seguir mostra como inserir uma imagem em linha na posição do cursor em um documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### Inserindo uma imagem flutuante (Absolutamente posicionada)

Este exemplo insere uma imagem flutuante de um arquivo ou `URL` em uma posição e tamanho especificados.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## Inserindo um marcador

Para inserir um marcador no documento, você deve fazer o seguinte:

1. Chamada [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) passando-o o nome desejado do marcador.
1. Insira o texto bookmark usando `DocumentBuilder` métodos.
1. Chamada [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) passando o mesmo nome que você usou com DocumentBuilder.startBookmark.

Os marcadores podem sobrepor e abranger qualquer intervalo. Para criar um marcador válido você precisa chamar tanto DocumentBuilder.startBookmark e DocumentBuilder.endBookmark com o mesmo nome de marcador.

Os marcadores ou marcadores mal formados com nomes duplicados serão ignorados quando o documento for salvo.

O exemplo a seguir mostra como inserir um marcador em um documento usando um construtor de documentos.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## Inserindo um campo

Campos em Microsoft Word documentos consistem em um código de campo e um resultado de campo. O código de campo é como uma fórmula e o resultado do campo é o valor que a fórmula produz. O código de campo também pode conter interruptores de campo que são instruções adicionais para executar uma ação específica. Você pode alternar entre exibir códigos de campo e resultados em seu documento Microsoft Word usando o atalho de teclado Alt + F9. Os códigos de campo aparecem entre as tranças ( { } ).Use [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) criar campos no documento. Você precisa especificar um tipo de campo, código de campo e valor de campo. Se você não tem certeza sobre a sintaxe do código de campo em particular, crie o campo em Microsoft Word primeiro e mudar para ver seu código de campo
O exemplo de código a seguir insere um campo de mesclagem em um documento usando o DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## Inserindo um `Form` Campo

Campos de formulário são um caso particular de campos do Word que permite "interação" com o usuário. Campos de formulário Microsoft Word incluir caixa de texto, Combobox e caixa de seleção. DocumentBuilder fornece métodos especiais para inserir cada tipo de campo de formulário no documento: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int) , [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), e [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int). Note que, se você especificar um nome para o campo do formulário, então um marcador é criado automaticamente com o mesmo nome.

### Inserindo uma entrada de texto

DocumentBuilder.insertTextInput para inserir uma caixa de texto no documento. O exemplo a seguir mostra como inserir um campo de formulário de entrada de texto em um documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Inserindo um `CheckBox`

Construtor de documentos de chamada.insert CheckBox para inserir uma caixa de seleção no documento. O exemplo a seguir mostra como inserir um campo de formulário de caixa de seleção em um documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Inserindo uma caixa de combinação

Construtor de documentos de chamada.insertComboBox para inserir uma caixa de combinação no documento. O exemplo a seguir mostra como inserir um campo de formulário de caixa de combinação em um documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Inserindo Locale no Nível de Campo

Os clientes podem especificar Locale no nível de campo agora e pode alcançar melhor controle. Locale Ids podem ser associados a cada campo dentro do DocumentBuilder. Os exemplos abaixo ilustram como fazer uso desta opção.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## Inserindo HTML

Você pode facilmente inserir uma string HTML que contém um fragmento HTML ou documento HTML inteiro no documento do Word. Basta passar esta cadeia para o DocumentBuilder. inserção Método Html. Uma das implementações úteis do método é armazenar uma string HTML em um banco de dados e inseri-la no documento durante Mail Merge para obter o conteúdo formatado adicionado em vez de construí-lo usando vários métodos do construtor de documentos. O exemplo de código a seguir mostra insere HTML em um documento usando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## Inserindo um Hyperlink

Use DocumentBuilder.insertHyperlink para inserir um hiperlink no documento. Este método aceita três parâmetros: texto do link a ser exibido no documento, destino do link (URL ou nome de um marcador dentro do documento), e um parâmetro booleano que deve ser true se `URL` é um nome de um marcador dentro do documento. DocumentBuilder.insertHyperlink internamente chama DocumentBuilder.insertField. O método sempre adiciona apostrofes no início e fim da URL. Note que você precisa especificar formatação de fonte para o texto de exibição de hiperlink explicitamente usando o `Font` propriedade. O exemplo de código a seguir insere um hiperlink em um documento usando o DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Inserindo uma Tabela de Conteúdos

Você pode inserir um `TOC` (tabela de conteúdo) campo no documento na posição atual, chamando o [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) método. O método DocumentBuilder.insertTableOfContents só irá inserir um `TOC` campo no documento. A fim de construir a tabela de conteúdos e exibi-los de acordo com números de página, os dois **Document.UpdateFields**método deve ser chamado após a inserção do campo. O exemplo a seguir mostra como inserir um campo Tabela de Conteúdos em um documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## Inserindo Objeto Ole

Se você quiser Ole Object call [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## Defina o nome e a extensão do arquivo ao inserir o objeto Ole

O pacote OLE é uma forma legado e "não documentada" de armazenar objetos embarcados se o manipulador OLE é desconhecido. Início Windows versões como Windows 3.1, 95 e 98 tinham Packager. exe aplicação que poderia ser usado para incorporar qualquer tipo de dados no documento. Agora, esta aplicação está excluída Windows mas MS Word e outras aplicações ainda usá-lo para incorporar dados se o manipulador OLE está faltando ou desconhecido. A classe OlePackage permite acessar as propriedades do Pacote OLE. O exemplo de código a seguir mostra como definir o nome do arquivo, extensão e nome de exibição para OLE Package.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## Obtenha acesso aos dados brutos de objetos OLE

O seguinte exemplo de código demonstra como obter OLE Objeto de dados brutos usando `OleFormat.GetRawData`() método.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## Insira horizontal Regra em documento

O exemplo de código a seguir mostra como inserir a forma de regra horizontal em um documento usando `DocumentBuilder.InsertHorizontalRule` método.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## Trabalhando com formas

### Inserindo Formas Inline e Free-floating

Você pode inserir uma forma em linha com um tipo e tamanho especificados e uma forma de flutuação livre com a posição especificada, tamanho e tipo de embalagem de texto em um documento usando `DocumentBuilder.InsertShape` método. O `DocumentBuilder.InsertShape` método permite inserir a forma DML no modelo de documento. O documento deve ser salvo no formato, que suportam formas DML, caso contrário, esses nós serão convertidos em forma VML, enquanto a economia de documentos. O exemplo de código a seguir mostra como inserir esses tipos de formas no documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### Criar retângulo de canto Snip

Você pode criar um retângulo de canto snip usando Aspose.Words. Os tipos de forma são SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRounded OneSnipped, SingleCornerRounded, TopCornersRounded e DiagonalCornersRounded. A forma DML é criada usando `DocumentBuilder.InsertShape` método com estes tipos de forma. Estes tipos não podem ser usados para criar formas VML. Tentar criar uma forma usando o construtor público da classe "Shape" aumenta a exceção "NotSupportedException". O exemplo de código a seguir mostra como inserir esses tipos de formas no documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### Importe formas com matemática XML como formas em DOM

Você pode usar `LoadOptions.ConvertShapeToOfficeMath` propriedade para converter as formas com EquationXML para objetos Office Math. O valor padrão desta propriedade corresponde ao comportamento do MS Word, ou seja, formas com equação XML não são convertidas em objetos de matemática do Office.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
