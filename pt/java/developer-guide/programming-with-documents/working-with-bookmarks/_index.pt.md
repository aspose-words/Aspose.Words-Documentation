---
title: Trabalhar com marcadores em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhar com marcadores
linktitle: Trabalhar com marcadores
description: "Compreender os conceitos de marcadores e como os marcadores podem ser utilizados no seu programa utilizando Java."
type: docs
weight: 180
url: /pt/java/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Marcadores identificam em um documento Microsoft Word os locais ou fragmentos que você nomeia e identifica para referência futura. Por exemplo, pode utilizar um marcador para identificar o texto que pretende rever posteriormente. Em vez de percorrer o documento para localizar o texto, você pode ir até ele usando a caixa de diálogo marcador.

Com Aspose.Words, pode utilizar marcadores em relatórios ou documentos para inserir alguns dados no marcador ou aplicar formatação especial ao seu conteúdo. Você também pode usar marcadores para recuperar texto de um determinado local em seu documento.

As ações que podem ser executadas com marcadores usando Aspose.Words são as mesmas que você pode executar usando Microsoft Word. Você pode inserir um novo Marcador, excluir, mover para um marcador, obter ou definir um nome de marcador, obter ou definir texto incluído nele.

## Inserir um marcador

Use [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) e [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) para criar um marcador marcando seu início e fim, respectivamente. Não se esqueça de passar o mesmo nome de marcador para ambos os métodos. Os marcadores num documento podem sobrepor-se e abranger qualquer intervalo. Marcadores mal formados ou marcadores com nomes duplicados serão ignorados quando o documento for salvo.

{{% alert color="primary" %}}

Todos os espaços em branco nos marcadores foram substituídos por sublinhados. Esta restrição veio de MS formatos do Word, uma vez que os marcadores em MS formatos do Word, como DOCX ou DOC, não podem ter espaços em branco. No entanto, PDF permite esses marcadores. Portanto, agora, se você precisar usar marcadores em contornos PDF, XPS ou SWF, poderá usá-los com espaços em branco.

{{% /alert %}}

O exemplo de código a seguir mostra como criar um novo Marcador:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## Obter Marcadores

Às vezes, é necessário obter uma coleção de marcadores para iterar por meio de marcadores ou para outros fins. Use a propriedade **Node.getRange** exposta por qualquer nó de documento que retorne um objeto **Range** representando a parte do documento contida neste nó. Use este objeto para recuperar um **BookmarkCollection** e, em seguida, use o indexador de coleção para obter um marcador específico.

{{% alert color="primary" %}}

Pode transferir o ficheiro de exemplo dos seguintes exemplos a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

O exemplo de código a seguir mostra como obter marcadores de uma coleção de marcadores:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

O exemplo de código a seguir mostra como obter ou definir um nome de marcador e texto:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

O exemplo de código a seguir mostra como marcar uma tabela:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

Se você alterar o nome de um marcador para um nome que já existe no documento, nenhum erro será gerado e apenas o primeiro marcador será armazenado quando você salvar o documento.

Observe que alguns marcadores no documento são atribuídos a campos de formulário. Mover para esse marcador e inserir texto insere o texto no código do campo do formulário. Embora isso não invalide o campo do formulário, o texto inserido não ficará visível porque se torna parte do Código do campo.

O exemplo de código a seguir mostra como acessar colunas da tabela marcada:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## Mover para um marcador

Se você precisar inserir conteúdo rico (não apenas texto simples) em um marcador, use [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) para mover o cursor para o marcador e, em seguida, use **DocumentBuilder** Métodos e propriedades para inserir conteúdo.

## Mostrar Ocultar Conteúdo Dos Favoritos

Todo o marcador (*including the bookmarked content*) pode ser encapsulado na parte verdadeira do campo `IF` Usando Aspose.Words. Pode ser de tal forma que o campo `IF` contém um campo de mesclagem aninhado na expressão (*Left of Operator*) e, dependendo do valor do campo de mesclagem, o campo `IF` mostra ou oculta o conteúdo do marcador no documento do Word.

O exemplo de código a seguir mostra como mostrar/ ocultar marcadores.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
