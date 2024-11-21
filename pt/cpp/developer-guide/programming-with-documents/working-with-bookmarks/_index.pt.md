---
title: Trabalhar com marcadores em C++
second_title: Aspose.Words para C++
articleTitle: Trabalhar com marcadores
linktitle: Trabalhar com marcadores
description: "Compreendendo os conceitos de marcadores e como os marcadores podem ser usados em seu programa usando C++."
type: docs
weight: 180
url: /pt/cpp/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Marcadores identificam em um documento Microsoft Word os locais ou fragmentos que você nomeia e identifica para referência futura. Por exemplo, pode utilizar um marcador para identificar o texto que pretende rever posteriormente. Em vez de percorrer o documento para localizar o texto, você pode ir até ele usando a caixa de diálogo marcador.

As ações que podem ser executadas com marcadores usando Aspose.Words são as mesmas que você pode executar usando Microsoft Word. Você pode inserir um novo Marcador, excluir, mover para um marcador, obter ou definir um nome de marcador, obter ou definir texto incluído nele. Com Aspose.Words, Você também pode usar marcadores em relatórios ou documentos para inserir alguns dados no marcador ou aplicar formatação especial ao seu conteúdo. Você também pode usar marcadores para recuperar texto de um determinado local em seu documento.

## Inserir um marcador

Use [StartBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/startbookmark/) e [EndBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endbookmark/) para criar um marcador marcando seu início e fim, respectivamente. Não se esqueça de passar o mesmo nome de marcador para ambos os métodos. Os marcadores num documento podem sobrepor-se e abranger qualquer intervalo. Marcadores mal formados ou marcadores com nomes duplicados serão ignorados quando o documento for salvo.

O exemplo de código a seguir mostra como criar um novo Marcador:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cpp" >}}

## Obter Marcadores

Às vezes, é necessário obter uma coleção de marcadores para iterar por meio de marcadores ou para outros fins. Use a propriedade [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/) exposta por qualquer nó de documento que retorne um objeto [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) representando a parte do documento contida neste nó. Use este objeto para recuperar um [BookmarkCollection](https://reference.aspose.com/words/cpp/aspose.words/bookmarkcollection/) e, em seguida, use o indexador de coleção para obter um marcador específico.

O exemplo de código a seguir mostra como obter marcadores de uma coleção de marcadores:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cpp" >}}

O exemplo de código a seguir mostra como obter ou definir um nome de marcador e texto:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cpp" >}}

O exemplo de código a seguir mostra como marcar uma tabela:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cpp" >}}

Se você alterar o nome de um marcador para um nome que já existe no documento, nenhum erro será gerado e apenas o primeiro marcador será armazenado quando você salvar o documento.

{{% alert color="primary" %}}

Observe que alguns marcadores no documento são atribuídos a campos de formulário. Mover para esse marcador e inserir texto insere o texto no código do campo do formulário. Embora isso não invalide o campo do formulário, o texto inserido não ficará visível porque se torna parte do Código do campo.

{{% /alert %}}

## Mover para um marcador

Se você precisar inserir conteúdo rico (não apenas texto simples) em um marcador, use [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/) para mover o cursor para o marcador e, em seguida, use os métodos e propriedades [DocumentBuilder's](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) para inserir conteúdo.

## Mostrar Ocultar Conteúdo Dos Favoritos

Todo o marcador (*including the bookmarked content*) pode ser encapsulado na parte verdadeira do campo `IF` usando Aspose.Words. Pode ser de tal forma que o campo `IF` contém um campo de mesclagem aninhado na expressão (*Left of Operator*) e, dependendo do valor do campo de mesclagem, o campo `IF` mostra ou oculta o conteúdo do marcador no documento do Word.

O exemplo de código a seguir mostra como mostrar / ocultar marcadores:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cpp" >}}
