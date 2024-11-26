---
title: Extrair conteúdo selecionado entre nós em Java
second_title: Aspose.Words para Java
articleTitle: Extrair conteúdo entre nós num documento
linktitle: Extrair Conteúdo Entre Nós
type: docs
description: "Extraindo o conteúdo do documento em diferentes usando Java."
weight: 140
url: /pt/java/extract-selected-content-between-nodes/
timestamp: 2024-01-27-14-07-04
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

Estes exemplos são apenas algumas demonstrações das muitas possibilidades. Planejamos que a funcionalidade de extração de texto faça parte do público API no futuro, e nenhum código extra será necessário. Entretanto, sinta-se à vontade para publicar os seus pedidos relativos a esta funcionalidade no [Aspose.Words f](https://forum.aspose.com/c/words/8).

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

Trabalharemos com o documento abaixo neste artigo. Como você pode ver, ele contém uma variedade de conteúdos. Observe também que o documento contém uma segunda seção que começa no meio da primeira página. Um marcador e um comentário também estão presentes no documento, mas não são visíveis na imagem abaixo.

![extract-content-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-1.png)

Para extrair o conteúdo do seu documento, você precisa chamar o método `ExtractContent` abaixo e passar os parâmetros apropriados.

A base subjacente a este método consiste em encontrar nós a nível de bloco (parágrafos e tabelas) e cloná-los para criar cópias idênticas. Se os nós do marcador passados forem de nível de bloco, o método poderá simplesmente copiar o conteúdo nesse nível e adicioná-lo à matriz.

No entanto, se os nós do marcador forem inline (um filho de um parágrafo), a situação torna-se mais complexa, pois é necessário dividir o parágrafo no nó inline, seja uma execução, campos de marcadores, etc. O conteúdo nos nós pai clonados não presentes entre os marcadores é removido. Esse processo é usado para garantir que os nós embutidos ainda mantenham a formatação do parágrafo pai.

O método também executará verificações nos nós passados como parâmetros e lançará uma exceção se um dos Nós for inválido. Os parâmetros a serem passados para este método são:

1. **StartNode** e **EndNode**. Os dois primeiros parâmetros são os nós que definem onde a extração do conteúdo deve começar e terminar, respectivamente. Esses nós podem ser de nível de bloco ([Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/)) ou nível embutido (por exemplo [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) etc.):
   1. Para passar um campo, você deve passar o objeto **FieldStart** correspondente.
   1. Para passar marcadores, os nós **BookmarkStart** e [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) devem ser passados.
   1. Para passar comentários, os nós [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) e [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) devem ser usados.
1. **IsInclusive**. Define se os marcadores estão incluídos na extração ou não. Se esta opção for definida como false e o mesmo nó ou nós consecutivos forem passados, uma lista vazia será retornada:

      1. Se um nó **FieldStart** for passado, esta opção define se o campo inteiro deve ser incluído ou excluído.
      1. Se um nó **BookmarkStart** ou **BookmarkEnd** For passado, esta opção define se o marcador está incluído ou apenas o conteúdo entre o intervalo de marcadores.
      1. Se um nó **CommentRangeStart** ou **CommentRangeEnd** For passado, esta opção define se o comentário em si deve ser incluído ou apenas o conteúdo no intervalo de comentários.

A implementação do método **ExtractContent** você pode encontrar [aqui](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Programming_with_documents/Contents_management/ExtractContentHelper.java). Este método será referido nos cenários do presente artigo.

Também definiremos um método personalizado para gerar facilmente um documento a partir de nós extraídos. Este método é usado em muitos dos cenários abaixo e simplesmente cria um novo documento e importa o conteúdo extraído para ele.

O exemplo de código a seguir mostra como pegar uma lista de nós e inseri-los em um novo documento:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "generate-document.java" >}}

## Extrair Conteúdo Entre Parágrafos

Isso demonstra como usar o método acima para extrair conteúdo entre parágrafos específicos. Neste caso, queremos extrair o corpo da carta encontrada na primeira metade do documento. Podemos dizer que isso está entre os parágrafos 7 e 11.

O código abaixo cumpre esta tarefa. Os parágrafos apropriados são extraídos usando o método [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) no documento e passando os índices especificados. Em seguida, passamos esses nós para o método **ExtractContent** e declaramos que eles devem ser incluídos na extração. Este método devolverá o conteúdo copiado entre estes nós que são então inseridos num novo documento.

O exemplo de código a seguir mostra como extrair o conteúdo entre parágrafos específicos usando o método `ExtractContent` acima:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraphs.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

O documento de saída contém os dois parágrafos que foram extraídos.

![extract-content-result-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-2.png)

## Extrair conteúdo entre diferentes tipos de nós

