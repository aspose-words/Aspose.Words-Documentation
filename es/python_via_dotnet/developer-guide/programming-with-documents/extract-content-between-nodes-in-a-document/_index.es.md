---
title: Extraer contenido entre nodos de documentos
second_title: Aspose.Words para Python
articleTitle: Extraer contenido entre nodos en un documento
linktitle: Extraer contenido entre nodos
description: "Cómo extraer contenido específico de un rango dentro del documento fácilmente usando Python."
type: docs
weight: 140
url: /es/python-net/how-to-extract-selected-content-between-nodes-in-a-document/
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

Para extraer el contenido de su documento, debe llamar al método **extraer_contenido** a continuación y pasar los parámetros apropiados. La base subyacente de este método consiste en encontrar nodos a nivel de bloque (párrafos y tablas) y clonarlos para crear copias idénticas. Si los nodos marcadores pasados están a nivel de bloque, entonces el método puede simplemente copiar el contenido en ese nivel y agregarlo a la matriz.

Sin embargo, si los nodos marcadores están en línea (un hijo de un párrafo), entonces la situación se vuelve más compleja, ya que es necesario dividir el párrafo en el nodo en línea, ya sea una ejecución, campos de marcadores, etc. El contenido en los nodos principales clonados no presente entre los marcadores se elimina. Este proceso se utiliza para garantizar que los nodos en línea aún conserven el formato del párrafo principal. El método también ejecutará comprobaciones en los nodos pasados como parámetros y generará una excepción si alguno de los nodos no es válido. Los parámetros que se pasarán a este método son:

1. **inicioNodo** y **nodo final**. Los dos primeros parámetros son los nodos que definen dónde comenzará y terminará la extracción del contenido, respectivamente. Estos nodos pueden ser a nivel de bloque ([Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) o nivel en línea (por ejemplo, [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/), etc.):
  1. Para pasar un campo debes pasar el objeto [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) correspondiente.
  1. Para pasar marcadores, se deben pasar los nodos [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) y [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/).
  1. Para pasar comentarios, se deben utilizar los nodos [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) y [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/).
1. **es inclusivo**. Define si los marcadores están incluidos en la extracción o no. Si esta opción se establece en falso y se pasa el mismo nodo o nodos consecutivos, se devolverá una lista vacía:
  1. Si se pasa un nodo [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), esta opción define si se incluirá o excluirá todo el campo.
  1. Si se pasa un nodo [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) o [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/), esta opción define si se incluye el marcador o solo el contenido entre el rango de marcadores.
  1. Si se pasa un nodo [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) o [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/), esta opción define si se incluirá el comentario en sí o solo el contenido en el rango de comentarios.

La implementación del método **extraer_contenido** se puede encontrar en [aquí](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/DocsExamples/DocsExamples/programming_with_documents/contents_management/extract_content_helper.py). Se hará referencia a este método en los escenarios de este artículo.

También definiremos un método personalizado para generar fácilmente un documento a partir de nodos extraídos. Este método se utiliza en muchos de los escenarios siguientes y simplemente crea un nuevo documento e importa el contenido extraído en él.

El siguiente ejemplo de código muestra cómo tomar una lista de nodos e insertarlos en un nuevo documento:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "generate-document.py" >}}

## Extraer contenido entre párrafos

Esto demuestra cómo utilizar el método anterior para extraer contenido entre párrafos específicos. En este caso, queremos extraer el cuerpo de la carta que se encuentra en la primera mitad del documento. Podemos decir que esto está entre el párrafo 7 y 11.

El siguiente código realiza esta tarea. Los párrafos correspondientes se extraen utilizando el método [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) en el documento y pasando los índices especificados. Luego pasamos estos nodos al método **extraer_contenido** y declaramos que se incluirán en la extracción. Este método devolverá el contenido copiado entre estos nodos que luego se inserta en un nuevo documento.

El siguiente ejemplo de código muestra cómo extraer el contenido entre párrafos específicos utilizando el método **extraer_contenido** anterior:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraphs.py" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraiga contenido entre diferentes tipos de nodos

