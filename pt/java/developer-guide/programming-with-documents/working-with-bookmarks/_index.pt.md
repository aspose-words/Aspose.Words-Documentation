---
title: Trabalhando com marcadores em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhando com marcadores
linktitle: Trabalhando com marcadores
description: "Compreender conceitos de bookmark e como bookmark pode ser usado em seu programa usando Java."
type: docs
weight: 180
url: /pt/java/working-with-bookmarks/
---

Os marcadores identificam-se em um Microsoft Word documentar os locais ou fragmentos que você nomeia e identifica para referência futura. Por exemplo, você pode usar um marcador para identificar o texto que deseja revisar mais tarde. Em vez de rolar através do documento para localizar o texto, você pode ir para ele usando a caixa de diálogo Bookmark.

Com Aspose.Words, você pode usar marcadores em relatórios ou documentos para inserir alguns dados no marcador ou aplicar formatação especial ao seu conteúdo. Você também pode usar marcadores para recuperar texto de um determinado local em seu documento.

As ações que podem ser realizadas com marcadores usando Aspose.Words são os mesmos que os que você pode executar usando Microsoft Word. Você pode inserir um novo marcador, excluir, mover para um marcador, obter ou definir um nome de marcador, obter ou definir texto incluído nele.

## Insira um marcador

Uso [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) e [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) criar um marcador marcando seu início e fim, respectivamente. Não se esqueça de passar o mesmo nome bookmark para ambos os métodos. Os marcadores em um documento podem sobrepor e abranger qualquer intervalo. Os marcadores ou marcadores mal formados com nomes duplicados serão ignorados quando o documento for salvo.

{{% alert color="primary" %}}

Todos os espaços brancos nos marcadores foram substituídos por sublinhados. Esta restrição veio de formatos MS Word, uma vez que marcadores em formatos MS Word, como DOCX ou DOC, não pode ter espaços brancos. No entanto, PDF permite tais marcadores. Então agora, se você precisa usar marcadores em PDF, XPS ou esboços SWF, você pode usá-los com espaços brancos.

{{% /alert %}}

O exemplo a seguir mostra como criar um novo marcador:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## Obter marcadores

Às vezes é necessário obter uma coleção de favoritos para iterar através de marcadores ou para outros fins. Use o **Node.getRange** propriedade exposta por qualquer nó de documento que retorna um **Range** objeto que representa a parte do documento contido neste nó. Use este objeto para recuperar um **BookmarkCollection** e, em seguida, use o indexador de coleção para obter um marcador específico.

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra dos seguintes exemplos a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

O exemplo a seguir mostra como obter marcadores de uma coleção de favoritos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

O exemplo de código a seguir mostra como obter ou definir um nome de marcador e texto:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

O exemplo de código a seguir mostra como marcar uma tabela:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

Se você alterar o nome de um marcador para um nome que já existe no documento, nenhum erro será gerado e apenas o primeiro marcador será armazenado quando você salvar o documento.

Note que alguns marcadores no documento são atribuídos a campos de formulário. Movendo-se para tal bookmark e inserir texto lá insere o texto no código de campo do formulário. Embora isso não invalide o campo do formulário, o texto inserido não será visível porque se torna parte do código de campo.

O exemplo de código a seguir mostra como acessar colunas da tabela marcada:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## Mover para um marcador

Se você precisa inserir conteúdo rico (não apenas texto simples) em um marcador, você deve usar [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) para mover o cursor para o marcador e depois usar **DocumentBuilder** métodos e propriedades para inserir conteúdo.

## Mostrar Hide Bookmark conteúdo

Todo o Bookmark (*incluindo o conteúdo bookmarked*) pode ser encapsulado dentro da parte True da `IF` campo usando Aspose.Words. Pode ser de tal forma que o `IF` campo contém um campo de fusão aninhado na expressão (*Left of Operator*) e dependendo do valor do campo de fusão, o `IF` campo mostra ou oculta o conteúdo do Bookmark no Word Document.

O exemplo a seguir mostra como mostrar/ ocultar marcadores.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
