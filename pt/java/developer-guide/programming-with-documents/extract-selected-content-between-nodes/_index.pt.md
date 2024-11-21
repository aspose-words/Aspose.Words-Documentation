---
title: Extrair conteúdo selecionado entre nós em Java
second_title: Aspose.Words para Java
articleTitle: Extrair conteúdo entre nós em um documento
linktitle: Extrair conteúdo entre nós
type: docs
description: "Extrair conteúdo de documentos em diferentes usos Java."
weight: 140
url: /pt/java/extract-selected-content-between-nodes/
timestamp: 2024-01-27-14-07-04
---

Ao trabalhar com documentos, é importante ser capaz de extrair facilmente conteúdo de um intervalo específico dentro de um documento. No entanto, o conteúdo pode consistir em elementos complexos, como parágrafos, tabelas, imagens, etc.

Independentemente do conteúdo que precisa ser extraído, o método para extrair esse conteúdo será sempre determinado pelo qual nós são selecionados para extrair conteúdo entre eles. Estes podem ser corpos de texto inteiros ou simples execução de texto.

Existem muitas situações possíveis e, portanto, muitos tipos diferentes de nó a considerar ao extrair conteúdo. Por exemplo, você pode querer extrair conteúdo entre:

- Dois parágrafos específicos
- Execução específica de texto
- Campos de vários tipos, como campos de mesclagem
- Começar e finalizar intervalos de um marcador ou comentário
- Vários corpos de texto contidos em seções separadas

Em algumas situações, você pode até precisar combinar diferentes tipos de nó, como extrair conteúdo entre um parágrafo e um campo, ou entre uma corrida e um marcador.

Este artigo fornece a implementação de código para extrair texto entre diferentes nós, bem como exemplos de cenários comuns.

{{% alert color="primary" %}}

Estes exemplos são apenas algumas demonstrações das muitas possibilidades. Planejamos que a funcionalidade de extração de texto seja parte do público API no futuro, e nenhum código extra será necessário. Entretanto, sinta-se livre para postar seus pedidos sobre essa funcionalidade no [Aspose.Words Quadro](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Por que extrair conteúdo

Muitas vezes, o objetivo de extrair o conteúdo é duplicar ou salvá-lo separadamente em um novo documento. Por exemplo, você pode extrair conteúdo e:

- Copie-o em um documento separado
- Converta uma parte específica de um documento em PDF ou imagem
- Duplicar o conteúdo no documento muitas vezes
- Trabalhe com conteúdo extraído separado do resto do documento

Isso pode ser facilmente alcançado usando Aspose.Words e a implementação de código abaixo.

## Extraindo algoritmo de conteúdo

O código nesta seção aborda todas as possíveis situações descritas acima com um método generalizado e reutilizável. O esboço geral desta técnica envolve:

1. Reunir os nós que ditam a área de conteúdo que será extraída do seu documento. Recuperar esses nós é tratado pelo usuário em seu código, com base no que eles querem ser extraídos.
1. Passando estes nós para o **ExtractContent** método fornecido abaixo. Você também deve passar um parâmetro booleano que afirma se esses nós, agindo como marcadores, devem ser incluídos na extração ou não.
1. Recuperar uma lista de conteúdo clonado (nodos copiados) especificado para ser extraído. Você pode usar esta lista de nós de qualquer forma aplicável, por exemplo, criando um novo documento contendo apenas o conteúdo selecionado.

## Como Extrair conteúdo

Trabalharemos com o documento abaixo neste artigo. Como você pode vê-lo contém uma variedade de conteúdo. Observe também, o documento contém uma segunda seção começando no meio da primeira página. Um marcador e comentário também estão presentes no documento, mas não são visíveis na captura de tela abaixo.

![extract-content-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-1.png)

Para extrair o conteúdo do seu documento, você precisa chamar o `ExtractContent` método abaixo e passar os parâmetros apropriados.

A base subjacente deste método envolve encontrar nós de nível de bloco (parágrafos e tabelas) e cloná-los para criar cópias idênticas. Se os nós de marcador passados são de nível de bloco, então o método é capaz de simplesmente copiar o conteúdo nesse nível e adicioná-lo ao array.

No entanto, se os nós do marcador são inline (uma criança de um parágrafo) então a situação se torna mais complexa, como é necessário dividir o parágrafo no nó inline, seja uma execução, campos de bookmark etc. O conteúdo nos nós-mãe clonados não presentes entre os marcadores é removido. Este processo é usado para garantir que os nós inline ainda reterão a formatação do parágrafo pai.

O método também irá executar verificações nos nós passados como parâmetros e lança uma exceção se qualquer nó é inválido. Os parâmetros a serem passados para este método são:

1. **StartNode** e **EndNode**. Os dois primeiros parâmetros são os nós que definem onde a extração do conteúdo deve começar e terminar, respectivamente. Estes nós podem ser ambos nível de bloco ([Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) , [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) ) ou nível inline (p. ex. [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) , [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) , [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) etc.):
   1. Para passar um campo você deve passar o correspondente **FieldStart** objeto.
   1. Para passar marcadores, o **BookmarkStart** e [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) nós devem ser passados.
   1. Para passar comentários, o [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) e [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) nós devem ser usados.
1. **IsInclusive**. Define se os marcadores estão incluídos na extração ou não. Se esta opção estiver definida false e o mesmo nó ou nós consecutivos são passados, então uma lista vazia será retornada:

      1. Se um **FieldStart** o nó é passado então esta opção define se todo o campo deve ser incluído ou excluído.
      1. Se um **BookmarkStart** ou **BookmarkEnd** node é passado, esta opção define se o marcador está incluído ou apenas o conteúdo entre o intervalo de favoritos.
      1. Se um **CommentRangeStart** ou **CommentRangeEnd** node é passado, esta opção define se o comentário em si deve ser incluído ou apenas o conteúdo no intervalo de comentários.

A execução da **ExtractContent** método que você pode encontrar [aqui](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Programming_with_documents/Contents_management/ExtractContentHelper.java). Este método será referido nos cenários deste artigo.

Também definiremos um método personalizado para gerar facilmente um documento de nós extraídos. Este método é usado em muitos dos cenários abaixo e simplesmente cria um novo documento e importa o conteúdo extraído nele.

O exemplo de código a seguir mostra como fazer uma lista de nós e inseri-los em um novo documento:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "generate-document.java" >}}

