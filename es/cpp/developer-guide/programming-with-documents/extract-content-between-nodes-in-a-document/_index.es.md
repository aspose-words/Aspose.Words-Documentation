---
title: Cómo Extraer Contenido Entre Nodos de Documentos
second_title: Aspose.Words para C++
articleTitle: Extraer Contenido entre Nodos en un Documento
linktitle: Extraer Contenido Entre Nodos
type: docs
description: "Extracción de contenido de documentos en diferentes usando C++."
weight: 140
url: /es/cpp/how-to-extract-selected-content-between-nodes-in-a-document/
---

Al trabajar con documentos, es importante poder extraer fácilmente contenido de un rango específico dentro de un documento. Sin embargo, el contenido puede consistir en elementos complejos como párrafos, tablas, imágenes, etc.

Independientemente del contenido que deba extraerse, el método para extraer ese contenido siempre estará determinado por los nodos seleccionados para extraer contenido entre ellos. Estos pueden ser cuerpos de texto completos o ejecuciones de texto simples.

Hay muchas situaciones posibles y, por lo tanto, muchos tipos de nodos diferentes a considerar al extraer contenido. Por ejemplo, es posible que desee extraer contenido entre:

- Dos párrafos específicos
- Secuencias específicas de texto
- Campos de varios tipos, como campos de combinación
- Rangos de inicio y finalización de un marcador o comentario
- Varios cuerpos de texto contenidos en secciones separadas

En algunas situaciones, es posible que incluso necesite combinar diferentes tipos de nodos, como extraer contenido entre un párrafo y un campo, o entre una ejecución y un marcador.

Este artículo proporciona la implementación del código para extraer texto entre diferentes nodos, así como ejemplos de escenarios comunes.

{{% alert color="primary" %}}

Estos ejemplos son solo algunas demostraciones de las muchas posibilidades. Planeamos que la funcionalidad de extracción de texto sea parte de la API pública en el futuro, y no se requerirá código adicional. Mientras tanto, no dude en publicar sus solicitudes con respecto a esta funcionalidad en el [Aspose.Words foro](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Por Qué Extraer Contenido

A menudo, el objetivo de extraer el contenido es duplicarlo o guardarlo por separado en un nuevo documento. Por ejemplo, puede extraer contenido y:

- Cópielo en un documento separado
- Convertir una parte específica de un documento en PDF o imagen
- Duplicar el contenido del documento muchas veces
- Trabaje con contenido extraído separado del resto del documento

Esto se puede lograr fácilmente usando Aspose.Words y la implementación del código a continuación.

## Algoritmo de Extracción de Contenido

El código de esta sección aborda todas las situaciones posibles descritas anteriormente con un método generalizado y reutilizable. El esquema general de esta técnica involucra:

1. Recopilando los nodos que dictan el área de contenido que se extraerá de su documento. La recuperación de estos nodos es manejada por el usuario en su código, en función de lo que desea extraer.
1. Pasando estos nodos al método **ExtractContent** proporcionado a continuación. También debe pasar un parámetro booleano que indique si estos nodos, que actúan como marcadores, deben incluirse en la extracción o no.
1. Recuperando una lista de contenido clonado (nodos copiados) especificados para ser extraídos. Puede utilizar esta lista de nodos de cualquier forma aplicable, por ejemplo, creando un nuevo documento que contenga solo el contenido seleccionado.

## Cómo Extraer Contenido

Para extraer el contenido de su documento, debe llamar al método `ExtractContent` a continuación y pasar los parámetros apropiados. La base subyacente de este método implica encontrar nodos a nivel de bloque (párrafos y tablas) y clonarlos para crear copias idénticas. Si los nodos marcadores pasados son de nivel de bloque, entonces el método puede simplemente copiar el contenido en ese nivel y agregarlo a la matriz.

Sin embargo, si los nodos marcadores están en línea (un elemento secundario de un párrafo), la situación se vuelve más compleja, ya que es necesario dividir el párrafo en el nodo en línea, ya sea una ejecución, campos de marcadores, etc. Se elimina el contenido de los nodos primarios clonados que no está presente entre los marcadores. Este proceso se utiliza para garantizar que los nodos en línea conserven el formato del párrafo principal. El método también ejecutará comprobaciones en los nodos pasados como parámetros y lanzará una excepción si alguno de los nodos no es válido. Los parámetros que se pasarán a este método son:

1. **StartNode** y **EndNode**. Los dos primeros parámetros son los nodos que definen dónde debe comenzar y finalizar la extracción del contenido, respectivamente. Estos nodos pueden ser tanto de nivel de bloque (Párrafo, Tabla) como de nivel en línea (por ejemplo, Ejecutar, FieldStart, BookmarkStart, etc.):
   1. Para pasar un campo, debe pasar el objeto **FieldStart** correspondiente.
   1. Para pasar marcadores, se deben pasar los nodos **BookmarkStart** y BookmarkEnd.
   1. Para pasar comentarios, se deben usar los nodos CommentRangeStart y CommentRangeEnd.
1. **IsInclusive**. Define si los marcadores están incluidos en la extracción o no. Si esta opción se establece en false y se pasan el mismo nodo o nodos consecutivos, se devolverá una lista vacía:

      1. Si se pasa un nodo **FieldStart**, esta opción define si se debe incluir o excluir todo el campo.
      1. Si se pasa un nodo **BookmarkStart** o **BookmarkEnd**, esta opción define si se incluye el marcador o solo el contenido entre el rango de marcadores.
      1. Si se pasa un nodo **CommentRangeStart** o **CommentRangeEnd**, esta opción define si se debe incluir el comentario en sí o solo el contenido en el rango de comentarios.

La implementación del método **ExtractContent** puede encontrar [aquí](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Examples/DocsExamples/source/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.h). Este método se mencionará en los escenarios de este artículo.

También definiremos un método personalizado para generar fácilmente un documento a partir de nodos extraídos. Este método se usa en muchos de los escenarios a continuación y simplemente crea un nuevo documento e importa el contenido extraído en él.

El siguiente ejemplo de código muestra cómo tomar una lista de nodos e insertarlos en un nuevo documento.

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "generate-document.h" >}}

