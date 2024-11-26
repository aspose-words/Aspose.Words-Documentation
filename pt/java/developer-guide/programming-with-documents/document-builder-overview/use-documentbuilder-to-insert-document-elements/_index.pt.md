---
title: Use DocumentBuilder para Inserir Elementos do documento
second_title: Aspose.Words para Java
articleTitle: Use DocumentBuilder para Inserir Elementos do documento
linktitle: Use DocumentBuilder para Inserir Elementos do documento
type: docs
description: "Inserir elementos do documento utilizando o construtor de documentos em Java."
weight: 10
url: /pt/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

O [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) é utilizado para modificar documentos. Este artigo explica e descreve como executar uma série de Tarefas.

## Inserir uma sequência de texto

Basta passar a sequência de texto que você precisa inserir no documento para o método [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)). A formatação do texto é determinada pela propriedade `Font`. Este objeto contém diferentes atributos de fonte (Nome da fonte, tamanho da fonte, cor e assim por diante). Alguns atributos de fonte importantes também são representados por propriedades [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) para permitir que você os acesse diretamente. Estas são propriedades booleanas [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic) e [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

{{% alert color="primary" %}}

Observe que a formatação de caracteres definida será aplicada a todo o texto inserido a partir da posição atual no documento.

{{% /alert %}}

O exemplo de código a seguir insere texto formatado usando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## Inserir um parágrafo

DocumentBuilder.o writeln também insere uma sequência de texto no documento, mas, além disso, adiciona uma quebra de parágrafo. A formatação da fonte atual também é especificada pelo DocumentBuilder.A propriedade getFont e a formatação do parágrafo atual são determinadas pelo DocumentBuilder.getParagraphFormat propriedade.

O exemplo de código a seguir mostra como inserir um parágrafo no documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## Inserir uma tabela

O algoritmo básico para criar uma tabela usando `DocumentBuilder` é simples:

1. Inicie a tabela utilizando [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable).
1. Insira uma célula usando [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell). Isso inicia automaticamente uma nova linha. Se necessário, use a propriedade [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) para especificar a formatação da célula.
1. Insira o conteúdo da célula usando os métodos `DocumentBuilder`.
1. Repita as etapas 2 e 3 até que a linha esteja completa.
1. Chame [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) para terminar a linha atual. Se necessário, use a propriedade [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) para especificar a formatação da linha.
1. Repita os passos 2 - 5 até que a tabela esteja completa.
1. Chame [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) para terminar a construção da tabela. Os métodos apropriados de criação de tabelas DocumentBuilder são descritos abaixo.

### Iniciar uma mesa

Chamando DocumentBuilder.startTable é o primeiro passo na construção de uma tabela. Também pode ser chamado dentro de uma célula, neste caso, inicia uma tabela aninhada. O próximo método a chamar é DocumentBuilder.insertCell.

### Inserir uma célula

Depois de chamar DocumentBuilder.insertCell, uma nova célula é criada e qualquer conteúdo que você adicionar usando outros métodos da classe `DocumentBuilder` será adicionado à célula atual. Para iniciar uma nova célula na mesma linha, chame DocumentBuilder.insertCell outra vez. Use o DocumentBuilder.getCellFormat Propriedade para especificar a formatação da célula. Ele retorna um objeto [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) que representa toda a formatação de uma célula da tabela.

### Terminar uma linha

Chamada DocumentBuilder.endRow para terminar a linha actual. Se você chamar DocumentBuilder.insertCell imediatamente depois disso, a tabela continua em uma nova linha. Use a propriedade `DocumentBuilder.RowFormat` para especificar a formatação da linha. Ele retorna um objeto [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) que representa toda a formatação de uma linha de tabela.

### Terminar uma mesa

Chamada DocumentBuilder.endTable para terminar a tabela actual. Este método deve ser chamado apenas uma vez após DocumentBuilder.endRow foi chamado. Quando chamado, DocumentBuilder.endTable move o cursor para fora da célula actual para uma posição logo após a tabela. O exemplo a seguir demonstra como construir uma tabela formatada que contém 2 linhas e 2 colunas.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## Inserir uma pausa

Se pretender iniciar explicitamente uma nova linha, parágrafo, coluna, secção ou página, ligue para DocumentBuilder.insertBreak. Passe para este método o tipo de quebra que você precisa inserir Que é representado pela enumeração `BreakType`.
O exemplo de código a seguir mostra como inserir quebras de página em um documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## Inserir uma imagem

DocumentBuilder fornece várias sobrecargas do método [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) que permite inserir uma imagem embutida ou flutuante. Se a imagem for um metarquivo EMF ou WMF, será inserida no documento em formato metarquivo. Todas as outras imagens serão armazenadas no formato PNG. O DocumentBuilder.insertImage método pode usar imagens de diferentes fontes:

- De um arquivo ou `URL` passando um parâmetro de string
- De um fluxo passando um parâmetro `Stream`
- De um objeto de imagem passando um parâmetro de imagem
- De uma matriz de bytes passando um parâmetro de matriz de bytes
- E outros

Para cada um dos DocumentBuilder.insertImage métodos, existem outras sobrecargas que permitem inserir uma imagem com as seguintes opções:

- Em linha ou flutuante numa posição específica
- Escala percentual ou tamanho personalizado

Além disso, o DocumentBuilder.insertImage método retorna um objeto [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) que acabou de ser criado e inserido para que você possa modificar ainda mais as propriedades da forma.

### Inserir uma imagem embutida

Passe uma única string representando um arquivo que contém a imagem para DocumentBuilder.insertImage para inserir a imagem no documento como um gráfico embutido. O exemplo de código a seguir mostra como inserir uma imagem embutida na posição do cursor em um documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### Inserir uma imagem flutuante (absolutamente posicionada)

Este exemplo insere uma imagem flutuante de um arquivo ou `URL` em uma posição e tamanho especificados.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## Inserir um marcador

Para inserir um marcador no documento, você deve fazer o seguinte:

1. Chame [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) passando - lhe o nome desejado do marcador.
1. Insira o texto do marcador utilizando os métodos `DocumentBuilder`.
1. Chame [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) passando o mesmo nome que você usou com DocumentBuilder.startBookmark.

Os marcadores podem sobrepor-se e abranger qualquer intervalo. Para criar um marcador válido, Você precisa chamar ambos DocumentBuilder.startBookmark e DocumentBuilder.endBookmark com o mesmo nome de marcador.

Marcadores mal formados ou marcadores com nomes duplicados serão ignorados quando o documento for salvo.

O exemplo de código a seguir mostra como inserir um marcador em um documento usando um construtor de documentos.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## Inserir um campo

Os Campos dos documentos Microsoft Word consistem num código de campo e num resultado de campo. O código do campo é como uma fórmula e o resultado do campo é o valor que a fórmula produz. O código de campo também pode conter comutadores de campo que são instruções adicionais para executar uma ação específica. Você pode alternar entre a exibição de códigos de campo e resultados em seu documento em Microsoft Word usando o atalho de teclado Alt+F9. Os códigos de campo aparecem entre chaves (`{ }`).Use [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) para criar campos no documento. Você precisa especificar um tipo de campo, Código de campo e valor de campo. Se você não tiver certeza sobre a sintaxe do código de campo específico, crie o campo em Microsoft Word Primeiro e alterne para ver seu código de campo.
O exemplo de código a seguir insere um campo de mesclagem em um documento usando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## Inserir um campo `Form`

Os campos de formulário são um caso particular de campos de palavras que permitem "interacção" com o utilizador. Os campos de formulário em Microsoft Word incluem textbox, Combobox e checkbox.DocumentBuilder fornece métodos especiais para inserir cada tipo de campo de formulário no documento: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int), [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) e [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int). Observe que, se você especificar um nome para o campo do formulário, um marcador será criado automaticamente com o mesmo nome.