## Extrair conteúdo entre parágrafos

Isso demonstra como usar o método acima para extrair conteúdo entre parágrafos específicos. Neste caso, queremos extrair o corpo da carta encontrada na primeira metade do documento. Podemos dizer que isso é entre os 7o e 11o parágrafos.

O código abaixo realiza esta tarefa. Os parágrafos apropriados são extraídos usando o [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) método no documento e passando os índices especificados. Então passamos estes nós para o **ExtractContent** método e afirmam que estes devem ser incluídos na extração. Este método retornará o conteúdo copiado entre esses nós que são inseridos em um novo documento.

O exemplo de código a seguir mostra como extrair o conteúdo entre parágrafos específicos usando o `ExtractContent` método acima:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraphs.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

O documento de saída contém os dois parágrafos extraídos.

![extract-content-result-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-2.png)

## Extrair conteúdo entre diferentes tipos de nós

Podemos extrair conteúdo entre qualquer combinação de nós de nível de bloco ou inline. Neste cenário abaixo vamos extrair o conteúdo entre o primeiro parágrafo e a tabela na segunda seção inclusivamente. Recebemos os nós marcadores chamando [getFirstParagraph](https://reference.aspose.com/words/java/com.aspose.words/body/#getFirstParagraph) e [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) método na segunda seção do documento para recuperar o apropriado **Paragraph** e **Table** nós. Para uma ligeira variação, vamos duplicar o conteúdo e inseri-lo abaixo do original.

O exemplo de código a seguir mostra como extrair o conteúdo entre um parágrafo e uma tabela usando o **ExtractContent** método:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-block-level-nodes.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

O conteúdo entre o parágrafo e a tabela foi duplicado abaixo é o resultado.

![extract-content-between-paragraphs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-3.png)

## Extrair conteúdo entre parágrafos Baseado no estilo

Você pode precisar extrair o conteúdo entre parágrafos do mesmo ou de estilo diferente, como entre parágrafos marcados com estilos de cabeçalho.

O código abaixo mostra como conseguir isso. É um exemplo simples que irá extrair o conteúdo entre a primeira instância dos estilos "Heading 1" e "Header 3" sem extrair os títulos também. Para fazer isso, definimos o último parâmetro false, que especifica que os nós do marcador não devem ser incluídos.

Em uma implementação adequada, isso deve ser executado em um loop para extrair conteúdo entre todos os parágrafos desses estilos do documento. O conteúdo extraído é copiado para um novo documento.

O exemplo de código a seguir mostra como extrair conteúdo entre parágrafos com estilos específicos usando o **ExtractContent** método:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraph-styles.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "paragraphs-by-style-name.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Abaixo está o resultado da operação anterior.

![extract-content-between-paragraph-style-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-4.png)

## Extrair conteúdo entre corridas específicas

Você pode extrair conteúdo entre nós inline, como um **Run** também. **Runs** de diferentes parágrafos podem ser passados como marcadores. O código abaixo mostra como extrair texto específico no meio do mesmo **Paragraph** nó.

O exemplo de código a seguir mostra como extrair conteúdo entre linhas específicas do mesmo parágrafo usando o **ExtractContent** método:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-runs.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

O texto extraído é exibido no console

![extract-content-between-runs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-5.png)

## Extrair conteúdo usando um campo

Para usar um campo como marcador, o `FieldStart` nó deve ser passado. O último parâmetro ao `ExtractContent` método irá definir se todo o campo deve ser incluído ou não. Vamos extrair o conteúdo entre o campo de mesclagem "FullName" e um parágrafo no documento. Usamos o [moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField(java.lang.String)) método de [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) classe. Isto vai voltar **FieldStart** nó do nome do campo de mesclagem passou para ele.

Em nosso caso vamos definir o último parâmetro passado para o **ExtractContent** método para false para excluir o campo da extração. Vamos renderizar o conteúdo extraído para PDF.

O exemplo de código a seguir mostra como extrair conteúdo entre um campo específico e um parágrafo no documento usando o **ExtractContent** método:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-field.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

O conteúdo extraído entre o campo e o parágrafo, sem os nós do marcador de campo e parágrafo renderizados para PDF.

![extract-content-using-field-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-6.png)

## Extrair conteúdo de um Bookmark

Em um documento, o conteúdo que é definido dentro de um marcador é encapsulado pelo `BookmarkStart` e BookmarkEnd nós. O conteúdo encontrado entre esses dois nós compõem o marcador. Você pode passar qualquer um desses nós como qualquer marcador, mesmo aqueles de diferentes marcadores, desde que o marcador inicial apareça antes do marcador final no documento.

Em nosso documento de amostra, temos um marcador, chamado "Bookmark1". O conteúdo deste marcador é destacado conteúdo em nosso documento:

![extract-content-from-bookmark-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-7.png)

Vamos extrair esse conteúdo em um novo documento usando o código abaixo. O **IsInclusive** opção de parâmetro mostra como reter ou descartar o marcador.

O exemplo de código a seguir mostra como extrair o conteúdo referenciado um marcador usando o **ExtractContent** método:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-bookmark.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

A saída extraída com o `IsInclusive` parâmetro definido para true. A cópia também manterá o marcador.

![extract-content-from-bookmark-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-8.png)

A saída extraída com o **IsInclusive** parâmetro definido para false. A cópia contém o conteúdo, mas sem o marcador.

![extract-content-from-bookmark-aspose-words-java-3](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-9.png)

## Extrair conteúdo de um comentário

Um comentário é composto pelos nós CommentRangeStart, CommentRangeEnd e Comment. Todos estes nós são inline. Os dois primeiros nós encapsulam o conteúdo no documento que é referenciado pelo comentário, como visto na captura de tela abaixo.

O **Comment** o nó em si é um [InlineStory](https://reference.aspose.com/words/java/com.aspose.words/inlinestory/) que pode conter parágrafos e corridas. Representa a mensagem do comentário como visto como uma bolha de comentário no painel de revisão. Como este nó é inline e um descendente de um corpo você também pode extrair o conteúdo de dentro desta mensagem também.

Em nosso documento temos um comentário. Vamos exibi-lo mostrando marcação na aba Review:

![extract-content-from-comment-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-10.png)

O comentário encapsula o cabeçalho, primeiro parágrafo e o quadro na segunda seção. Vamos extrair este comentário em um novo documento. O **IsInclusive** opção dita se o comentário em si é mantido ou descartado.

O seguinte exemplo de código mostra como fazer isso está abaixo:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-comment-range.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Primeiro a saída extraída com o `IsInclusive` parâmetro definido para true. A cópia também conterá o comentário.

![extract-content-from-comment-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-11.png)

Em segundo lugar, a saída extraída com **é inclusiva** para definir false. A cópia contém o conteúdo, mas sem o comentário.

![extract-content-from-comment-aspose-words-java-12](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-12.png)

## Extrair conteúdo usando DocumentVisitor

Aspose.Words pode ser usado não só para criar Microsoft Word documentos construindo-os dinamicamente ou fundindo modelos com dados, mas também para analisar documentos, a fim de extrair elementos de documentos separados, como cabeçalhos, rodapés, parágrafos, tabelas, imagens e outros. Outra tarefa possível é encontrar todo o texto de formatação específica ou estilo.

Use o [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) classe para implementar este cenário de uso. Esta classe corresponde ao conhecido padrão de design do visitante. Com [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/), você pode definir e executar operações personalizadas que exigem enumeração sobre a árvore de documentos.

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) fornece um conjunto de **VisitXXX** métodos que são invocados quando um elemento de documento particular (nodo) é encontrado. Por exemplo, [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) é chamado quando o início de um parágrafo de texto é encontrado e [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) é chamado quando o fim de um parágrafo de texto é encontrado. Cada um **DocumentVisitor.VisitXXX** método aceita o objeto correspondente que ele encontra para que você possa usá-lo conforme necessário (digamos recuperar a formatação), por exemplo, ambos [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) e [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) aceitar [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) objeto.

Cada um **DocumentVisitor.VisitXXX** método retorna um **VisitorAction** valor que controla a enumeração de nós. Você pode pedir para continuar a enumeração, pular o nó atual (mas continuar a enumeração), ou parar a enumeração de nós.

Estes são os passos que você deve seguir para determinar programaticamente e extrair várias partes de um documento:

- Criar uma classe derivada [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/).
- Substituir e fornecer implementações para alguns ou todos os **DocumentVisitor.VisitXXX** métodos para executar algumas operações personalizadas.
- Liga [Node.accept](https://reference.aspose.com/words/java/com.aspose.words/node/#accept-com.aspose.words.DocumentVisitor) no nó de onde você quer começar a enumeração. Por exemplo, se você quiser enumerar todo o documento, use [accept(DocumentVisitor)](https://reference.aspose.com/words/java/com.aspose.words/document/#accept-com.aspose.words.DocumentVisitor).

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) fornece implementações padrão para todos os **DocumentVisitor.VisitXXX** métodos. Isso torna mais fácil criar novos visitantes de documentos como apenas os métodos necessários para o visitante particular precisam ser substituídos. Não é necessário substituir todos os métodos de visitantes.

O exemplo a seguir mostra como usar o padrão do visitante para adicionar novas operações ao Aspose.Words modelo de objeto. Neste caso, criamos um conversor de documentos simples em um formato de texto:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-document-visitor.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "convert-doc-to-txt.java" >}}

