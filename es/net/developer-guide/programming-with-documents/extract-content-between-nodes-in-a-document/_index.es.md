---
title: Cómo extraer contenido entre nodos de documentos
second_title: Aspose.Words para .NET
articleTitle: Extraer contenido entre nodos en un documento
linktitle: Extraer contenido entre nodos
description: "Extracción del contenido del documento en diferentes formatos utilizando C#."
type: docs
weight: 140
url: /es/net/how-to-extract-selected-content-between-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Al trabajar con documentos, es importante poder extraer fácilmente contenido de un rango específico dentro de un documento. Sin embargo, el contenido puede consistir en elementos complejos como párrafos, tablas, imágenes, etc.

Independientemente del contenido que deba extraerse, el método para extraer ese contenido siempre estará determinado por los nodos seleccionados para extraer el contenido. Pueden ser cuerpos de texto completos o ejecuciones de texto simples.

Hay muchas situaciones posibles y, por lo tanto, muchos tipos de nodos diferentes a considerar al extraer contenido. Por ejemplo, es posible que desees extraer contenido entre:

- Dos párrafos específicos
- Ejecuciones específicas de texto.
- Campos de varios tipos, como campos de combinación.
- Rangos de inicio y fin de un marcador o comentario
- Varios cuerpos de texto contenidos en secciones separadas.

En algunas situaciones, es posible que incluso necesites combinar diferentes tipos de nodos, como extraer contenido entre un párrafo y un campo, o entre una ejecución y un marcador.

Este artículo proporciona la implementación del código para extraer texto entre diferentes nodos, así como ejemplos de escenarios comunes.

{{% alert color="primary" %}}

