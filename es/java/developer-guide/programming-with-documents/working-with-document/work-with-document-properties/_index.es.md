---
title: Trabajar con Propiedades de documentos en Java
second_title: Aspose.Words para Java
articleTitle: Trabajar con Propiedades de documento
linktitle: Trabajar con Propiedades de documento
description: "Aspose.Words para Java permite almacenar información útil sobre su documento, como API Número de versión o autorizado Date, en propiedades de documentos incorporadas o personalizadas."
type: docs
weight: 10
url: /es/java/work-with-document-properties/
---

Las propiedades del documento permiten almacenar información útil sobre su documento. Estas propiedades se pueden dividir en dos grupos:

* Sistema o incorporado que contenga valores como título de documento, nombre de autor, estadísticas de documentos y otros.
* Definido o personalizado, proporcionado como pares de valor de nombre donde el usuario puede definir tanto el nombre como el valor.

Es útil saber que información sobre API y el número de versión está escrito directamente a los documentos de salida. Por ejemplo, al convertir un documento en PDF, Aspose.Words llena el campo "Aplicación" con "Aspose.Words", y el campo "Productor de PDF" con "Aspose.Words para Java YY.M.N, donde *YY.M.N* es la versión de Aspose.Words utilizado para la conversión. Para más detalles, consulte [Nombre del generador o productor Incluido en documentos de salida](/words/es/java/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Note que usted **no puede** Aspose.Words cambiar o eliminar esta información de los documentos de salida.

{{% /alert %}}

## Access Document Properties

Para acceder a las propiedades del documento Aspose.Words uso:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) para obtener propiedades incorporadas.

* [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) para obtener propiedades personalizadas.

**BuiltInDocumentProperties** y **CustomDocumentProperties** son colecciones de [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) objetos. Estos objetos se pueden obtener a través de la propiedad indexador por nombre o por índice.

**BuiltInDocumentProperties** Además, proporciona acceso a propiedades de documentos a través de un conjunto de propiedades introducidas que devuelven valores del tipo apropiado. **CustomDocumentProperties** le permite añadir o eliminar las propiedades del documento de un documento.

El [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) clase le permite obtener el nombre, el valor y el tipo de una propiedad de documento. [Valor]https://reference.aspose.com/words/java/com.aspose.words/documentproperty#Value) devuelve un objeto, pero hay un conjunto de métodos que le permiten convertir el valor de propiedad a un tipo específico. Después de saber qué tipo de propiedad es, puede utilizar uno de los {0} métodos, como {1}[ToString](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) y **DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt), para obtener el valor del tipo apropiado.

El siguiente ejemplo de código muestra cómo enumerar todas las propiedades incorporadas y personalizadas en un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

In Microsoft Word, puede acceder a las propiedades del documento utilizando el menú "File → Properties".

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## Agregar o eliminar propiedades del documento

No puede agregar o eliminar propiedades de documentos incorporadas usando Aspose.Words. Sólo puede cambiar o actualizar sus valores.

Para añadir propiedades de documento personalizadas con Aspose.Words, utilizar el [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean) método, pasando el nuevo nombre de propiedad y el valor del tipo apropiado. El método devuelve el nuevo creado **DocumentProperty** objeto.

Para eliminar las propiedades personalizadas, utilice [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String) método, pasando el nombre de la propiedad para eliminar, o [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int) método para eliminar la propiedad por índice. También puede eliminar todas las propiedades usando el [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear) método.

El siguiente ejemplo de código comprueba si una propiedad personalizada con un nombre determinado existe en un documento y añade algunas propiedades de documentos más personalizadas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

El siguiente ejemplo de código muestra cómo eliminar una propiedad de documento personalizada:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## Actualizar Propiedades de documentos incorporadas

Aspose.Words no actualiza automáticamente las propiedades del documento, como Microsoft Word hace con algunas propiedades, pero proporciona un método para actualizar algunas propiedades estadísticas de documentos incorporados. Llama a la [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) método para recalcular y actualizar las siguientes propiedades:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## Crear una nueva propiedad personalizada vinculada al contenido

Aspose.Words proporciona el [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) método para crear una nueva propiedad de documento personalizado vinculada al contenido. Esta propiedad devuelve el objeto de propiedad recientemente creado o null si el [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) es inválido.

El siguiente ejemplo de código muestra cómo configurar un enlace a una propiedad personalizada:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## Obtener variables de documento

Usted puede obtener una colección de variables de documento usando la [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables) propiedad. Los nombres y valores variables son cadenas.

El siguiente ejemplo de código muestra cómo enumerar variables de documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Eliminar información personal del documento

Si desea compartir un documento de Word con otras personas, puede que desee eliminar información personal como el nombre del autor y la empresa. Para ello utiliza el [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation) propiedad para establecer la bandera indicando que Microsoft Word eliminará toda la información del usuario de comentarios, revisiones y propiedades de documentos al guardar el documento.

{{% alert color="primary" %}}

La configuración de esta opción no elimina la información personal al procesar un documento Aspose.Words y afecta sólo al Microsoft Word comportamiento.

{{% /alert %}}
