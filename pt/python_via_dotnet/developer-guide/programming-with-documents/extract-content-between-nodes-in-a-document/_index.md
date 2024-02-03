---
title: Extraia conteúdo entre nós de documentos
second_title: Aspose.Words para Python
articleTitle: Extrair conteúdo entre nós em um documento
linktitle: Extraia conteúdo entre nós
description: "Como extrair facilmente conteúdo específico de um intervalo do documento usando Python."
type: docs
weight: 140
url: /pt/python-net/how-to-extract-selected-content-between-nodes-in-a-document/
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

Para extrair o conteúdo do seu documento você precisa chamar o método **extrair_conteúdo** abaixo e passar os parâmetros apropriados. A base subjacente deste método envolve encontrar nós em nível de bloco (parágrafos e tabelas) e cloná-los para criar cópias idênticas. Se os nós marcadores passados forem no nível do bloco, o método será capaz de simplesmente copiar o conteúdo nesse nível e adicioná-lo ao array.

No entanto, se os nós marcadores estiverem embutidos (filhos de um parágrafo), a situação se torna mais complexa, pois é necessário dividir o parágrafo no nó embutido, seja uma execução, campos de marcadores, etc. presente entre os marcadores é removido. Este processo é usado para garantir que os nós embutidos ainda manterão a formatação do parágrafo pai. O método também executará verificações nos nós passados como parâmetros e lançará uma exceção se algum dos nós for inválido. Os parâmetros a serem passados para este método são:

1. **startNode** e **fimNode**. Os dois primeiros parâmetros são os nós que definem onde a extração do conteúdo deve começar e terminar, respectivamente. Esses nós podem ser de nível de bloco ([Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) ou nível inline (por exemplo, [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) etc.):
   1. Para passar um campo deverá passar o objeto [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) correspondente.
   1. Para passar marcadores, os nós [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) e [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) devem ser passados.
   1. Para passar comentários, devem ser utilizados os nós [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) e [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/).
1. **éInclusivo**. Define se os marcadores serão incluídos na extração ou não. Se esta opção for definida como false e o mesmo nó ou nós consecutivos forem passados, uma lista vazia será retornada:
   1. Se um nó [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) for passado, esta opção define se todo o campo deve ser incluído ou excluído.
   1. Se for passado um nó [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) ou [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/), esta opção define se o marcador está incluído ou apenas o conteúdo entre o intervalo de marcadores.
   1. Se for passado um nó [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) ou [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/), esta opção define se o comentário em si deve ser incluído ou apenas o conteúdo da faixa de comentários.

A implementação do método **extrair_conteúdo** você pode encontrar em [aqui](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/DocsExamples/DocsExamples/programming_with_documents/contents_management/extract_content_helper.py). Este método será mencionado nos cenários deste artigo.

Também definiremos um método personalizado para gerar facilmente um documento a partir de nós extraídos. Este método é usado em muitos dos cenários abaixo e simplesmente cria um novo documento e importa o conteúdo extraído para ele.

O exemplo de código a seguir mostra como pegar uma lista de nós e inseri-los em um novo documento:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "generate-document.py" >}}

## Extraia conteúdo entre parágrafos

Isso demonstra como usar o método acima para extrair conteúdo entre parágrafos específicos. Neste caso, queremos extrair o corpo da carta que se encontra na primeira metade do documento. Podemos dizer que isso está entre o 7º e o 11º parágrafo.

O código abaixo realiza esta tarefa. Os parágrafos apropriados são extraídos usando o método [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) no documento e passando os índices especificados. Em seguida, passamos esses nós para o método **extrair_conteúdo** e declaramos que eles serão incluídos na extração. Este método retornará o conteúdo copiado entre esses nós que serão então inseridos em um novo documento.

O exemplo de código a seguir mostra como extrair o conteúdo entre parágrafos específicos usando o método **extrair_conteúdo** acima:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraphs.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraia conteúdo entre diferentes tipos de nós

