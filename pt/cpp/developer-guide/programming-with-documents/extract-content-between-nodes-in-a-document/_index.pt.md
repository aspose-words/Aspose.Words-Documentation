---
title: Como extrair conteúdo entre nós de documentos
second_title: Aspose.Words para C++
articleTitle: Extrair conteúdo entre nós num documento
linktitle: Extrair Conteúdo Entre Nós
type: docs
description: "Extraindo o conteúdo do documento em diferentes usando C++."
weight: 140
url: /pt/cpp/how-to-extract-selected-content-between-nodes-in-a-document/
---

Ao trabalhar com documentos, é importante poder extrair facilmente o conteúdo de um intervalo específico dentro de um documento. No entanto, o conteúdo pode consistir em elementos complexos, como parágrafos, tabelas, imagens, etc.

Independentemente de qual conteúdo precisa ser extraído, o método para extrair esse conteúdo será sempre determinado por quais nós são selecionados para extrair conteúdo entre. Estes podem ser corpos de texto inteiros ou execuções de texto simples.

Existem muitas situações possíveis e, portanto, muitos tipos de nós diferentes a serem considerados ao extrair conteúdo. Por exemplo, você pode querer extrair conteúdo entre:

- Dois parágrafos específicos
- Textos específicos
- Campos de vários tipos, como campos de fusão
- Intervalos de início e fim de um marcador ou comentário
- Vários corpos de texto contidos em secções separadas

Em algumas situações, pode até ser necessário combinar diferentes tipos de nós, como extrair conteúdo entre um parágrafo e um campo, ou entre uma execução e um marcador.

Este artigo fornece a implementação de código para extrair texto entre diferentes nós, bem como exemplos de cenários comuns.

{{% alert color="primary" %}}

Estes exemplos são apenas algumas demonstrações das muitas possibilidades. Planejamos que a funcionalidade de extração de texto faça parte do público API no futuro, e nenhum código extra será necessário. Entretanto, sinta-se à vontade para publicar os seus pedidos relativos a esta funcionalidade no [Aspose.Words fórum](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Por Que Extrair Conteúdo

Muitas vezes, o objetivo de extrair o conteúdo é duplicá-lo ou salvá-lo separadamente em um novo documento. Por exemplo, você pode extrair conteúdo e:

- Copie-o para um documento separado
- Converter uma parte específica de um documento em PDF ou imagem
- Duplique o conteúdo do documento várias vezes
- Trabalhar com conteúdo extraído separado do resto do documento

Isso pode ser facilmente alcançado usando Aspose.Words e a implementação do código abaixo.

## Extraindo Algoritmo De Conteúdo

O código desta secção aborda todas as situações possíveis acima descritas com um método generalizado e reutilizável. O esboço geral desta técnica envolve:

1. Reunir os nós que ditam a área de conteúdo que será extraída do seu documento. A recuperação desses nós é tratada pelo usuário em seu código, com base no que eles desejam extrair.
1. Passando esses nós para o método **ExtractContent** fornecido abaixo. Você também deve passar um parâmetro booleano que indica se esses nós, atuando como marcadores, devem ser incluídos na extração ou não.
1. Recuperar uma lista de conteúdos clonados (nós copiados) especificados para serem extraídos. Você pode usar essa lista de nós de qualquer maneira aplicável, por exemplo, criando um novo documento contendo apenas o conteúdo selecionado.

## Como extrair conteúdo

Para extrair o conteúdo do seu documento, você precisa chamar o método `ExtractContent` abaixo e passar os parâmetros apropriados. A base subjacente a este método consiste em encontrar nós a nível de bloco (parágrafos e tabelas) e cloná-los para criar cópias idênticas. Se os nós do marcador passados forem de nível de bloco, o método poderá simplesmente copiar o conteúdo nesse nível e adicioná-lo à matriz.

No entanto, se os nós do marcador forem inline (um filho de um parágrafo), a situação torna-se mais complexa, pois é necessário dividir o parágrafo no nó inline, seja uma execução, campos de marcadores, etc. O conteúdo nos nós pai clonados não presentes entre os marcadores é removido. Esse processo é usado para garantir que os nós embutidos ainda mantenham a formatação do parágrafo pai. O método também executará verificações nos nós passados como parâmetros e lançará uma exceção se um dos Nós for inválido. Os parâmetros a serem passados para este método são:

1. **StartNode** e **EndNode**. Os dois primeiros parâmetros são os nós que definem onde a extração do conteúdo deve começar e terminar, respectivamente. Esses nós podem ser em nível de bloco (parágrafo, tabela ) ou em nível embutido (por exemplo, Run, FieldStart, BookmarkStart etc.):
   1. Para passar um campo, você deve passar o objeto **FieldStart** correspondente.
   1. Para passar marcadores, os nós **BookmarkStart** e BookmarkEnd devem ser passados.
   1. Para passar comentários, os nós CommentRangeStart e CommentRangeEnd devem ser usados.
1. **IsInclusive**. Define se os marcadores estão incluídos na extração ou não. Se esta opção for definida como false e o mesmo nó ou nós consecutivos forem passados, uma lista vazia será retornada:

      1. Se um nó **FieldStart** for passado, esta opção define se o campo inteiro deve ser incluído ou excluído.
      1. Se um nó **BookmarkStart** ou **BookmarkEnd** For passado, esta opção define se o marcador está incluído ou apenas o conteúdo entre o intervalo de marcadores.
      1. Se um nó **CommentRangeStart** ou **CommentRangeEnd** For passado, esta opção define se o comentário em si deve ser incluído ou apenas o conteúdo no intervalo de comentários.

A implementação do método **ExtractContent** você pode encontrar [aqui](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Examples/DocsExamples/source/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.h). Este método será referido nos cenários do presente artigo.

Também definiremos um método personalizado para gerar facilmente um documento a partir de nós extraídos. Este método é usado em muitos dos cenários abaixo e simplesmente cria um novo documento e importa o conteúdo extraído para ele.

O exemplo de código a seguir mostra como pegar uma lista de nós e inseri-los em um novo documento.

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "generate-document.h" >}}

