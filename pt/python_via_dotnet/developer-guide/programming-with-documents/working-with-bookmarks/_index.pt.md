---
title: Trabalhando com marcadores em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabalhando com marcadores
linktitle: Trabalhando com marcadores
description: "Como inserir, obter, mover, mostrar ou ocultar favoritos usando Python."
type: docs
weight: 180
url: /pt/python-net/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Os marcadores identificam em um documento Microsoft Word os locais ou fragmentos que você nomeia e identifica para referência futura. Por exemplo, você pode usar um marcador para identificar o texto que deseja revisar posteriormente. Em vez de percorrer o documento para localizar o texto, você pode acessá-lo usando a caixa de diálogo Marcador.

As ações que podem ser realizadas com marcadores usando Aspose.Words são as mesmas que você pode realizar usando Microsoft Word. Você pode inserir um novo marcador, excluir, mover para um marcador, obter ou definir um nome de marcador, obter ou definir o texto incluído nele. Com Aspose.Words, você também pode usar marcadores em relatórios ou documentos para inserir alguns dados no marcador ou aplicar formatação especial ao seu conteúdo. Você também pode usar marcadores para recuperar texto de um determinado local do documento.

## Insira um marcador

Use [start_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_bookmark/) e [end_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_bookmark/) para criar um marcador marcando seu início e fim, respectivamente. Não se esqueça de passar o mesmo nome do marcador para ambos os métodos. Os marcadores em um documento podem se sobrepor e abranger qualquer intervalo. Marcadores mal formados ou com nomes duplicados serão ignorados quando o documento for salvo.

{{% alert color="primary" %}}

Todos os espaços em branco nos marcadores foram substituídos por sublinhados. Essa restrição veio dos formatos MS Word, pois os marcadores nos formatos MS Word, como DOCX ou DOC, não podem conter espaços em branco. No entanto, o PDF permite tais marcadores. Então agora, se você precisar usar marcadores em contornos PDF ou XPS, poderá usá-los com espaços em branco.

{{% /alert %}}

O exemplo de código a seguir mostra como criar um novo marcador:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-CreateBookmark.py" >}}

## Obter marcadores

Às vezes é necessário obter uma coleção de marcadores para iterar pelos marcadores ou para outros fins. Use a propriedade [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) exposta por qualquer nó de documento que retorne um objeto [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) representando a parte do documento contida neste nó. Use este objeto para recuperar um [BookmarkCollection](https://reference.aspose.com/words/python-net/aspose.words/bookmarkcollection/) e, em seguida, use o indexador de coleção para obter um indicador específico.

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra desses exemplos em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

O exemplo de código a seguir mostra como obter marcadores de uma coleção de marcadores:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-AccessBookmarks.py" >}}

O exemplo de código a seguir mostra como obter ou definir um nome e texto de marcador:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-UpdateBookmarkData.py" >}}

O exemplo de código a seguir mostra como marcar uma tabela:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTable.py" >}}

Se você alterar o nome de um marcador para um nome já existente no documento, nenhum erro será gerado e apenas o primeiro marcador será armazenado quando você salvar o documento.

Observe que alguns marcadores no documento são atribuídos a campos de formulário. Mover para esse marcador e inserir texto nele insere o texto no código do campo do formulário. Embora isso não invalide o campo do formulário, o texto inserido não ficará visível porque se tornará parte do código do campo.

O exemplo de código a seguir mostra como acessar colunas da tabela marcada:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTableColumns.py" >}}

## Mover para um marcador

Se precisar inserir conteúdo rico (não apenas texto simples) em um marcador, você deve usar [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/) para mover o cursor para o marcador e, em seguida, usar métodos e propriedades [DocumentBuilder's](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) para inserir conteúdo.

## Mostrar ocultar conteúdo dos favoritos

Todo o marcador (*incluindo o conteúdo marcado*) pode ser encapsulado na parte True do campo `IF` usando Aspose.Words. Pode ser de forma que o campo `IF` contenha um Merge Field aninhado na expressão (*Left of Operator*) e dependendo do valor do Merge Field, o campo `IF` mostra ou oculta o conteúdo do Bookmark no Word Document.

O exemplo de código a seguir mostra como mostrar/ocultar marcadores:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarks.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarkedContent.py" >}}
