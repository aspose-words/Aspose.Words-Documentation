---
title: Use `DocumentBuilder` para Inserir Elementos do documento
second_title: Aspose.Words para C++
articleTitle: Use `DocumentBuilder` para Inserir Elementos do documento
linktitle: Use `DocumentBuilder` para Inserir Elementos do documento
type: docs
description: "Insira elementos do documento usando o document builder em C++."
weight: 80
url: /pt/cpp/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

O `DocumentBuilder` é utilizado para modificar documentos. Este artigo explica e descreve como executar uma série de Tarefas:

## Inserir uma sequência de texto

Basta passar a sequência de texto que você precisa inserir no documento para o método `DocumentBuilder.Write`. A formatação do texto é determinada pela propriedade `Font`. Este objeto contém diferentes atributos de fonte (Nome da fonte, tamanho da fonte, cor, etc.). Alguns atributos de fonte importantes também são representados por propriedades DocumentBuilder para permitir que você os acesse diretamente. Estas são propriedades booleanas `Font.Bold`, `Font.Italic` e `Font.Underline`.

Observe que a formatação de caracteres definida será aplicada a todo o texto inserido a partir da posição atual no documento.

O exemplo abaixo insere texto formatado usando DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WriteAndFont-WriteAndFont.cpp" >}}

## Inserir um parágrafo

 `DocumentBuilder.Writeln` também insere uma sequência de texto no documento, mas, além disso, adiciona uma quebra de parágrafo. A formatação de fonte atual também é especificada pela propriedade `DocumentBuilder.Font` e a formatação de parágrafo atual é determinada pela propriedade `DocumentBuilder.ParagraphFormat`. O exemplo abaixo mostra como inserir um parágrafo no documento.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Inserir uma tabela

O algoritmo básico para criar uma tabela usando DocumentBuilder é simples:

1. Inicie a tabela utilizando `DocumentBuilder.StartTable`.
1. Insira uma célula usando `DocumentBuilder.InsertCell`. Isso inicia automaticamente uma nova linha. Se necessário, use a propriedade `DocumentBuilder.CellFormat` para especificar a formatação da célula.
1. Insira o conteúdo da célula usando os métodos `DocumentBuilder`.
1. Repita as etapas 2 e 3 até que a linha esteja completa.
1. Chame `DocumentBuilder.EndRow` para terminar a linha atual. Se necessário, use a propriedade `DocumentBuilder.RowFormat` para especificar a formatação da linha.
1. Repita os passos 2 - 5 até que a tabela esteja completa.
1. Chame `DocumentBuilder.EndTable` para terminar a construção da tabela. Os métodos apropriados de criação de tabelas DocumentBuilder são descritos abaixo.

### Iniciar uma mesa

Chamar `DocumentBuilder.StartTable` é o primeiro passo na construção de uma tabela. Também pode ser chamado dentro de uma célula, caso em que inicia uma tabela aninhada. O próximo método a chamar é `DocumentBuilder.InsertCell`.

### Inserir uma célula

Depois de chamar `DocumentBuilder->InsertCell`, uma nova célula é criada e qualquer conteúdo que você adicionar usando outros métodos da classe `DocumentBuilder` será adicionado à célula atual. Para iniciar uma nova célula na mesma linha, chame `DocumentBuilder->InsertCell` novamente. Use a propriedade `DocumentBuilder.CellFormat` para especificar a formatação da célula. Ele retorna um objeto `CellFormat` que representa toda a formatação de uma célula da tabela.

### Terminar uma linha

Chame `DocumentBuilder.EndRow` para terminar a linha atual. Se você chamar `DocumentBuilder->InsertCell` imediatamente depois disso, a tabela continuará em uma nova linha.

Use a propriedade `DocumentBuilder.RowFormat` para especificar a formatação da linha. Ele retorna um objeto `RowFormat` que representa toda a formatação de uma linha de tabela.

### Terminar uma mesa

Chame `DocumentBuilder.EndTable` para terminar a tabela atual. Este método deve ser chamado apenas uma vez após `DocumentBuilder->EndRow` ter sido chamado. Quando chamado, `DocumentBuilder.EndTable` move o cursor para fora da célula atual para uma posição logo após a tabela. O exemplo a seguir demonstra como construir uma tabela formatada que contém 2 linhas e 2 colunas.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.cpp" >}}

## Inserir uma pausa

Se pretender iniciar explicitamente uma nova linha, parágrafo, coluna, secção ou página, ligue para `DocumentBuilder.InsertBreak`. Passe para este método o tipo de quebra que você precisa inserir Que é representado pela enumeração `BreakType`. O exemplo abaixo mostra como inserir quebras de página em um documento.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.cpp" >}}

## Inserir uma imagem

DocumentBuilder fornece várias sobrecargas do método `DocumentBuilder->InsertImage` que permite inserir uma imagem embutida ou flutuante. Se a imagem for um metarquivo EMF ou WMF, será inserida no documento em formato metarquivo. Todas as outras imagens serão armazenadas no formato PNG. O método `DocumentBuilder->InsertImage` pode utilizar imagens de diferentes fontes:

- De um arquivo ou `URL` passando um parâmetro de string `DocumentBuilder->InsertImage`.
- De um fluxo passando um parâmetro `Stream` `DocumentBuilder->InsertImage`.
- De um objeto de imagem passando um parâmetro de Imagem `DocumentBuilder->InsertImage`.
- De uma matriz de bytes passando um parâmetro de matriz de bytes `DocumentBuilder.InsertImage`.Para cada um dos métodos `DocumentBuilder->InsertImage`, existem outras sobrecargas que permitem inserir uma imagem com as seguintes opções:
- Inline ou flutuante numa posição específica, por exemplo, `DocumentBuilder->InsertImage`.
- Escala percentual ou tamanho personalizado, por exemplo, `DocumentBuilder.InsertImage`. Além disso, o método `DocumentBuilder->InsertImage` retorna um objeto `Shape` que acabou de ser criado e inserido para que você possa modificar ainda mais as propriedades da forma.