## Extrair Conteúdo Entre Parágrafos

Isso demonstra como usar o método acima para extrair conteúdo entre parágrafos específicos. Neste caso, queremos extrair o corpo da carta encontrada na primeira metade do documento. Podemos dizer que isso está entre os 7TH E 11th parágrafos.

O código abaixo cumpre esta tarefa. Os parágrafos apropriados são extraídos usando o método [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) no documento e passando os índices especificados. Em seguida, passamos esses nós para o método **ExtractContent** e declaramos que eles devem ser incluídos na extração. Este método devolverá o conteúdo copiado entre estes nós que são então inseridos num novo documento.

O exemplo de código a seguir mostra como extrair o conteúdo entre parágrafos específicos usando o método `ExtractContent` acima:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraphs.h" >}}

## Extrair conteúdo entre diferentes tipos de nós

Podemos extrair conteúdo entre quaisquer combinações de nós em nível de bloco ou inline. Neste cenário a seguir, extrairemos o conteúdo entre o primeiro parágrafo e a tabela na segunda seção, inclusive. Obtemos os nós marcadores chamando o método `Body.FirstParagraph` e [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) na segunda seção do documento para recuperar os nós de parágrafo e tabela apropriados. Para uma ligeira variação, vamos duplicar o conteúdo e inseri-lo abaixo do original.

O exemplo de código a seguir mostra como extrair o conteúdo entre um parágrafo e uma tabela usando o método `ExtractContent`:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-block-level-nodes.h" >}}

## Extrair conteúdo entre parágrafos com base no estilo

Pode ser necessário extrair o conteúdo entre parágrafos do mesmo estilo ou estilos diferentes, como entre parágrafos marcados com estilos de título. O código abaixo mostra como conseguir isso. É um exemplo simples que extrairá o conteúdo entre a Primeira Instância dos estilos "Heading 1" e "Header 3" sem extrair os títulos também. Para fazer isso, definimos o último parâmetro como false, que especifica que os nós do marcador não devem ser incluídos.

Em uma implementação adequada, isso deve ser executado em um loop para extrair o conteúdo entre todos os parágrafos desses estilos do documento. O conteúdo extraído é copiado para um novo documento.

O exemplo de código a seguir mostra como extrair conteúdo entre parágrafos com estilos específicos usando o método `ExtractContent`:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraph-styles.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "paragraphs-by-style-name.h" >}}

## Extrair Conteúdo Entre Execuções Específicas

