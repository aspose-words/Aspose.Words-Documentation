---
title: Como extrair conteúdo entre nós de documentos
second_title: Aspose.Words para .NET
articleTitle: Extrair conteúdo entre nós em um documento
linktitle: Extraia conteúdo entre nós
description: "Extrair o conteúdo do documento de diferentes maneiras usando C#."
type: docs
weight: 140
url: /pt/net/how-to-extract-selected-content-between-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Ao trabalhar com documentos, é importante poder extrair facilmente o conteúdo de um intervalo específico de um documento. No entanto, o conteúdo pode consistir em elementos complexos, como parágrafos, tabelas, imagens, etc.

Independentemente do conteúdo que precisa ser extraído, o método para extrair esse conteúdo sempre será determinado pelos nós selecionados para extrair o conteúdo. Podem ser corpos de texto inteiros ou trechos de texto simples.

Existem muitas situações possíveis e, portanto, muitos tipos de nós diferentes a serem considerados ao extrair conteúdo. Por exemplo, você pode querer extrair conteúdo entre:

- Dois parágrafos específicos
- Execuções específicas de texto
- Campos de vários tipos, como campos de mesclagem
- Intervalos inicial e final de um marcador ou comentário
- Vários corpos de texto contidos em seções separadas

Em algumas situações, pode até ser necessário combinar diferentes tipos de nós, como extrair conteúdo entre um parágrafo e um campo ou entre uma execução e um marcador.

Este artigo fornece a implementação de código para extrair texto entre diferentes nós, bem como exemplos de cenários comuns.

{{% alert color="primary" %}}

