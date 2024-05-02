---
title: Extracto Contenido seleccionado entre nodos Java
second_title: Aspose.Words para Java
articleTitle: Extracto Contenido entre los nodos en un documento
linktitle: Extract Content Between Nodes
type: docs
description: "Extracting document content in different using Java."
weight: 140
url: /es/java/extract-selected-content-between-nodes/
---

Al trabajar con documentos, es importante poder extraer fácilmente contenido de un rango específico dentro de un documento. Sin embargo, el contenido puede consistir en elementos complejos como párrafos, tablas, imágenes, etc.

Independientemente de qué contenido debe extraerse, el método para extraer ese contenido siempre se determinará mediante el cual se seleccionan los nodos para extraer contenido entre ellos. Estos pueden ser cuerpos de texto completos o simples secuencias de texto.

Hay muchas situaciones posibles y por lo tanto muchos tipos diferentes de nodos a considerar al extraer contenido. Por ejemplo, es posible que desee extraer contenido entre:

- Dos párrafos específicos
- Corrientes específicas de texto
- Campos de varios tipos, como campos de fusión
- Start and end ranges of a bookmark or comment
- Diversos textos contenidos en secciones separadas

En algunas situaciones, es posible que incluso necesite combinar diferentes tipos de nodos, como la extracción de contenido entre un párrafo y un campo, o entre una carrera y un marcador.

Este artículo proporciona la implementación del código para extraer texto entre diferentes nodos, así como ejemplos de escenarios comunes.

{{% alert color="primary" %}}

Estos ejemplos son sólo algunas demostraciones de las muchas posibilidades. Planeamos que la funcionalidad de extracción de texto sea parte del público API en el futuro, y ningún código adicional será requerido. Mientras tanto, siéntete libre de publicar tus solicitudes con respecto a esta funcionalidad en [Aspose.Words foro](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Por qué Extraer contenido

A menudo el objetivo de extraer el contenido es duplicar o guardarlo por separado en un nuevo documento. Por ejemplo, puede extraer contenido y:

- Copiarlo en un documento separado
- Convertir una parte específica de un documento en PDF o imagen
- Duplicar el contenido del documento muchas veces
- Trabajar con contenido extraído separado del resto del documento

Esto se puede lograr fácilmente utilizando Aspose.Words y la aplicación del código a continuación.

## Extracción de contenido Algoritm

El código en esta sección aborda todas las situaciones posibles descritas anteriormente con un método generalizado y reutilizable. El esquema general de esta técnica implica:

1. Reunir los nodos que dictan el área de contenido que será extraída de su documento. Recuperar estos nodos es manejado por el usuario en su código, basado en lo que quieren ser extraídos.
1. Pasando estos nodos a **ExtractContent** método proporcionado a continuación. También debe pasar un parámetro booleano que indica si estos nodos, actuando como marcadores, deben ser incluidos en la extracción o no.
1. Recuperar una lista de contenido clonado (nodos copiados) especificado para ser extraído. Puede utilizar esta lista de nodos de cualquier manera aplicable, por ejemplo, creando un nuevo documento que contenga únicamente el contenido seleccionado.

## Cómo Extraer Contenido

Trabajaremos con el documento que figura a continuación en este artículo. Como puede ver, contiene una variedad de contenidos. Además, el documento contiene una segunda sección que comienza en mitad de la primera página. Un marcador y comentario también están presentes en el documento, pero no son visibles en la imagen de abajo.

![extract-content-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-1.png)

Para extraer el contenido de su documento necesita llamar al `ExtractContent` método a continuación y pasar los parámetros apropiados.

La base subyacente de este método consiste en encontrar nodos de nivel de bloque (párrafos y tablas) y clonarlos para crear copias idénticas. Si los nodos marcadores aprobados son de nivel bloque, entonces el método es capaz de copiar simplemente el contenido en ese nivel y añadirlo al array.

Sin embargo, si los nodos marcadores son inline (un niño de un párrafo) entonces la situación se vuelve más compleja, ya que es necesario dividir el párrafo en el nodo inline, ya sea una carrera, campos marcados etc. El contenido en los nodos padres clonados no presentes entre los marcadores es eliminado. Este proceso se utiliza para garantizar que los nodos en línea sigan conservando el formato del párrafo padre.

El método también ejecutará cheques en los nodos pasados como parámetros y arroja una excepción si el nodo es inválido. Los parámetros a pasar a este método son:

1. **StartNode** y **EndNode**. Los dos primeros parámetros son los nodos que definen dónde se iniciará la extracción del contenido y terminará respectivamente. Estos nodos pueden ser ambos niveles de bloque ([Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) , [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) ) o nivel de línea (por ejemplo [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) , [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) , [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) etc.):
   1. Para pasar un campo debe pasar el correspondiente **FieldStart** objeto.
   1. Para pasar marcadores, los **BookmarkStart** y [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) los nodos deben ser aprobados.
   1. Para transmitir comentarios, [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) y [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) los nodos deben usarse.
1. **IsInclusive**. Define si los marcadores están incluidos en la extracción o no. Si esta opción se establece false y el mismo nodo o nodos consecutivos se pasan, entonces una lista vacía será devuelta:

      1. Si **FieldStart** nodo se pasa entonces esta opción define si todo el campo debe ser incluido o excluido.
      1. Si **BookmarkStart** o **BookmarkEnd** nodo se pasa, esta opción define si el marcador está incluido o simplemente el contenido entre el rango de marcadores.
      1. Si **CommentRangeStart** o **CommentRangeEnd** nodo se pasa, esta opción define si el comentario en sí mismo debe ser incluido o simplemente el contenido en el rango de comentarios.

La aplicación de la Convención **ExtractContent** método que puedes encontrar [Aquí](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Programming_with_documents/Contents_management/ExtractContentHelper.java). Este método se referirá en los escenarios de este artículo.

También definiremos un método personalizado para generar fácilmente un documento de nodos extraídos. Este método se utiliza en muchos de los escenarios siguientes y simplemente crea un nuevo documento e importa el contenido extraído en él.

El siguiente ejemplo de código muestra cómo tomar una lista de nodos e insertarlos en un nuevo documento:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "generate-document.java" >}}

