---
title: Trabajar con marcadores en C++
second_title: Aspose.Words para C++
articleTitle: Trabajar con Marcadores
linktitle: Trabajar con Marcadores
description: "Comprender los conceptos de marcadores y cómo se pueden usar los marcadores en su programa usando C++."
type: docs
weight: 180
url: /es/cpp/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Los marcadores identifican en un documento de Microsoft Word las ubicaciones o fragmentos que nombra e identifica para referencia futura. Por ejemplo, puede usar un marcador para identificar el texto que desea revisar más adelante. En lugar de desplazarse por el documento para localizar el texto, puede acceder a él utilizando el cuadro de diálogo Marcador.

Las acciones que se pueden realizar con los marcadores usando Aspose.Words son las mismas que puede realizar con Microsoft Word. Puede insertar un nuevo marcador, eliminarlo, moverlo a un marcador, obtener o establecer un nombre de marcador, obtener o establecer texto encerrado en él. Con Aspose.Words, también puede usar marcadores en informes o documentos para insertar algunos datos en el marcador o aplicar un formato especial a su contenido. También puede usar marcadores para recuperar texto de una ubicación determinada en su documento.

## Insertar un Marcador

Use [StartBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/startbookmark/) y [EndBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endbookmark/) para crear un marcador marcando su inicio y final, respectivamente. No olvide pasar el mismo nombre de marcador a ambos métodos. Los marcadores de un documento pueden superponerse y abarcar cualquier rango. Los marcadores mal formados o los marcadores con nombres duplicados se ignorarán cuando se guarde el documento.

El siguiente ejemplo de código muestra cómo crear un nuevo marcador:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cpp" >}}

## Obtener Marcadores

A veces es necesario obtener una colección de marcadores para iterar a través de los marcadores o para otros fines. Utilice la propiedad [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/) expuesta por cualquier nodo de documento que devuelva un objeto [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) que represente la parte del documento contenida en este nodo. Use este objeto para recuperar un [BookmarkCollection](https://reference.aspose.com/words/cpp/aspose.words/bookmarkcollection/) y luego use el indexador de colecciones para obtener un marcador específico.

El siguiente ejemplo de código muestra cómo obtener marcadores de una colección de marcadores:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cpp" >}}

El siguiente ejemplo de código muestra cómo obtener o establecer un nombre y texto de marcador:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cpp" >}}

El siguiente ejemplo de código muestra cómo marcar una tabla:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cpp" >}}

Si cambia el nombre de un marcador a un nombre que ya existe en el documento, no se generará ningún error y solo se almacenará el primer marcador cuando guarde el documento.

{{% alert color="primary" %}}

Tenga en cuenta que algunos marcadores del documento están asignados a campos de formulario. Moverse a dicho marcador e insertar texto allí inserta el texto en el código del campo del formulario. Aunque esto no invalidará el campo del formulario, el texto insertado no será visible porque se convierte en parte del código del campo.

{{% /alert %}}

## Mover a un marcador

Si necesita insertar contenido enriquecido (no solo texto sin formato) en un marcador, debe usar [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/) para mover el cursor al marcador y luego usar los métodos y propiedades [DocumentBuilder's](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) para insertar contenido.

## Mostrar Ocultar Contenido de Marcadores

Todo el marcador (*including the bookmarked content*) se puede encapsular dentro de la parte Verdadera del campo `IF` usando Aspose.Words. Puede ser de tal manera que el campo `IF` contenga un Campo de combinación anidado en la expresión (*Left of Operator*) y, según el valor del Campo de combinación, el campo `IF` muestre u oculte el contenido del marcador en el documento de Word.

El siguiente ejemplo de código muestra cómo mostrar/ ocultar marcadores:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cpp" >}}