Você também pode extrair conteúdo entre nós embutidos, como a [Run](https://reference.aspose.com/words/cpp/aspose.words/run/). **Runs** de diferentes parágrafos podem ser passados como marcadores. O código abaixo mostra como extrair texto específico entre o mesmo nó **Paragraph**.

O exemplo de código a seguir mostra como extrair conteúdo entre execuções específicas do mesmo parágrafo usando o método **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-runs.h" >}}

## Extrair conteúdo utilizando um campo

Para usar um campo como marcador, o nó `FieldStart` deve ser passado. O último parâmetro para o método `ExtractContent` definirá se o campo inteiro deve ser incluído ou não. Vamos extrair o conteúdo entre o campo de mesclagem" FullName " e um parágrafo no documento. Usamos o método [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/) da classe [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/). Isso retornará o nó **FieldStart** do nome do campo de mesclagem passado para ele.

No nosso caso, vamos definir o último parâmetro passado para o método **ExtractContent** como false para excluir o campo da extração. Vamos renderizar o conteúdo extraído para PDF.

O exemplo de código a seguir mostra como extrair conteúdo entre um campo específico e um parágrafo no documento usando o método **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-field.h" >}}

## Extrair conteúdo de um marcador

Em um documento, o conteúdo definido em um marcador é encapsulado pelos nós `BookmarkStart` e BookmarkEnd. O conteúdo encontrado entre estes dois nós constitui o marcador. Você pode passar qualquer um desses nós como qualquer marcador, mesmo aqueles de marcadores diferentes, desde que o marcador inicial apareça antes do marcador final no documento. Vamos extrair este conteúdo para um novo documento usando o código abaixo. A opção de parâmetro **IsInclusive** mostra como reter ou descartar o marcador.

O exemplo de código a seguir mostra como extrair o conteúdo referenciado a um marcador usando o método **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-bookmark.h" >}}

## Extrair conteúdo de um comentário

Um comentário é composto pelos nós CommentRangeStart, CommentRangeEnd e Comment. Todos esses nós são inline. Os dois primeiros nós encapsulam o conteúdo do documento que é referenciado pelo comentário, como pode ser visto na imagem abaixo.

O nó **Comment** em si é um InlineStory que pode conter parágrafos e execuções. Ele representa a mensagem do comentário como visto como uma bolha de comentário no painel de visualização. Como este nó é embutido e descendente de um corpo, você também pode extrair o conteúdo de dentro desta mensagem.

O comentário contém o título, o primeiro parágrafo e o quadro da segunda secção. Vamos extrair este comentário para um novo documento. A opção **IsInclusive** determina se o comentário em si é mantido ou descartado.

O exemplo de código a seguir mostra como fazer isso:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-comment-range.h" >}}

## Como extrair conteúdo usando DocumentVisitor

Use a classe [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/) para implementar esse cenário de uso. Esta classe corresponde ao conhecido padrão de design do visitante. Com **DocumentVisitor,** é possível definir e executar operações personalizadas que requerem enumeração sobre a árvore de documentos.

**DocumentVisitor**

Cada método **DocumentVisitor.VisitXXX** retorna um valor [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/) que controla a enumeração de nós. Você pode solicitar a continuação da enumeração, ignorar o nó atual (mas continuar a enumeração) ou interromper a enumeração de nós.

Estas são as etapas que você deve seguir para determinar e extrair programaticamente várias partes de um documento:

- Criar uma classe derivada de **DocumentVisitor**
- Substituir e fornecer implementações para alguns ou todos os métodos **DocumentVisitor.VisitXXX** para executar algumas operações personalizadas
- Chame `Node.Accept` no nó de onde deseja iniciar a enumeração. Por exemplo, se você quiser enumerar o documento inteiro, use `Document.Accept`

**DocumentVisitor**

Este exemplo mostra como usar o padrão de Visitante para adicionar novas operações ao modelo de objeto Aspose.Words. Neste caso, criamos um conversor de documentos simples em formato de texto:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-document-visitor.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "convert-doc-to-txt.h" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Como extrair apenas texto

As formas de recuperar texto do documento são:

- Use [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) com [SaveFormat.Text](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) para salvar como texto simples em um arquivo ou fluxo
- Use [Node.ToString](https://reference.aspose.com/words/cpp/aspose.words/node/tostring/) e passe o parâmetro **SaveFormat.Text**. Internamente, isso invoca Salvar como texto em um fluxo de memória e retorna a string resultante
- Use [Node.GetText](https://reference.aspose.com/words/cpp/aspose.words/node/gettext/) para recuperar texto com todos os caracteres de controle Microsoft Word, incluindo códigos de campo
- Implementar um custom [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/) para executar a extração customizada

### Utilização de `Node.GetText` e `Node.ToString`

Um documento do Word pode conter caracteres de controlo que designam elementos especiais, tais como campo, fim da célula, fim da secção, etc. A lista completa dos possíveis caracteres de controlo de palavras é definida na classe [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/). O método **Node.GetText** retorna texto com todos os caracteres de caracteres de controle presentes no nó.

Chamar **ToString** retorna a representação de texto simples do documento apenas sem caracteres de controle.

O exemplo de código a seguir mostra a diferença entre chamar os métodos **GetText** e **ToString** em um nó:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "simple-extract-text.h" >}}

### Usando `SaveFormat.Text`

Este exemplo guarda o documento da seguinte forma:

- Filtra caracteres de campo e códigos de campo, forma, nota de rodapé, nota de fim e referências de comentários
- Substitui os caracteres do fim do parágrafo **ControlChar.Cr** por combinações **ControlChar.CrLf**
- Utiliza a codificação UTF8

O exemplo de código a seguir mostra como salvar um documento no formato TXT:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "docx-to-txt.h" >}}

## Extrair imagens de formas

Pode ser necessário extrair imagens de documentos para executar algumas tarefas. Aspose.Words permite que você faça isso também.

O exemplo de código a seguir mostra como extrair imagens de um documento:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-images.h" >}}