## Extract Content Between Paragraphs

Esto demuestra cómo utilizar el método anterior para extraer contenido entre párrafos específicos. En este caso, queremos extraer el cuerpo de la carta que se encuentra en la primera mitad del documento. Podemos decir que esto es entre los párrafos 7 y 11o.

El siguiente código cumple esta tarea. Los párrafos apropiados se extraen utilizando [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) método sobre el documento y pasar los índices especificados. Pasamos estos nodos a la **ExtractContent** método y estado que estos deben ser incluidos en la extracción. Este método devolverá el contenido copiado entre estos nodos que luego se insertan en un nuevo documento.

El siguiente ejemplo de código muestra cómo extraer el contenido entre párrafos específicos usando el `ExtractContent` método anterior:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraphs.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

El documento de salida contiene los dos párrafos que se extrajeron.

![extract-content-result-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-2.png)

## Extracto Contenido entre diferentes tipos de nodos

Podemos extraer contenido entre cualquier combinación de nodos de nivel de bloque o inline. En este escenario a continuación extraeremos el contenido entre el primer párrafo y el cuadro en la segunda sección de manera inclusiva. Conseguimos los nodos marcadores llamando [getFirstParagraph](https://reference.aspose.com/words/java/com.aspose.words/body/#getFirstParagraph) y [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) método en la segunda sección del documento para recuperar el **Paragraph** y **Table** nodos. Para una ligera variación, vamos a duplicar el contenido e insertarlo debajo del original.

El siguiente ejemplo de código muestra cómo extraer el contenido entre un párrafo y una tabla usando el **ExtractContent** método:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-block-level-nodes.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

El contenido entre el párrafo y el cuadro se ha duplicado a continuación es el resultado.

![extract-content-between-paragraphs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-3.png)

## Extract Content Between Paragraphs Basado en Estilo

Es posible que necesite extraer el contenido entre párrafos del mismo o diferente estilo, como entre párrafos marcados con estilos de encabezado.

El siguiente código muestra cómo lograrlo. Es un ejemplo simple que extraerá el contenido entre la primera instancia de los estilos "Heading 1" y "Header 3" sin extraer los títulos también. Para ello fijamos el último parámetro false, que especifica que los nodos marcadores no deben ser incluidos.

En una aplicación adecuada, esto debe ejecutarse en un bucle para extraer contenido entre todos los párrafos de estos estilos del documento. El contenido extraído se copia en un nuevo documento.

El siguiente ejemplo de código muestra cómo extraer contenido entre párrafos con estilos específicos usando el **ExtractContent** método:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraph-styles.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "paragraphs-by-style-name.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

A continuación se presenta el resultado de la operación anterior.

![extract-content-between-paragraph-style-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-4.png)

## Extract Content Between Specific Runs

Puede extraer contenido entre los nodos en línea como un **Run** también. **Runs** de diferentes párrafos se pueden pasar como marcadores. El siguiente código muestra cómo extraer texto específico entre el mismo **Paragraph** Nodo.

El siguiente ejemplo de código muestra cómo extraer contenido entre líneas específicas del mismo párrafo utilizando el **ExtractContent** método:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-runs.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

El texto extraído se muestra en la consola

![extract-content-between-runs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-5.png)

## Extracto Contenido usando un Campo

Para usar un campo como marcador, el `FieldStart` Nodo debe ser aprobado. El último parámetro al `ExtractContent` método definirá si el campo entero debe ser incluido o no. Extraigamos el contenido entre el campo de fusión "FullName" y un párrafo en el documento. Usamos el [moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField(java.lang.String)) método de [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) clase. Esto devolverá el **FieldStart** el nodo del nombre del campo de fusión pasó a él.

En nuestro caso vamos a establecer el último parámetro pasado al **ExtractContent** método a false para excluir el campo de la extracción. Presentaremos el contenido extraído a PDF.

El siguiente ejemplo de código muestra cómo extraer contenido entre un campo específico y un párrafo en el documento utilizando el **ExtractContent** método:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-field.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

El contenido extraído entre el campo y el párrafo, sin el campo y los nodos marcadores del párrafo entregados a PDF.

![extract-content-using-field-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-6.png)

## Extracto Contenido de un marcador

En un documento, el contenido que se define dentro de un marcador es encapsulado por el `BookmarkStart` y BookmarkEnd nodos. El contenido encontrado entre estos dos nodos compone el marcador. Usted puede pasar cualquiera de estos nodos como cualquier marcador, incluso de diferentes marcadores, siempre y cuando el marcador de inicio aparezca antes del marcador final del documento.

En nuestro documento de muestra, tenemos un marcador, llamado "Bookmark1". El contenido de este marcador se destaca en nuestro documento:

![extract-content-from-bookmark-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-7.png)

Extraeremos este contenido en un nuevo documento usando el código siguiente. El **IsInclusive** La opción del parámetro muestra cómo retener o descartar el marcador.

El siguiente ejemplo de código muestra cómo extraer el contenido referenciado a un marcador usando el **ExtractContent** método:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-bookmark.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

La salida extraída con el `IsInclusive` parámetro set to true. La copia también conservará el marcador.

![extract-content-from-bookmark-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-8.png)

La salida extraída con el **IsInclusive** parámetro set to false. La copia contiene el contenido pero sin el marcador.

![extract-content-from-bookmark-aspose-words-java-3](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-9.png)

## Extraer contenido de un comentario

Un comentario está compuesto por los nodos de comentarioRangeStart, CommentRangeEnd y Comment. Todos estos nodos son inline. Los dos primeros nodos encapsulan el contenido del documento que se hace referencia por el comentario, como se ve en la imagen siguiente.

El **Comment** nodo mismo es un [InlineStory](https://reference.aspose.com/words/java/com.aspose.words/inlinestory/) que puede contener párrafos y carreras. Representa el mensaje del comentario como se ve como una burbuja de comentarios en el panel de revisión. Como este nodo es inline y un descendiente de un cuerpo también puede extraer el contenido de dentro de este mensaje también.

En nuestro documento tenemos un comentario. Vamos a mostrarlo mostrando marcado en la pestaña Revisión:

![extract-content-from-comment-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-10.png)

El comentario encapsula el epígrafe, primer párrafo y el cuadro en la segunda sección. Extraigamos este comentario en un nuevo documento. El **IsInclusive** la opción dicta si el comentario mismo se mantiene o descarta.

El siguiente ejemplo de código muestra cómo hacer esto es abajo:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-comment-range.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Primero la salida extraída con el `IsInclusive` parámetro set to true. La copia también contiene el comentario.

![extract-content-from-comment-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-11.png)

Segundo, la salida extraída con **isInclusive** establecido false. La copia contiene el contenido pero sin el comentario.

![extract-content-from-comment-aspose-words-java-12](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-12.png)

## Extracto Contenido utilizando DocumentVisitor

Aspose.Words se puede utilizar no sólo para crear Microsoft Word documentos construyéndolos dinámicamente o fusionando plantillas con datos, pero también para analizar documentos con el fin de extraer elementos de documentos separados como encabezados, pies, párrafos, tablas, imágenes y otros. Otra tarea posible es encontrar todo el texto de formato o estilo específico.

Usar el [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) clase para implementar este escenario de uso. Esta clase corresponde al famoso patrón de diseño de visitantes. Con [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/), puede definir y ejecutar operaciones personalizadas que requieren enumeración sobre el árbol de documentos.

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) proporciona un conjunto de **VisitXXX** métodos que se invocan cuando se encuentra un elemento de documento particular (nodo). Por ejemplo, [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) se llama cuando se encuentra el comienzo de un párrafo de texto y [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) se llama cuando se encuentra el final de un párrafo de texto. Cada uno **DocumentVisitor.VisitXXX** método acepta el objeto correspondiente que encuentra para que pueda utilizarlo según sea necesario (por ejemplo, recuperar el formato), por ejemplo, ambos [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) y [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) aceptar un [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) objeto.

Cada uno **DocumentVisitor.VisitXXX** método devuelve un **VisitorAction** valor que controla la enumeración de los nodos. Usted puede solicitar o continuar la enumeración, saltar el nodo actual (pero continuar la enumeración), o detener la enumeración de los nodos.

Estos son los pasos que debe seguir para determinar y extraer programáticamente varias partes de un documento:

- Crear una clase derivada de [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/).
- Anular y proporcionar implementaciones para algunas o todas las **DocumentVisitor.VisitXXX** métodos para realizar algunas operaciones personalizadas.
- Llama [Node.accept](https://reference.aspose.com/words/java/com.aspose.words/node/#accept-com.aspose.words.DocumentVisitor) en el nodo desde donde desea comenzar la enumeración. Por ejemplo, si desea enumerar todo el documento, utilice [accept(DocumentVisitor)](https://reference.aspose.com/words/java/com.aspose.words/document/#accept-com.aspose.words.DocumentVisitor).

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) proporciona implementaciones predeterminadas para todos los **DocumentVisitor.VisitXXX** métodos. Esto hace que sea más fácil crear nuevos visitantes de documentos ya que sólo los métodos necesarios para el visitante en particular deben ser anulados. No es necesario anular todos los métodos de visita.

El siguiente ejemplo muestra cómo utilizar el patrón del visitante para agregar nuevas operaciones a la Aspose.Words modelo de objeto. En este caso, creamos un simple convertidor de documento en un formato de texto:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-document-visitor.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "convert-doc-to-txt.java" >}}