### Inserir uma entrada de texto

DocumentBuilder.insertTextInput para inserir uma caixa de texto no documento. O exemplo de código a seguir mostra como inserir um campo de formulário de entrada de texto em um documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Inserir um `CheckBox`

Chamada DocumentBuilder.insertCheckBox para inserir um checkbox no documento. O exemplo de código a seguir mostra como inserir um campo de formulário checkbox em um documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Inserir uma caixa de combinação

Chamada DocumentBuilder.insertComboBox para inserir uma caixa de combinação no documento. O exemplo de código a seguir mostra como inserir um campo de formulário de caixa de combinação em um documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Inserir localidade ao nível do campo

Os clientes podem agora especificar a localidade ao nível do campo e obter um melhor controlo. Os Ids de localidade podem ser associados a cada campo dentro do DocumentBuilder. Os exemplos abaixo ilustram como utilizar esta opção.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## Inserir HTML

Você pode inserir facilmente uma string HTML que contenha um fragmento HTML ou um documento HTML inteiro no documento do Word. Basta passar esta string para o DocumentBuilder.insertHtml Método. Uma das implementações úteis do método é armazenar uma string HTML em um banco de dados e inseri-la no documento durante Mail Merge para obter o conteúdo formatado adicionado em vez de construí-lo usando vários métodos do construtor de documentos. O exemplo de código a seguir mostra inserções HTML em um documento usando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## Inserir uma hiperligação