## Extrair texto Apenas

As maneiras de recuperar o texto do documento são:

- Usar [Document.save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) com [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) para salvar como texto simples em um arquivo ou fluxo
- Usar [Node.toString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString-com.aspose.words.SaveOptions) e passar `SaveFormat.Text` parâmetro. Internamente, isso invoca salvar como texto em um fluxo de memória e retorna a cadeia resultante
- Usar [Node.getText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) para recuperar texto com tudo Microsoft Word caracteres de controle incluindo códigos de campo
- Implementar um costume [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) para executar a extração personalizada

### Usando `Node.GetText` e `Node.ToString`

A O documento do Word pode conter caracteres de controle que designam elementos especiais como campo, fim da célula, fim da seção etc. A lista completa de possíveis caracteres de controle do Word é definida no **ControlChar** classe. O [GetText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) método retorna texto com todos os caracteres de caráter de controle presentes no nó.

Chamar ToString retorna a representação de texto simples do documento apenas sem caracteres de controle. Para mais informações sobre a exportação como texto simples ver **Using SaveFormat.Text**.

O seguinte exemplo de código mostra a diferença entre chamar **GetText** e [ToString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString) métodos em um nó:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "simple-extract-text.java" >}}

### Usando `SaveFormat.Text`

Este exemplo salva o documento da seguinte forma:

- Filtra caracteres de campo e códigos de campo, forma, nota de rodapé, nota de extremidade e referências de comentários
- Substitui o fim do parágrafo [ControlChar.Cr](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) caracteres com [ControlChar.CrLf](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) combinações
- Usa codificação UTF8

O exemplo de código a seguir mostra como salvar um documento no formato TXT:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "docx-to-txt.java" >}}

## Extrair imagens de formas

Você pode precisar extrair imagens de documentos para executar algumas tarefas. Aspose.Words permite que você faça isso também.

O exemplo a seguir mostra como extrair imagens de um documento:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-images.java" >}}