Podemos extraer contenido entre cualquier combinación de nivel de bloque o nodos en línea. En este escenario a continuación, extraeremos el contenido entre el primer párrafo y la tabla de la segunda sección inclusive. Obtenemos los nodos de marcadores llamando al método [Body.first_paragraph](https://reference.aspose.com/words/python-net/aspose.words/story/first_paragraph/) y [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) en la segunda sección del documento para recuperar los nodos [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) y [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) apropiados. Para una ligera variación, dupliquemos el contenido e insertémoslo debajo del original.

El siguiente ejemplo de código muestra cómo extraer el contenido entre un párrafo y una tabla usando el método **extraer_contenido**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-block-level-nodes.py" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraiga contenido entre párrafos según el estilo

Es posible que necesite extraer el contenido entre párrafos del mismo estilo o de diferente estilo, como entre párrafos marcados con estilos de encabezado.

El siguiente código muestra cómo lograr esto. Es un ejemplo simple que extraerá el contenido entre la primera instancia de los estilos "Encabezado 1" y "Encabezado 3" sin extraer también los encabezados. Para hacer esto, configuramos el último parámetro en falso, que especifica que los nodos marcadores no deben incluirse.

En una implementación adecuada, esto debería ejecutarse en un bucle para extraer el contenido entre todos los párrafos de estos estilos del documento. El contenido extraído se copia en un nuevo documento.

El siguiente ejemplo de código muestra cómo extraer contenido entre párrafos con estilos específicos utilizando el método **extraer_contenido**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraph-styles.py" >}}

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "paragraphs-by-style-name.py" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraer contenido entre ejecuciones específicas

También puede extraer contenido entre nodos en línea, como [Run](https://reference.aspose.com/words/python-net/aspose.words/run/). Se pueden pasar como marcadores fragmentos de diferentes párrafos. El siguiente código muestra cómo extraer texto específico entre el mismo nodo [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).

El siguiente ejemplo de código muestra cómo extraer contenido entre ejecuciones específicas del mismo párrafo utilizando el método **extraer_contenido**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-runs.py" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraer contenido usando un campo

Para utilizar un campo como marcador, se debe pasar el nodo [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/). El último parámetro del método **extraer_contenido** definirá si se incluirá o no todo el campo. Extraigamos el contenido entre el campo de combinación "Nombre completo" y un párrafo del documento. Usamos el método [DocumentBuilder.move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) de la clase [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/). Esto devolverá el nodo [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) a partir del nombre del campo de combinación que se le pasó.

En nuestro caso, establezcamos el último parámetro pasado al método **extraer_contenido** en `False` para excluir el campo de la extracción. Representaremos el contenido extraído en PDF.

El siguiente ejemplo de código muestra cómo extraer contenido entre un campo y un párrafo específicos en el documento utilizando el método **extraer_contenido**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-using-field.py" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraer contenido de un marcador

En un documento, el contenido definido dentro de un marcador está encapsulado por los nodos [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) y [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/). El contenido que se encuentra entre estos dos nodos constituye el marcador. Puede pasar cualquiera de estos nodos como cualquier marcador, incluso los de diferentes marcadores, siempre que el marcador inicial aparezca antes del marcador final en el documento. Extraeremos este contenido en un nuevo documento usando el siguiente código. La opción del parámetro **es inclusivo** muestra cómo conservar o descartar el marcador.

El siguiente ejemplo de código muestra cómo extraer el contenido al que se hace referencia en un marcador utilizando el método **extraer_contenido**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-bookmark.py" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraer contenido de un comentario

Un comentario se compone de los nodos [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) y [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/). Todos estos nodos están en línea. Los primeros dos nodos encapsulan el contenido del documento al que hace referencia el comentario, como se ve en la captura de pantalla siguiente. El nodo [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) en sí es un [InlineStory](https://reference.aspose.com/words/python-net/aspose.words/inlinestory/) que puede contener párrafos y ejecuciones. Representa el mensaje del comentario visto como una burbuja de comentario en el panel de revisión. Como este nodo está en línea y es descendiente de un cuerpo, también puede extraer el contenido de este mensaje.

El comentario resume el título, el primer párrafo y la tabla de la segunda sección. Extraigamos este comentario en un nuevo documento. La opción **es inclusivo** dicta si el comentario en sí se conserva o se descarta.

El siguiente ejemplo de código muestra cómo hacer esto:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-comment-range.py" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Cómo extraer solo texto

Las formas de recuperar texto del documento son:

- Utilice [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) para guardar como texto sin formato en un archivo o secuencia
- Utilice [Node.to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) y pase el parámetro [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text). Internamente, esto invoca guardar como texto en una secuencia de memoria y devuelve la cadena resultante.
- Utilice [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) para recuperar texto con todos los caracteres de control de Microsoft Word, incluidos los códigos de campo

### Usando Node.get_text y Node.to_string

Un documento de Word puede contener caracteres de control que designan elementos especiales como campo, final de celda, final de sección, etc. La lista completa de posibles caracteres de control de Word se define en la clase [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/). El método [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) devuelve texto con todos los caracteres de control presentes en el nodo.

Llamar a [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) devuelve la representación de texto sin formato del documento solo sin caracteres de control. Para obtener más información sobre la exportación como texto sin formato, consulte Uso de [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text).

El siguiente ejemplo de código muestra la diferencia entre llamar a los métodos [get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) y [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) en un nodo:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "simple-extract-text.py" >}}

### Usando `SaveFormat.Text`

Este ejemplo guarda el documento de la siguiente manera:

- Filtra caracteres de campo y códigos de campo, formas, notas al pie, notas al final y referencias de comentarios.
- Reemplaza los caracteres **ControlChar.Cr** de final de párrafo con combinaciones **ControlChar.CrLf**
- Utiliza codificación UTF8

El siguiente ejemplo de código muestra cómo guardar un documento en formato TXT:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "docx-to-txt.py" >}}

## Extraer imágenes de formas

Es posible que necesite extraer imágenes de documentos para realizar algunas tareas. Aspose.Words también le permite hacer esto.

El siguiente ejemplo de código muestra cómo extraer imágenes de un documento:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-images.py" >}}