Use DocumentBuilder.insertHyperlink para inserir uma hiperligação no documento. Este método Aceita três parâmetros: texto do link a ser exibido no documento, destino do link (URL ou o nome de um marcador dentro do documento) e um parâmetro booleano que deve ser verdadeiro se `URL` for o nome de um marcador dentro do documento.DocumentBuilder.insertHyperlink chama internamente DocumentBuilder.insertField. O método sempre adiciona apóstrofos no início e no final do URL. Observe que você precisa especificar a formatação da fonte para o texto de exibição do hiperlink explicitamente usando a propriedade `Font`. O exemplo de código a seguir insere um hiperlink em um documento usando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Inserir um índice

Você pode inserir um campo `TOC` (índice) no documento na posição atual chamando o método [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String). O DocumentBuilder.insertTableOfContents método só irá inserir um campo `TOC` no documento. Para construir o índice e exibi-lo de acordo com os números das páginas, o método both **Document.UpdateFields**deve ser chamado após a inserção do campo. O exemplo de código a seguir mostra como inserir um campo sumário em um documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## Inserir Ole Objecto

Se você quiser Ole Chamada de objeto [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## Definir o nome e a extensão do ficheiro ao inserir o objecto Ole

O pacote OLE é uma maneira legada e" não documentada " de armazenar objetos incorporados se o manipulador OLE for desconhecido. As primeiras Windows versões como Windows 3.1, 95 e 98 tinham uma aplicação Packager.exe que podia ser utilizada para incorporar qualquer tipo de dados no documento. Agora, este aplicativo é excluído de Windows mas MS Word e outros aplicativos ainda o usam para incorporar dados se o manipulador OLE estiver ausente ou desconhecido. OlePackage classe permite aceder a OLE Package Propriedades.O exemplo de código a seguir mostra como definir o nome do arquivo, a extensão e o nome de exibição para OLE Package.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## Obter acesso aos dados brutos do objecto OLE

O exemplo de código a seguir demonstra como obter dados brutos do objeto OLE usando o método `OleFormat.GetRawData` ().

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## Inserir Regra Horizontal no documento

O exemplo de código a seguir mostra como inserir a forma de regra horizontal em um documento usando o método `DocumentBuilder.InsertHorizontalRule`.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## Trabalhar com formas

### Inserção de formas Inline e de flutuação livre

Você pode inserir uma forma embutida com um tipo e tamanho especificados e uma forma flutuante com a posição, tamanho e tipo de quebra de texto especificados em um documento usando o método `DocumentBuilder.InsertShape`. O método `DocumentBuilder.InsertShape` permite inserir a forma DML no modelo do documento. O documento deve ser salvo no formato, que suporta formas DML, caso contrário, esses nós serão convertidos em forma VML, enquanto o documento é salvo. O exemplo de código a seguir mostra como inserir esses tipos de formas no documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### Criar Retângulo De Canto De Recorte

Você pode criar um retângulo de Canto de recorte usando Aspose.Words. Os tipos de formas são SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded, e DiagonalCornersRounded. A forma DML é criada usando o método `DocumentBuilder.InsertShape` com esses tipos de forma. Esses tipos não podem ser usados para criar formas VML. A tentativa de criar uma forma usando o construtor público da classe" Shape "gera a exceção" NotSupportedException". O exemplo de código a seguir mostra como inserir esses tipos de formas no documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### Importar formas com Matemática XML como formas para DOM

Você pode usar a propriedade `LoadOptions.ConvertShapeToOfficeMath` para converter as formas com EquationXML em objetos do Office Math. O valor predefinido desta propriedade corresponde ao comportamento da palavra MS, ou seja, as formas com a equação XML não são convertidas em objectos do Office math.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