## Extraer Contenido Entre Párrafos

Esto demuestra cómo usar el método anterior para extraer contenido entre párrafos específicos. En este caso, queremos extraer el cuerpo de la carta que se encuentra en la primera mitad del documento. Podemos decir que esto está entre los párrafos 7y 11.

El código a continuación cumple esta tarea. Los párrafos apropiados se extraen utilizando el método [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) en el documento y pasando los índices especificados. Luego pasamos estos nodos al método **ExtractContent** y establecemos que se incluirán en la extracción. Este método devolverá el contenido copiado entre estos nodos que luego se insertarán en un nuevo documento.

El siguiente ejemplo de código muestra cómo extraer el contenido entre párrafos específicos utilizando el método `ExtractContent` anterior:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraphs.h" >}}

## Extraer Contenido Entre Diferentes Tipos de Nodos

Podemos extraer contenido entre cualquier combinación de nodos a nivel de bloque o en línea. En este escenario a continuación, extraeremos el contenido entre el primer párrafo y la tabla en la segunda sección inclusive. Obtenemos los nodos marcadores llamando al método `Body.FirstParagraph` y [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) en la segunda sección del documento para recuperar los nodos de párrafo y Tabla apropiados. Para una ligera variación, dupliquemos el contenido e insértelo debajo del original.

El siguiente ejemplo de código muestra cómo extraer el contenido entre un párrafo y una tabla utilizando el método `ExtractContent`:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-block-level-nodes.h" >}}

## Extraer Contenido entre Párrafos Según el Estilo

Es posible que deba extraer el contenido entre párrafos del mismo estilo o de estilos diferentes, como entre párrafos marcados con estilos de encabezado. El siguiente código muestra cómo lograr esto. Es un ejemplo simple que extraerá el contenido entre la primera instancia de los estilos "Encabezado 1" y "Encabezado 3" sin extraer también los encabezados. Para hacer esto, establecemos el último parámetro en false, que especifica que los nodos marcadores no deben incluirse.

En una implementación adecuada, esto debe ejecutarse en un bucle para extraer contenido entre todos los párrafos de estos estilos del documento. El contenido extraído se copia en un nuevo documento.

El siguiente ejemplo de código muestra cómo extraer contenido entre párrafos con estilos específicos utilizando el método `ExtractContent`:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraph-styles.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "paragraphs-by-style-name.h" >}}

## Extraer Contenido Entre Ejecuciones Específicas