Estos ejemplos son sólo algunas demostraciones de las muchas posibilidades. Planeamos que la funcionalidad de extracción de texto sea parte del API público en el futuro y no se requerirá ningún código adicional. Mientras tanto, no dudes en publicar tus solicitudes con respecto a esta funcionalidad en el [Foro Aspose.Words](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Por qué extraer contenido

A menudo, el objetivo de extraer el contenido es duplicarlo o guardarlo por separado en un documento nuevo. Por ejemplo, puede extraer contenido y:

- Cópialo en un documento aparte.
- Convertir una parte específica de un documento a PDF o imagen
- Duplicar el contenido del documento muchas veces.
- Trabajar con contenido extraído separado del resto del documento.

Esto se puede lograr fácilmente usando Aspose.Words y la implementación del código a continuación.

## Algoritmo de extracción de contenido

El código de esta sección aborda todas las situaciones posibles descritas anteriormente con un método generalizado y reutilizable. El esquema general de esta técnica implica:

1. Reunir los nodos que dictan el área de contenido que se extraerá de su documento. La recuperación de estos nodos la maneja el usuario en su código, en función de lo que desea extraer.
1. Pasar estos nodos al método **ExtractContent** que se proporciona a continuación. También debe pasar un parámetro booleano que indique si estos nodos, que actúan como marcadores, deben incluirse en la extracción o no.
1. Recuperar una lista de contenido clonado (nodos copiados) especificado para ser extraído. Puede utilizar esta lista de nodos de cualquier forma aplicable, por ejemplo, creando un nuevo documento que contenga solo el contenido seleccionado.

## Cómo extraer contenido

Para extraer el contenido de su documento, debe llamar al método **ExtractContent** a continuación y pasar los parámetros apropiados. La base subyacente de este método consiste en encontrar nodos a nivel de bloque (párrafos y tablas) y clonarlos para crear copias idénticas. Si los nodos marcadores pasados están a nivel de bloque, entonces el método puede simplemente copiar el contenido en ese nivel y agregarlo a la matriz.

Sin embargo, si los nodos marcadores están en línea (un hijo de un párrafo), entonces la situación se vuelve más compleja, ya que es necesario dividir el párrafo en el nodo en línea, ya sea una ejecución, campos de marcadores, etc. El contenido en los nodos principales clonados no presente entre los marcadores se elimina. Este proceso se utiliza para garantizar que los nodos en línea aún conserven el formato del párrafo principal. El método también ejecutará comprobaciones en los nodos pasados como parámetros y generará una excepción si alguno de los nodos no es válido. Los parámetros que se pasarán a este método son:

1. **StartNode** y **EndNode**. Los dos primeros parámetros son los nodos que definen dónde comenzará y terminará la extracción del contenido, respectivamente. Estos nodos pueden ser tanto de nivel de bloque ([Paragraph](https://reference.aspose.com/words/es/net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/es/net/aspose.words.tables/table/)) como de nivel en línea (por ejemplo, [Run](https://reference.aspose.com/words/es/net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/es/net/aspose.words/bookmark/bookmarkstart/), etc.):
  1. Para pasar un campo debes pasar el objeto **FieldStart** correspondiente
  1. Para pasar marcadores, se deben pasar los nodos **BookmarkStart** y [BookmarkEnd](https://reference.aspose.com/words/es/net/aspose.words/bookmark/bookmarkend/)
  1. Para pasar comentarios se deben utilizar los nodos [CommentRangeStart](https://reference.aspose.com/words/es/net/aspose.words/commentrangestart/) y [CommentRangeEnd](https://reference.aspose.com/words/es/net/aspose.words/commentrangeend/).
1. **IsInclusive**. Define si los marcadores están incluidos en la extracción o no. Si esta opción se establece en falso y se pasa el mismo nodo o nodos consecutivos, se devolverá una lista vacía:
  1. Si se pasa un nodo **FieldStart**, esta opción define si se incluirá o excluirá todo el campo.
  1. Si se pasa un nodo **BookmarkStart** o **BookmarkEnd**, esta opción define si se incluye el marcador o solo el contenido entre el rango de marcadores.
  1. Si se pasa un nodo **CommentRangeStart** o **CommentRangeEnd**, esta opción define si se incluirá el comentario en sí o solo el contenido en el rango de comentarios.

La implementación del método **ExtractContent** se puede encontrar en [en Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.cs). Se hará referencia a este método en los escenarios de este artículo.

También definiremos un método personalizado para generar fácilmente un documento a partir de nodos extraídos. Este método se utiliza en muchos de los escenarios siguientes y simplemente crea un nuevo documento e importa el contenido extraído en él.

El siguiente ejemplo de código muestra cómo tomar una lista de nodos e insertarlos en un nuevo documento:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "generate-document.cs" >}}

## Extraer contenido entre párrafos

Esto demuestra cómo utilizar el método anterior para extraer contenido entre párrafos específicos. En este caso, queremos extraer el cuerpo de la carta que se encuentra en la primera mitad del documento. Podemos decir que esto está entre el párrafo 7 y 11.

El siguiente código realiza esta tarea. Los párrafos correspondientes se extraen utilizando el método [GetChild](https://reference.aspose.com/words/es/net/aspose.words/compositenode/) en el documento y pasando los índices especificados. Luego pasamos estos nodos al método **ExtractContent** y declaramos que se incluirán en la extracción. Este método devolverá el contenido copiado entre estos nodos que luego se inserta en un nuevo documento.

El siguiente ejemplo de código muestra cómo extraer el contenido entre párrafos específicos utilizando el método `ExtractContent` anterior:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraphs.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraiga contenido entre diferentes tipos de nodos

Podemos extraer contenido entre cualquier combinación de nivel de bloque o nodos en línea. En este escenario a continuación, extraeremos el contenido entre el primer párrafo y la tabla de la segunda sección inclusive. Obtenemos los nodos de marcadores llamando a los métodos [FirstParagraph](https://reference.aspose.com/words/es/net/aspose.words/story/firstparagraph/) y [GetChild](https://reference.aspose.com/words/es/net/aspose.words/compositenode/getchild/) en la segunda sección del documento para recuperar los nodos **Paragraph** y **Table** apropiados. Para una ligera variación, dupliquemos el contenido e insertémoslo debajo del original.

El siguiente ejemplo de código muestra cómo extraer el contenido entre un párrafo y una tabla usando el método **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-block-level-nodes.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraiga contenido entre párrafos según el estilo

Es posible que necesite extraer el contenido entre párrafos del mismo estilo o de diferente estilo, como entre párrafos marcados con estilos de encabezado. El siguiente código muestra cómo lograr esto. Es un ejemplo simple que extraerá el contenido entre la primera instancia de los estilos "Encabezado 1" y "Encabezado 3" sin extraer también los encabezados. Para hacer esto, configuramos el último parámetro en falso, que especifica que los nodos marcadores no deben incluirse.

En una implementación adecuada, esto debería ejecutarse en un bucle para extraer el contenido entre todos los párrafos de estos estilos del documento. El contenido extraído se copia en un nuevo documento.

El siguiente ejemplo de código muestra cómo extraer contenido entre párrafos con estilos específicos utilizando el método **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraph-styles.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "paragraphs-by-style-name.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraer contenido entre ejecuciones específicas

También puede extraer contenido entre nodos en línea, como [Run](https://reference.aspose.com/words/es/net/aspose.words/run/). Se puede pasar texto de diferentes párrafos como marcadores. El siguiente código muestra cómo extraer texto específico entre el mismo nodo **Paragraph**.

El siguiente ejemplo de código muestra cómo extraer contenido entre ejecuciones específicas del mismo párrafo utilizando el método **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-runs.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraer contenido usando un campo

Para utilizar un campo como marcador, se debe pasar el nodo `FieldStart`. El último parámetro del método `ExtractContent` definirá si se incluirá o no todo el campo. Extraigamos el contenido entre el campo de combinación "Nombre completo" y un párrafo del documento. Usamos el método [MoveToMergeField](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/movetomergefield/) de la clase [DocumentBuilder](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/). Esto devolverá el nodo **FieldStart** a partir del nombre del campo de combinación que se le pasó.

En nuestro caso, establezcamos el último parámetro pasado al método **ExtractContent** en falso para excluir el campo de la extracción. Representaremos el contenido extraído en PDF.

El siguiente ejemplo de código muestra cómo extraer contenido entre un campo y un párrafo específicos del documento utilizando el método **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-field.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraer contenido de un marcador

En un documento, el contenido definido dentro de un marcador está encapsulado por los nodos `BookmarkStart` y BookmarkEnd. El contenido que se encuentra entre estos dos nodos constituye el marcador. Puede pasar cualquiera de estos nodos como cualquier marcador, incluso los de diferentes marcadores, siempre que el marcador inicial aparezca antes del marcador final en el documento. Extraeremos este contenido en un nuevo documento usando el siguiente código. La opción del parámetro **IsInclusive** muestra cómo conservar o descartar el marcador.

El siguiente ejemplo de código muestra cómo extraer el contenido al que se hace referencia en un marcador utilizando el método **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-bookmark.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraer contenido de un comentario

Un comentario se compone de los nodos CommentRangeStart, CommentRangeEnd y Comment. Todos estos nodos están en línea. Los dos primeros nodos encapsulan el contenido del documento al que hace referencia el comentario, como se ve en la captura de pantalla siguiente.

El nodo **Comment** en sí es un [InlineStory](https://reference.aspose.com/words/es/net/aspose.words/inlinestory/) que puede contener párrafos y ejecuciones. Representa el mensaje del comentario visto como una burbuja de comentario en el panel de revisión. Como este nodo está en línea y es descendiente de un cuerpo, también puede extraer el contenido desde dentro de este mensaje.

El comentario resume el título, el primer párrafo y la tabla de la segunda sección. Extraigamos este comentario en un nuevo documento. La opción **IsInclusive** dicta si el comentario en sí se conserva o se descarta.

El siguiente ejemplo de código muestra cómo hacer esto:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-comment-range.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Cómo extraer contenido usando DocumentVisitor

Utilice la clase [DocumentVisitor](https://reference.aspose.com/words/es/net/aspose.words/documentvisitor/) para implementar este escenario de uso. Esta clase corresponde al conocido patrón de diseño Visitor. Con **DocumentVisitor** **,** puede definir y ejecutar operaciones personalizadas que requieren enumeración en el árbol del documento.

**DocumentVisitor** proporciona un conjunto de métodos **VisitXXX** que se invocan cuando se encuentra un elemento (nodo) de documento en particular. Por ejemplo, se llama a [VisitParagraphStart](https://reference.aspose.com/words/es/net/aspose.words/documentvisitor/visitparagraphstart/) cuando se encuentra el comienzo de un párrafo de texto y se llama a [VisitParagraphEnd](https://reference.aspose.com/words/es/net/aspose.words/documentvisitor/visitparagraphend/) cuando se encuentra el final de un párrafo de texto. Cada método **DocumentVisitor.VisitXXX** acepta el objeto correspondiente que encuentra para que pueda usarlo según sea necesario (por ejemplo, recuperar el formato), por ejemplo, tanto **DocumentVisitor.VisitParagraphStart** como **DocumentVisitor.VisitParagraphEnd** aceptan un objeto [Paragraph](https://reference.aspose.com/words/es/net/aspose.words/paragraph/).

Cada método **DocumentVisitor.VisitXXX** devuelve un valor [VisitorAction](https://reference.aspose.com/words/es/net/aspose.words/visitoraction/) que controla la enumeración de nodos. Puede solicitar continuar la enumeración, omitir el nodo actual (pero continuar la enumeración) o detener la enumeración de nodos.

Estos son los pasos que debe seguir para determinar y extraer mediante programación varias partes de un documento:

- Crear una clase derivada de **DocumentVisitor**
- Anular y proporcionar implementaciones para algunos o todos los métodos **DocumentVisitor.VisitXXX** para realizar algunas operaciones personalizadas.
- Llame a [Node.Accept](https://reference.aspose.com/words/es/net/aspose.words/node/accept/) en el nodo desde donde desea iniciar la enumeración, por ejemplo, si desea enumerar todo el documento, use [Document.Accept](https://reference.aspose.com/words/es/net/aspose.words/document/accept/)

**DocumentVisitor** proporciona implementaciones predeterminadas para todos los métodos **DocumentVisitor.VisitXXX**. Esto facilita la creación de nuevos visitantes de documentos, ya que solo es necesario anular los métodos necesarios para el visitante en particular. No es necesario anular todos los métodos de visitante.

El siguiente ejemplo muestra cómo utilizar el patrón Visitante para agregar nuevas operaciones al modelo de objetos Aspose.Words. En este caso, creamos un conversor de documentos simple a formato de texto:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-document-visitor.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "convert-doc-to-txt.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Cómo extraer sólo texto

Las formas de recuperar texto del documento son:

- Utilice [Document.Save](https://reference.aspose.com/words/es/net/aspose.words/document/save/) con [SaveFormat.Text](https://reference.aspose.com/words/es/net/aspose.words/saveformat/) para guardar como texto sin formato en un archivo o secuencia
- Utilice [Node.ToString](https://reference.aspose.com/words/es/net/aspose.words/node/tostring/) y pase el parámetro **SaveFormat.Text**. Internamente, esto invoca guardar como texto en una secuencia de memoria y devuelve la cadena resultante.
- Utilice [Node.GetText](https://reference.aspose.com/words/es/net/aspose.words/node/gettext/) para recuperar texto con todos los caracteres de control de Microsoft Word, incluidos los códigos de campo
- Implementar un [DocumentVisitor](https://reference.aspose.com/words/es/net/aspose.words/documentvisitor/) personalizado para realizar una extracción personalizada

### Usando `Node.GetText` y `Node.ToString`

Un documento de Word puede contener caracteres de control que designan elementos especiales como campo, final de celda, final de sección, etc. La lista completa de posibles caracteres de control de Word se define en la clase **ControlChar**. El método **Node.GetText** devuelve texto con todos los caracteres de control presentes en el nodo.

Llamar a **ToString** devuelve la representación de texto sin formato del documento solo sin caracteres de control. Para obtener más información sobre la exportación como texto sin formato, consulte la siguiente sección **"Usando SaveFormat.Text"**.

El siguiente ejemplo de código muestra la diferencia entre llamar a los métodos **GetText** y **ToString** en un nodo:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "simple-extract-text.cs" >}}

### Usando `SaveFormat.Text`

Este ejemplo guarda el documento de la siguiente manera:

- Filtra caracteres de campo y códigos de campo, formas, notas al pie, notas al final y referencias de comentarios.
- Reemplaza los caracteres **ControlChar.Cr** de final de párrafo con combinaciones **ControlChar.CrLf**
- Utiliza codificación UTF8

El siguiente ejemplo de código muestra cómo guardar un documento en formato TXT:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "docx-to-txt.cs" >}}

## Extraer imágenes de formas

Es posible que necesite extraer imágenes de documentos para realizar algunas tareas. Aspose.Words también le permite hacer esto.

El siguiente ejemplo de código muestra cómo extraer imágenes de un documento:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-images.cs" >}}