Podemos extrair conteúdo entre quaisquer combinações de nós em nível de bloco ou inline. Neste cenário a seguir, extrairemos o conteúdo entre o primeiro parágrafo e a tabela na segunda seção, inclusive. Obtemos os nós marcadores chamando o método [getFirstParagraph](https://reference.aspose.com/words/java/com.aspose.words/body/#getFirstParagraph) e [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) na segunda seção do documento para recuperar os nós **Paragraph** e **Table** apropriados. Para uma ligeira variação, vamos duplicar o conteúdo e inseri-lo abaixo do original.

O exemplo de código a seguir mostra como extrair o conteúdo entre um parágrafo e uma tabela usando o método **ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-block-level-nodes.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

O conteúdo entre o parágrafo e a tabela foi duplicado abaixo é o resultado.

![extract-content-between-paragraphs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-3.png)

## Extrair conteúdo entre parágrafos com base no estilo

Pode ser necessário extrair o conteúdo entre parágrafos do mesmo estilo ou de um estilo diferente, como entre parágrafos marcados com estilos de título.

O código abaixo mostra como conseguir isso. É um exemplo simples que extrairá o conteúdo entre a Primeira Instância dos estilos "Heading 1" e "cabeçalho 3" sem extrair os títulos também. Para fazer isso, definimos o último parâmetro como false, que especifica que os nós do marcador não devem ser incluídos.

Em uma implementação adequada, isso deve ser executado em um loop para extrair o conteúdo entre todos os parágrafos desses estilos do documento. O conteúdo extraído é copiado para um novo documento.

O exemplo de código a seguir mostra como extrair conteúdo entre parágrafos com estilos específicos usando o método **ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraph-styles.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "paragraphs-by-style-name.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Abaixo está o resultado da operação anterior.

![extract-content-between-paragraph-style-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-4.png)

## Extrair Conteúdo Entre Execuções Específicas

Você também pode extrair conteúdo entre nós embutidos, como a **Run**. **Runs** de diferentes parágrafos podem ser passados como marcadores. O código abaixo mostra como extrair texto específico entre o mesmo nó **Paragraph**.

O exemplo de código a seguir mostra como extrair conteúdo entre execuções específicas do mesmo parágrafo usando o método **ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-runs.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

O texto extraído é apresentado na consola.

![extract-content-between-runs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-5.png)

## Extrair conteúdo utilizando um campo

Para usar um campo como marcador, o nó `FieldStart` deve ser passado. O último parâmetro do método `ExtractContent` definirá se o campo inteiro deve ser incluído ou não. Vamos extrair o conteúdo entre o campo de mesclagem" FullName " e um parágrafo no documento. Usamos o método [moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField(java.lang.String)) da classe [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Isso retornará o nó **FieldStart** do nome do campo de mesclagem passado para ele.

No nosso caso, vamos definir o último parâmetro passado para o método **ExtractContent** como false para excluir o campo da extração. Vamos renderizar o conteúdo extraído para PDF.

O exemplo de código a seguir mostra como extrair conteúdo entre um campo específico e um parágrafo no documento usando o método **ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-field.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

O conteúdo extraído entre o campo e o parágrafo, sem os nós do campo e do marcador de parágrafo renderizados para PDF.

![extract-content-using-field-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-6.png)

## Extrair conteúdo de um marcador

Em um documento, o conteúdo definido em um marcador é encapsulado pelos nós `BookmarkStart` e BookmarkEnd. O conteúdo encontrado entre estes dois nós constitui o marcador. Você pode passar qualquer um desses nós como qualquer marcador, mesmo aqueles de marcadores diferentes, desde que o marcador inicial apareça antes do marcador final no documento.

No nosso documento de exemplo, temos um marcador, denominado "Bookmark1". O conteúdo deste marcador é o conteúdo destacado no nosso documento:

![extract-content-from-bookmark-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-7.png)

Vamos extrair este conteúdo para um novo documento usando o código abaixo. A opção de parâmetro **IsInclusive** mostra como reter ou descartar o marcador.

O exemplo de código a seguir mostra como extrair o conteúdo referenciado a um marcador usando o método **ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-bookmark.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

A saída extraída com o parâmetro `IsInclusive` definido como true. A cópia também manterá o marcador.

![extract-content-from-bookmark-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-8.png)

A saída extraída com o parâmetro **IsInclusive** definido como false. A cópia contém o conteúdo, mas sem o marcador.

![extract-content-from-bookmark-aspose-words-java-3](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-9.png)

## Extrair conteúdo de um comentário

Um comentário é composto pelos nós CommentRangeStart, CommentRangeEnd e Comment. Todos esses nós são inline. Os dois primeiros nós encapsulam o conteúdo do documento que é referenciado pelo comentário, como pode ser visto na imagem abaixo.

O nó **Comment** em si é um [InlineStory](https://reference.aspose.com/words/java/com.aspose.words/inlinestory/) que pode conter parágrafos e execuções. Representa a mensagem do comentário como visto como uma bolha de comentário no painel de revisão. Como este nó é embutido e descendente de um corpo, você também pode extrair o conteúdo de dentro desta mensagem.

No nosso documento temos um comentário. Vamos exibi-lo mostrando a marcação na guia Revisão:

![extract-content-from-comment-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-10.png)

O comentário contém o título, o primeiro parágrafo e o quadro da segunda secção. Vamos extrair este comentário para um novo documento. A opção **IsInclusive** determina se o comentário em si é mantido ou descartado.

O exemplo de código a seguir mostra como fazer isso abaixo:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-comment-range.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Em primeiro lugar, a saída extraída com o parâmetro `IsInclusive` definido como true. A cópia também conterá o comentário.

![extract-content-from-comment-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-11.png)

Em segundo lugar, a saída extraída com **isInclusive** definida como false. A cópia contém o conteúdo, mas sem o comentário.

![extract-content-from-comment-aspose-words-java-12](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-12.png)

## Extrair conteúdo utilizando DocumentVisitor

Aspose.Words pode ser usado não apenas para criar Microsoft Word documentos, construindo-os dinamicamente ou mesclando modelos com dados, mas também para analisar documentos para extrair elementos de documentos separados, como cabeçalhos, rodapés, parágrafos, tabelas, imagens e outros. Outra tarefa possível é encontrar todo o texto de formatação ou estilo específico.

Use a classe [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) para implementar esse cenário de uso. Esta classe corresponde ao conhecido padrão de design do visitante. Com [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/), é possível definir e executar operações personalizadas que requerem enumeração sobre a árvore de documentos.

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) fornece um conjunto de **VisitXXX** métodos que são invocados quando um elemento de documento específico (nó) é encontrado. Por exemplo, [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) é chamado quando o início de um parágrafo de texto é encontrado e [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) é chamado quando o final de um parágrafo de texto é encontrado. Cada método **DocumentVisitor.VisitXXX** aceita o objeto correspondente que encontra para que você possa usá-lo conforme necessário (digamos, recuperar a formatação), por exemplo, [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) e [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) aceitam um objeto [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/).

Cada método **DocumentVisitor.VisitXXX** retorna um valor **VisitorAction** que controla a enumeração de nós. Você pode solicitar a continuação da enumeração, ignorar o nó atual (mas continuar a enumeração) ou interromper a enumeração de nós.

Estas são as etapas que você deve seguir para determinar e extrair programaticamente várias partes de um documento:

- Crie uma classe derivada de [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/).
- Substituir e fornecer implementações para alguns ou todos os métodos **DocumentVisitor.VisitXXX** para executar algumas operações personalizadas.
- Chame [Node.accept](https://reference.aspose.com/words/java/com.aspose.words/node/#accept-com.aspose.words.DocumentVisitor) no nó de onde deseja iniciar a enumeração. Por exemplo, se você quiser enumerar o documento inteiro, use [accept(DocumentVisitor)](https://reference.aspose.com/words/java/com.aspose.words/document/#accept-com.aspose.words.DocumentVisitor).

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) fornece implementações padrão para todos os métodos **DocumentVisitor.VisitXXX**. Isso facilita a criação de novos visitantes de documentos, pois apenas os métodos necessários para o visitante específico precisam ser substituídos. Não é necessário substituir todos os métodos do visitante.

O exemplo a seguir mostra como usar o padrão de Visitante para adicionar novas operações ao modelo de objeto Aspose.Words. Neste caso, criamos um conversor de documentos simples em formato de texto:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-document-visitor.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "convert-doc-to-txt.java" >}}