### Inserir uma imagem embutida

Passe uma única string representando um arquivo que contém a imagem para `DocumentBuilder->InsertImage` para inserir a imagem no documento como um gráfico embutido. O exemplo abaixo mostra como inserir uma imagem embutida na posição do cursor em um documento.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cpp" >}}

### Inserir uma imagem flutuante (absolutamente posicionada)

Este exemplo insere uma imagem flutuante de um arquivo ou `URL` em uma posição e tamanho especificados.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cpp" >}}

## Inserir um marcador

Para inserir um marcador no documento, você deve fazer o seguinte:

1. Chame `DocumentBuilder->StartBookmark` passando - lhe o nome desejado do marcador.
1. Insira o texto do marcador utilizando os métodos DocumentBuilder.
1. Chame `DocumentBuilder.EndBookmark` passando o mesmo nome que você usou com **DocumentBuilder->StartBookmark**.
1. Os marcadores podem sobrepor-se e abranger qualquer intervalo. Para criar um marcador válido, é necessário chamar `DocumentBuilder->StartBookmark` e `DocumentBuilder->EndBookmark` com o mesmo nome de marcador.

{{% alert color="primary" %}}

Marcadores mal formados ou marcadores com nomes duplicados serão ignorados quando o documento for salvo.

{{% /alert %}}

O exemplo abaixo mostra como inserir um marcador em um documento usando um construtor de documentos.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.cpp" >}}

## Inserir um campo `Form`

Os campos de formulário são um caso particular de campos de palavras que permitem "interacção" com o utilizador. Os campos de formulário em Microsoft Word incluem caixa de texto, caixa de combinação e caixa de seleção.DocumentBuilder fornece métodos especiais para inserir cada tipo de campo de formulário no documento: `DocumentBuilder.InsertTextInput`, `DocumentBuilder->InsertCheckBox` e `DocumentBuilder.InsertComboBox`. Observe que, se você especificar um nome para o campo do formulário, um marcador será criado automaticamente com o mesmo nome.

### Inserir uma entrada de texto

 `DocumentBuilder.InsertTextInput` para inserir uma caixa de texto no documento. O exemplo abaixo mostra como inserir um campo de formulário de entrada de texto em um documento.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cpp" >}}

### Inserir uma caixa de verificação

Chame `DocumentBuilder.InsertCheckBox` para inserir uma caixa de seleção no documento. O exemplo abaixo mostra como inserir um campo de formulário de caixa de seleção em um documento.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cpp" >}}

### Inserir uma caixa de combinação

Chame `DocumentBuilder.InsertComboBox` para inserir uma caixa de combinação no documento. O exemplo abaixo mostra como inserir um campo de formulário de caixa de combinação em um documento.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cpp" >}}

## Inserir localidade ao nível do campo

Os clientes podem agora especificar a localidade ao nível do campo e obter um melhor controlo. Os Ids de localidade podem ser associados a cada campo dentro do DocumentBuilder. Os exemplos abaixo ilustram como utilizar esta opção.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

## Inserir uma hiperligação

Utilize `DocumentBuilder.InsertHyperlink` para inserir uma hiperligação no documento. Este método Aceita três parâmetros: texto do link a ser exibido no documento, destino do link (URL ou o nome de um marcador dentro do documento) e um parâmetro booleano que deve ser verdadeiro se o `URL` for o nome de um marcador dentro do documento.DocumentBuilder.InsertHyperlink chama internamente `DocumentBuilder.InsertField`.O método sempre adiciona apóstrofos no início e no final do URL. Observe que você precisa especificar a formatação da fonte para o texto de exibição do hiperlink explicitamente usando a propriedade `Font`. O exemplo abaixo insere uma hiperligação num documento utilizando DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Inserir Objecto Ole

Se você quiser OLE Object call `DocumentBuilder.InsertOleObject`. Passe para este método o `ProgId` explicitamente com outros parâmetros. O exemplo abaixo mostra como inserir o objeto Ole em um documento.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cpp" >}}

## Definir o nome e a extensão do ficheiro ao inserir o objecto Ole

OLE package é uma maneira legada e" não documentada " de armazenar objetos incorporados se o manipulador OLE for desconhecido. As primeiras Windows versões como Windows 3.1, 95 e 98 tinham Packager.aplicação exe que pode ser utilizada para incorporar qualquer tipo de dados no documento. Agora, este aplicativo é excluído do Windows mas MS Word e outros aplicativos ainda o usam para incorporar dados se o manipulador OLE estiver ausente ou desconhecido. OlePackage classe permite aceder a OLE Propriedades do pacote. Abaixo exemplo mostra como definir o nome do arquivo, extensão e nome de exibição para OLE Pacote.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cpp" >}}

## Inserir HTML

Você pode inserir facilmente uma string HTML que contenha um fragmento HTML ou um documento HTML inteiro no documento do Word. Basta passar esta string para o método `DocumentBuilder->InsertHtml`. Uma das implementações úteis do método é armazenar uma string HTML em um banco de dados e inseri-la no documento durante Mail Merge para obter o conteúdo formatado adicionado em vez de construí-lo usando vários métodos do construtor de documentos. O exemplo abaixo mostra inserções HTML em um documento usando DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHtml.cpp" >}}

## Inserir Regra Horizontal no documento

O exemplo Below code mostra como inserir a forma de regra horizontal em um documento usando o método `DocumentBuilder->InsertHorizontalRule`.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cpp" >}}