También puede extraer contenido entre nodos en línea, como a [Run](https://reference.aspose.com/words/cpp/aspose.words/run/). **Runs** de diferentes párrafos se pueden pasar como marcadores. El siguiente código muestra cómo extraer texto específico entre el mismo nodo **Paragraph**.

El siguiente ejemplo de código muestra cómo extraer contenido entre ejecuciones específicas del mismo párrafo utilizando el método **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-runs.h" >}}

## Extraer contenido mediante un Campo

Para usar un campo como marcador, se debe pasar el nodo `FieldStart`. El último parámetro del método `ExtractContent` definirá si se debe incluir o no todo el campo. Extraigamos el contenido entre el campo de combinación" FullName " y un párrafo del documento. Usamos el método [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/) de la clase [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/). Esto devolverá el nodo **FieldStart** del nombre del campo de combinación que se le pasó.

En nuestro caso, establezcamos el último parámetro pasado al método **ExtractContent** en falso para excluir el campo de la extracción. Renderizaremos el contenido extraído a PDF.

El siguiente ejemplo de código muestra cómo extraer contenido entre un campo y un párrafo específicos en el documento utilizando el método **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-field.h" >}}

## Extraer Contenido de un Marcador

En un documento, el contenido definido dentro de un marcador está encapsulado por los nodos `BookmarkStart` y BookmarkEnd. El contenido que se encuentra entre estos dos nodos forma el marcador. Puede pasar cualquiera de estos nodos como cualquier marcador, incluso los de marcadores diferentes, siempre que el marcador inicial aparezca antes del marcador final en el documento. Extraeremos este contenido en un nuevo documento usando el código a continuación. La opción de parámetro **IsInclusive** muestra cómo conservar o descartar el marcador.

El siguiente ejemplo de código muestra cómo extraer el contenido al que se hace referencia en un marcador mediante el método **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-bookmark.h" >}}

## Extraer Contenido de un comentario

Un comentario está formado por los nodos CommentRangeStart, CommentRangeEnd y Comentario. Todos estos nodos están en línea. Los dos primeros nodos encapsulan el contenido en el documento al que hace referencia el comentario, como se ve en la captura de pantalla a continuación.

El nodo **Comment** en sí mismo es un InlineStory que puede contener párrafos y ejecuciones. Representa el mensaje del comentario visto como una burbuja de comentarios en el panel de vista previa. Como este nodo está en línea y es descendiente de un cuerpo, también puede extraer el contenido de este mensaje.

El comentario encapsula el encabezado, el primer párrafo y la tabla en la segunda sección. Extraigamos este comentario en un nuevo documento. La opción **IsInclusive** determina si el comentario en sí se mantiene o se descarta.

El siguiente ejemplo de código muestra cómo hacer esto:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-comment-range.h" >}}

## Cómo Extraer Contenido usando DocumentVisitor

Use la clase [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/) para implementar este escenario de uso. Esta clase corresponde al conocido patrón de diseño de visitantes. Con **DocumentVisitor,** puede definir y ejecutar operaciones personalizadas que requieran enumeración en el árbol de documentos.

**DocumentVisitor**

Cada método **DocumentVisitor.VisitXXX** devuelve un valor [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/) que controla la enumeración de nodos. Puede solicitar continuar la enumeración, omitir el nodo actual (pero continuar con la enumeración) o detener la enumeración de nodos.

Estos son los pasos que debe seguir para determinar y extraer mediante programación varias partes de un documento:

- Crear una clase derivada de **DocumentVisitor**
- Anule y proporcione implementaciones para algunos o todos los métodos **DocumentVisitor.VisitXXX** para realizar algunas operaciones personalizadas
- Llame a `Node.Accept` en el nodo desde donde desea iniciar la enumeración. Por ejemplo, si desea enumerar todo el documento, use `Document.Accept`

**DocumentVisitor**

Este ejemplo muestra cómo usar el patrón Visitante para agregar nuevas operaciones al modelo de objetos Aspose.Words. En este caso, creamos un convertidor de documentos simple a un formato de texto:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-document-visitor.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "convert-doc-to-txt.h" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Cómo Extraer Solo Texto

Las formas de recuperar texto del documento son:

- Use [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) con [SaveFormat.Text](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) para guardar como texto sin formato en un archivo o secuencia
- Use [Node.ToString](https://reference.aspose.com/words/cpp/aspose.words/node/tostring/) y pase el parámetro **SaveFormat.Text**. Internamente, esto invoca guardar como texto en una secuencia de memoria y devuelve la cadena resultante
- Use [Node.GetText](https://reference.aspose.com/words/cpp/aspose.words/node/gettext/) para recuperar texto con todos los caracteres de control de Microsoft Word, incluidos los códigos de campo
- Implemente un [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/) personalizado para realizar una extracción personalizada

### Usando `Node.GetText` y `Node.ToString`

Un documento de Word puede contener caracteres de control que designan elementos especiales como campo, final de celda, final de sección, etc. La lista completa de posibles caracteres de control de palabras se define en la clase [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/). El método **Node.GetText** devuelve texto con todos los caracteres de carácter de control presentes en el nodo.

Llamar a **ToString** devuelve la representación de texto sin formato del documento solo sin caracteres de control.

El siguiente ejemplo de código muestra la diferencia entre llamar a los métodos **GetText** y **ToString** en un nodo:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "simple-extract-text.h" >}}

### Usando `SaveFormat.Text`

Este ejemplo guarda el documento de la siguiente manera:

- Filtra los caracteres de campo y los códigos de campo, la forma, la nota al pie, la nota al final y las referencias de comentarios
- Reemplaza los caracteres **ControlChar.Cr** del final del párrafo con **ControlChar.CrLf** combinaciones
- Utiliza codificación UTF8

El siguiente ejemplo de código muestra cómo guardar un documento en formato TXT:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "docx-to-txt.h" >}}

## Extraer Imágenes de Formas

Es posible que deba extraer imágenes de documentos para realizar algunas tareas. Aspose.Words también te permite hacer esto.

El siguiente ejemplo de código muestra cómo extraer imágenes de un documento:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-images.h" >}}