## Extrair Apenas Texto

As formas de recuperar texto do documento são:

- Use [Document.save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) com [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) para salvar como texto simples em um arquivo ou fluxo
- Use [Node.toString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString-com.aspose.words.SaveOptions) e passe o parâmetro `SaveFormat.Text`. Internamente, isso invoca Salvar como texto em um fluxo de memória e retorna a string resultante
- Use [Node.getText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) para recuperar texto com todos os caracteres de controle Microsoft Word, incluindo códigos de campo
- Implementar um custom [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) para executar a extração customizada

### Utilização de `Node.GetText` e `Node.ToString`

Um documento do Word pode conter caracteres de controlo que designam elementos especiais, tais como campo, fim da célula, fim da secção, etc. A lista completa dos possíveis caracteres de controlo de palavras é definida na classe **ControlChar**. O método [GetText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) retorna texto com todos os caracteres de caracteres de controle presentes no nó.

Chamar ToString retorna a representação de texto simples do documento apenas sem caracteres de controle. Para mais informações sobre a exportação em texto simples, Ver **Using SaveFormat.Text**.

O exemplo de código a seguir mostra a diferença entre chamar os métodos **GetText** e [ToString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString) em um nó:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "simple-extract-text.java" >}}

### Usando `SaveFormat.Text`

Este exemplo guarda o documento da seguinte forma:

- Filtra caracteres de campo e códigos de campo, forma, nota de rodapé, nota de fim e referências de comentários
- Substitui os caracteres do fim do parágrafo [ControlChar.Cr](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) por combinações [ControlChar.CrLf](https://reference.aspose.com/words/java/com.aspose.words/controlchar/)
- Utiliza a codificação UTF8

O exemplo de código a seguir mostra como salvar um documento no formato TXT:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "docx-to-txt.java" >}}

## Extrair imagens de formas

Pode ser necessário extrair imagens de documentos para executar algumas tarefas. Aspose.Words permite que você faça isso também.

O exemplo de código a seguir mostra como extrair imagens de um documento:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-images.java" >}}