Podemos extrair conteúdo entre quaisquer combinações de nível de bloco ou nós embutidos. Neste cenário abaixo iremos extrair o conteúdo entre o primeiro parágrafo e a tabela da segunda seção inclusive. Obtemos os nós marcadores chamando os métodos [Body.first_paragraph](https://reference.aspose.com/words/python-net/aspose.words/story/first_paragraph/) e [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) na segunda seção do documento para recuperar os nós [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) e [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) apropriados. Para uma pequena variação, vamos duplicar o conteúdo e inseri-lo abaixo do original.

O exemplo de código a seguir mostra como extrair o conteúdo entre um parágrafo e uma tabela usando o método **extrair_conteúdo**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-block-level-nodes.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraia conteúdo entre parágrafos com base no estilo

Talvez seja necessário extrair o conteúdo entre parágrafos do mesmo estilo ou de estilo diferente, como entre parágrafos marcados com estilos de título.

O código abaixo mostra como conseguir isso. É um exemplo simples que irá extrair o conteúdo entre a primeira instância dos estilos "Título 1" e "Cabeçalho 3" sem extrair também os títulos. Para fazer isso, definimos o último parâmetro como false, que especifica que os nós marcadores não devem ser incluídos.

Em uma implementação adequada, isso deve ser executado em loop para extrair o conteúdo entre todos os parágrafos desses estilos do documento. O conteúdo extraído é copiado para um novo documento.

O exemplo de código a seguir mostra como extrair conteúdo entre parágrafos com estilos específicos usando o método **extrair_conteúdo**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraph-styles.py" >}}

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "paragraphs-by-style-name.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraia conteúdo entre execuções específicas

Você também pode extrair conteúdo entre nós embutidos, como [Run](https://reference.aspose.com/words/python-net/aspose.words/run/). As execuções de diferentes parágrafos podem ser passadas como marcadores. O código abaixo mostra como extrair texto específico entre o mesmo nó [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).

O exemplo de código a seguir mostra como extrair conteúdo entre execuções específicas do mesmo parágrafo usando o método **extrair_conteúdo**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-runs.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraia conteúdo usando um campo

Para utilizar um campo como marcador, deve-se passar o nó [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/). O último parâmetro do método **extrair_conteúdo** definirá se todo o campo será incluído ou não. Vamos extrair o conteúdo entre o campo de mesclagem "FullName" e um parágrafo do documento. Usamos o método [DocumentBuilder.move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) da classe [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/). Isso retornará o nó [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) do nome do campo de mesclagem passado para ele.

No nosso caso vamos definir o último parâmetro passado ao método **extrair_conteúdo** como `False` para excluir o campo da extração. Iremos renderizar o conteúdo extraído em PDF.

O exemplo de código a seguir mostra como extrair conteúdo entre um campo e parágrafo específico no documento usando o método **extrair_conteúdo**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-using-field.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraia conteúdo de um marcador

Em um documento, o conteúdo definido em um marcador é encapsulado pelos nós [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) e [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/). O conteúdo encontrado entre esses dois nós constitui o marcador. Você pode passar qualquer um desses nós como qualquer marcador, mesmo aqueles de marcadores diferentes, desde que o marcador inicial apareça antes do marcador final no documento. Extrairemos esse conteúdo para um novo documento usando o código abaixo. A opção de parâmetro **éInclusivo** mostra como reter ou descartar o indicador.

O exemplo de código a seguir mostra como extrair o conteúdo referenciado em um marcador usando o método **extrair_conteúdo**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-bookmark.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraia o conteúdo de um comentário

Um comentário é composto pelos nós [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) e [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/). Todos esses nós estão embutidos. Os dois primeiros nós encapsulam o conteúdo do documento referenciado pelo comentário, conforme visto na imagem abaixo. O próprio nó [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) é um [InlineStory](https://reference.aspose.com/words/python-net/aspose.words/inlinestory/) que pode conter parágrafos e execuções. Ele representa a mensagem do comentário vista como um balão de comentários no painel de revisão. Como este nó é inline e descendente de um corpo, você também pode extrair o conteúdo de dentro desta mensagem.

O comentário encapsula o título, o primeiro parágrafo e a tabela da segunda seção. Vamos extrair este comentário para um novo documento. A opção **éInclusivo** determina se o comentário em si será mantido ou descartado.

O exemplo de código a seguir mostra como fazer isso:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-comment-range.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Como extrair apenas texto

As maneiras de recuperar texto do documento são:

- Use [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) para salvar como texto simples em um arquivo ou fluxo
- Utilize [Node.to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) e passe o parâmetro [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text). Internamente, isso invoca salvar como texto em um fluxo de memória e retorna a string resultante
- Use [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) para recuperar texto com todos os caracteres de controle Microsoft Word, incluindo códigos de campo

### Usando Node.get_text e Node.to_string

Um documento do Word pode conter caracteres de controle que designam elementos especiais como campo, fim de célula, fim de seção etc. A lista completa de possíveis caracteres de controle do Word é definida na classe [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/). O método [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) retorna texto com todos os caracteres de controle presentes no nó.

Chamar [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) retorna a representação de texto simples do documento apenas sem caracteres de controle. Para obter mais informações sobre exportação como texto simples, consulte Usando [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text)

O exemplo de código a seguir mostra a diferença entre chamar os métodos [get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) e [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) em um nó:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "simple-extract-text.py" >}}

### Usando `SaveFormat.Text`

Este exemplo salva o documento da seguinte maneira:

- Filtra caracteres de campo e códigos de campo, forma, nota de rodapé, nota final e referências de comentários
- Substitui caracteres **ControlChar.Cr** de final de parágrafo por combinações **ControlChar.CrLf**
- Usa codificação UTF8

O exemplo de código a seguir mostra como salvar um documento no formato TXT:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "docx-to-txt.py" >}}

## Extrair imagens de formas

Pode ser necessário extrair imagens de documentos para executar algumas tarefas. Aspose.Words também permite que você faça isso.

O exemplo de código a seguir mostra como extrair imagens de um documento:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-images.py" >}}