## Texto Extracto Sólo

Las formas de recuperar el texto del documento son:

- Uso [Document.save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) con [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) para guardar como texto plano en un archivo o flujo
- Uso [Node.toString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString-com.aspose.words.SaveOptions) y pasar el `SaveFormat.Text` Parámetro. Internamente, esto invoca guardar como texto en un flujo de memoria y devuelve la cadena resultante
- Uso [Node.getText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) para recuperar texto con todos Microsoft Word caracteres de control incluyendo códigos de campo
- Implementar una costumbre [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) para realizar extracción personalizada

### Uso `Node.GetText` y `Node.ToString`

A El documento de Word puede contener caracteres de control que designan elementos especiales como el campo, el final de la célula, el final de la sección, etc. La lista completa de posibles caracteres de control de Word se define en la **ControlChar** clase. El [GetText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) método devuelve texto con todos los caracteres de control presentes en el nodo.

Llamar a ToString devuelve la representación de texto simple del documento sólo sin caracteres de control. Para más información sobre la exportación como texto llano **Using SaveFormat.Text**.

El siguiente ejemplo de código muestra la diferencia entre llamar al **GetText** y [ToString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString) métodos en un nodo:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "simple-extract-text.java" >}}

### Uso `SaveFormat.Text`

Este ejemplo guarda el documento como sigue:

- Filtrar caracteres de campo y códigos de campo, forma, nota de pie de página, nota final y referencias de comentarios
- Sustituye el fin del párrafo [ControlChar.Cr](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) personajes [ControlChar.CrLf](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) combinaciones
- Usa la codificación UTF8

El siguiente ejemplo de código muestra cómo guardar un documento en formato TXT:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "docx-to-txt.java" >}}

## Extract Images from Shapes

Es posible que necesite extraer imágenes de documentos para realizar algunas tareas. Aspose.Words te permite hacer esto también.

El siguiente ejemplo de código muestra cómo extraer imágenes de un documento:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-images.java" >}}