Esses exemplos são apenas algumas demonstrações das muitas possibilidades. Planejamos que a funcionalidade de extração de texto faça parte do API público no futuro e nenhum código extra será necessário. Enquanto isso, fique à vontade para postar suas solicitações em relação a essa funcionalidade no [Fórum Aspose.Words](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Por que extrair conteúdo

Muitas vezes, o objetivo da extração do conteúdo é duplicá-lo ou salvá-lo separadamente em um novo documento. Por exemplo, você pode extrair conteúdo e:

- Copie-o em um documento separado
- Converta uma parte específica de um documento em PDF ou imagem
- Duplicar o conteúdo do documento muitas vezes
- Trabalhe com conteúdo extraído separado do resto do documento

Isso pode ser facilmente alcançado usando Aspose.Words e a implementação do código abaixo.

## Extraindo Algoritmo de Conteúdo

O código nesta seção aborda todas as situações possíveis descritas acima com um método generalizado e reutilizável. O esboço geral desta técnica envolve:

1. Reunir os nós que determinam a área de conteúdo que será extraída do seu documento. A recuperação desses nós é feita pelo usuário em seu código, com base no que ele deseja extrair.
1. Passando esses nós para o método **ExtractContent** fornecido abaixo. Você também deve passar um parâmetro booleano que indica se esses nós, atuando como marcadores, devem ser incluídos na extração ou não.
1. Recuperar uma lista de conteúdo clonado (nós copiados) especificado para ser extraído. Você pode usar esta lista de nós de qualquer maneira aplicável, por exemplo, criando um novo documento contendo apenas o conteúdo selecionado.

## Como extrair conteúdo

Para extrair o conteúdo do seu documento você precisa chamar o método **ExtractContent** abaixo e passar os parâmetros apropriados. A base subjacente deste método envolve encontrar nós em nível de bloco (parágrafos e tabelas) e cloná-los para criar cópias idênticas. Se os nós marcadores passados forem no nível do bloco, o método será capaz de simplesmente copiar o conteúdo nesse nível e adicioná-lo ao array.

No entanto, se os nós marcadores estiverem embutidos (filhos de um parágrafo), a situação se torna mais complexa, pois é necessário dividir o parágrafo no nó embutido, seja uma execução, campos de marcadores, etc. presente entre os marcadores é removido. Este processo é usado para garantir que os nós embutidos ainda manterão a formatação do parágrafo pai. O método também executará verificações nos nós passados como parâmetros e lançará uma exceção se algum dos nós for inválido. Os parâmetros a serem passados para este método são:

1. **StartNode** e **EndNode**. Os dois primeiros parâmetros são os nós que definem onde a extração do conteúdo deve começar e terminar, respectivamente. Esses nós podem ser de nível de bloco ([Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/)) ou de nível inline (por exemplo, [Run](https://reference.aspose.com/words/net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/net/aspose.words/bookmark/bookmarkstart/) etc.):
   1. Para passar um campo você deve passar o objeto **FieldStart** correspondente
   1. Para passar marcadores, os nós **BookmarkStart** e [BookmarkEnd](https://reference.aspose.com/words/net/aspose.words/bookmark/bookmarkend/) devem ser passados
   1. Para passar comentários, devem ser utilizados os nós [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) e [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/)
1. **IsInclusive**. Define se os marcadores serão incluídos na extração ou não. Se esta opção for definida como false e o mesmo nó ou nós consecutivos forem passados, uma lista vazia será retornada:
   1. Se um nó **FieldStart** for passado, esta opção define se todo o campo deve ser incluído ou excluído
   1. Se for passado um nó **BookmarkStart** ou **BookmarkEnd**, esta opção define se o marcador está incluído ou apenas o conteúdo entre o intervalo de marcadores.
   1. Se for passado um nó **CommentRangeStart** ou **CommentRangeEnd**, esta opção define se o comentário em si deve ser incluído ou apenas o conteúdo da faixa de comentários.

A implementação do método **ExtractContent** você pode encontrar em [em Aspose.WordsGitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.cs). Este método será mencionado nos cenários deste artigo.

Também definiremos um método personalizado para gerar facilmente um documento a partir de nós extraídos. Este método é usado em muitos dos cenários abaixo e simplesmente cria um novo documento e importa o conteúdo extraído para ele.

O exemplo de código a seguir mostra como pegar uma lista de nós e inseri-los em um novo documento:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "generate-document.cs" >}}

## Extraia conteúdo entre parágrafos

Isso demonstra como usar o método acima para extrair conteúdo entre parágrafos específicos. Neste caso, queremos extrair o corpo da carta que se encontra na primeira metade do documento. Podemos dizer que isso está entre o 7º e o 11º parágrafo.

O código abaixo realiza esta tarefa. Os parágrafos apropriados são extraídos usando o método [GetChild](https://reference.aspose.com/words/net/aspose.words/compositenode/) no documento e passando os índices especificados. Em seguida, passamos esses nós para o método **ExtractContent** e declaramos que eles serão incluídos na extração. Este método retornará o conteúdo copiado entre esses nós que serão então inseridos em um novo documento.

O exemplo de código a seguir mostra como extrair o conteúdo entre parágrafos específicos usando o método `ExtractContent` acima:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraphs.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraia conteúdo entre diferentes tipos de nós

Podemos extrair conteúdo entre quaisquer combinações de nível de bloco ou nós embutidos. Neste cenário abaixo iremos extrair o conteúdo entre o primeiro parágrafo e a tabela da segunda seção inclusive. Obtemos os nós marcadores chamando os métodos [FirstParagraph](https://reference.aspose.com/words/net/aspose.words/story/firstparagraph/) e [GetChild](https://reference.aspose.com/words/net/aspose.words/compositenode/getchild/) na segunda seção do documento para recuperar os nós **Paragraph** e **Table** apropriados. Para uma pequena variação, vamos duplicar o conteúdo e inseri-lo abaixo do original.

O exemplo de código a seguir mostra como extrair o conteúdo entre um parágrafo e uma tabela usando o método **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-block-level-nodes.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraia conteúdo entre parágrafos com base no estilo

Talvez seja necessário extrair o conteúdo entre parágrafos do mesmo estilo ou de estilo diferente, como entre parágrafos marcados com estilos de título. O código abaixo mostra como conseguir isso. É um exemplo simples que irá extrair o conteúdo entre a primeira instância dos estilos "Título 1" e "Cabeçalho 3" sem extrair também os títulos. Para fazer isso, definimos o último parâmetro como false, que especifica que os nós marcadores não devem ser incluídos.

Em uma implementação adequada, isso deve ser executado em loop para extrair o conteúdo entre todos os parágrafos desses estilos do documento. O conteúdo extraído é copiado para um novo documento.

O exemplo de código a seguir mostra como extrair conteúdo entre parágrafos com estilos específicos usando o método **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraph-styles.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "paragraphs-by-style-name.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraia conteúdo entre execuções específicas

Você também pode extrair conteúdo entre nós embutidos, como [Run](https://reference.aspose.com/words/net/aspose.words/run/). **Runs** de diferentes parágrafos podem ser passados como marcadores. O código abaixo mostra como extrair texto específico entre o mesmo nó **Paragraph**.

O exemplo de código a seguir mostra como extrair conteúdo entre execuções específicas do mesmo parágrafo usando o método **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-runs.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraia conteúdo usando um campo

Para utilizar um campo como marcador, deve-se passar o nó `FieldStart`. O último parâmetro do método `ExtractContent` definirá se todo o campo será incluído ou não. Vamos extrair o conteúdo entre o campo de mesclagem "FullName" e um parágrafo do documento. Usamos o método [MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/) da classe [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/). Isso retornará o nó **FieldStart** do nome do campo de mesclagem passado para ele.

No nosso caso vamos definir o último parâmetro passado ao método **ExtractContent** como false para excluir o campo da extração. Iremos renderizar o conteúdo extraído em PDF.

O exemplo de código a seguir mostra como extrair conteúdo entre um campo e parágrafo específico no documento usando o método **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-field.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraia conteúdo de um marcador

Em um documento, o conteúdo definido em um marcador é encapsulado pelos nós `BookmarkStart` e BookmarkEnd. O conteúdo encontrado entre esses dois nós constitui o marcador. Você pode passar qualquer um desses nós como qualquer marcador, mesmo aqueles de marcadores diferentes, desde que o marcador inicial apareça antes do marcador final no documento. Extrairemos esse conteúdo para um novo documento usando o código abaixo. A opção do parâmetro **IsInclusive** mostra como manter ou descartar o marcador.

O exemplo de código a seguir mostra como extrair o conteúdo referenciado em um marcador usando o método **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-bookmark.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraia o conteúdo de um comentário

Um comentário é composto pelos nós CommentRangeStart, CommentRangeEnd e Comment. Todos esses nós estão embutidos. Os dois primeiros nós encapsulam o conteúdo do documento referenciado pelo comentário, conforme visto na imagem abaixo.

O próprio nó **Comment** é um [InlineStory](https://reference.aspose.com/words/net/aspose.words/inlinestory/) que pode conter parágrafos e execuções. Ele representa a mensagem do comentário vista como um balão de comentários no painel de revisão. Como este nó é inline e descendente de um corpo, você também pode extrair o conteúdo de dentro desta mensagem.

O comentário encapsula o título, o primeiro parágrafo e a tabela da segunda seção. Vamos extrair este comentário para um novo documento. A opção **IsInclusive** determina se o comentário em si será mantido ou descartado.

O exemplo de código a seguir mostra como fazer isso:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-comment-range.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Como extrair conteúdo usando DocumentVisitor

Use a classe [DocumentVisitor](https://reference.aspose.com/words/net/aspose.words/documentvisitor/) para implementar este cenário de uso. Esta classe corresponde ao conhecido padrão de design Visitor. Com **DocumentVisitor** **,** você pode definir e executar operações personalizadas que requerem enumeração na árvore do documento.

**DocumentVisitor** fornece um conjunto de métodos **VisitXXX** que são invocados quando um elemento específico do documento (nó) é encontrado. Por exemplo, [VisitParagraphStart](https://reference.aspose.com/words/net/aspose.words/documentvisitor/visitparagraphstart/) é chamado quando o início de um parágrafo de texto é encontrado e [VisitParagraphEnd](https://reference.aspose.com/words/net/aspose.words/documentvisitor/visitparagraphend/) é chamado quando o final de um parágrafo de texto é encontrado. Cada método **DocumentVisitor.VisitXXX** aceita o objeto correspondente encontrado para que você possa usá-lo conforme necessário (digamos, recuperar a formatação), por exemplo, tanto **DocumentVisitor.VisitParagraphStart** quanto **DocumentVisitor.VisitParagraphEnd** aceitam um objeto [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/).

Cada método **DocumentVisitor.VisitXXX** retorna um valor [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/) que controla a enumeração de nós. Você pode solicitar a continuação da enumeração, ignorar o nó atual (mas continuar a enumeração) ou interromper a enumeração de nós.

Estas são as etapas que você deve seguir para determinar e extrair programaticamente várias partes de um documento:

- Crie uma classe derivada de **DocumentVisitor**
- Substituir e fornecer implementações para alguns ou todos os métodos **DocumentVisitor.VisitXXX** para realizar algumas operações personalizadas
- Chame [Node.Accept](https://reference.aspose.com/words/net/aspose.words/node/accept/) no nó de onde deseja iniciar a enumeração, por exemplo, se quiser enumerar o documento inteiro, utilize [Document.Accept](https://reference.aspose.com/words/net/aspose.words/document/accept/)

**DocumentVisitor** fornece implementações padrão para todos os métodos **DocumentVisitor.VisitXXX**. Isto facilita a criação de novos visitantes de documentos, pois apenas os métodos necessários para o visitante específico precisam ser substituídos. Não é necessário substituir todos os métodos do visitante.

O exemplo a seguir mostra como usar o padrão Visitor para adicionar novas operações ao modelo de objeto Aspose.Words. Neste caso, criamos um conversor simples de documentos em formato de texto:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-document-visitor.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "convert-doc-to-txt.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Como extrair apenas texto

As maneiras de recuperar texto do documento são:

- Use [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/) com [SaveFormat.Text](https://reference.aspose.com/words/net/aspose.words/saveformat/) para salvar como texto simples em um arquivo ou fluxo
- Utilize [Node.ToString](https://reference.aspose.com/words/net/aspose.words/node/tostring/) e passe o parâmetro **SaveFormat.Text**. Internamente, isso invoca salvar como texto em um fluxo de memória e retorna a string resultante
- Use [Node.GetText](https://reference.aspose.com/words/net/aspose.words/node/gettext/) para recuperar texto com todos os caracteres de controle Microsoft Word, incluindo códigos de campo
- Implementar um [DocumentVisitor](https://reference.aspose.com/words/net/aspose.words/documentvisitor/) customizado para realizar extração customizada

### Usando `Node.GetText` e `Node.ToString`

Um documento do Word pode conter caracteres de controle que designam elementos especiais como campo, fim de célula, fim de seção etc. A lista completa de possíveis caracteres de controle do Word é definida na classe **ControlChar**. O método **Node.GetText** retorna texto com todos os caracteres de controle presentes no nó.

Chamar **ToString** retorna a representação de texto simples do documento apenas sem caracteres de controle. Para mais informações sobre a exportação como texto simples, consulte a seção **"Usando SaveFormat.Text"** a seguir.

O exemplo de código a seguir mostra a diferença entre chamar os métodos **GetText** e **ToString** em um nó:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "simple-extract-text.cs" >}}

### Usando `SaveFormat.Text`

Este exemplo salva o documento da seguinte maneira:

- Filtra caracteres e códigos de campo, formas, notas de rodapé, notas finais e referências de comentários
- Substitui caracteres **ControlChar.Cr** de final de parágrafo por combinações **ControlChar.CrLf**
- Usa codificação UTF8

O exemplo de código a seguir mostra como salvar um documento no formato TXT:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "docx-to-txt.cs" >}}

## Extrair imagens de formas

Pode ser necessário extrair imagens de documentos para executar algumas tarefas. Aspose.Words também permite que você faça isso.

O exemplo de código a seguir mostra como extrair imagens de um documento:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-images.cs" >}}
