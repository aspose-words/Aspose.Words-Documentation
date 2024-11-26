---
title: Trabajar con Propiedades de documentos en C++
second_title: Aspose.Words para C++
articleTitle: Trabajar con Propiedades de Documentos
linktitle: Trabajar con Propiedades de Documentos
description: "Aspose.Words para C++ permite almacenar cierta información útil sobre su documento, como API y Número de versión o Fecha Autorizada, en propiedades integradas o personalizadas del documento."
type: docs
weight: 10
url: /es/cpp/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Las propiedades del documento permiten almacenar cierta información útil sobre su documento. Estas propiedades se pueden dividir en dos grupos:

* Sistema o integrado que contienen valores como título del documento, nombre del autor, estadísticas del documento y otros.
* Definido por el usuario o personalizado, proporcionado como pares nombre-valor donde el usuario puede definir tanto el nombre como el valor.

Es útil saber que la información sobre la API y el Número de versión se escribe directamente en los documentos de salida. Por ejemplo, al convertir un documento a PDF, Aspose.Words completa el campo" Solicitud "con" Aspose.Words" y el campo" PDF Productor " con "Aspose.Words para C++ YY.M. N", donde *YY.M.N* es la versión de Aspose.Words utilizada para la conversión. Para más detalles, consulte [Nombre del Generador o Productor Incluido en los Documentos de Salida](/words/cpp/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Tenga en cuenta que **cannot direct** Aspose.Words para cambiar o eliminar esta información de los documentos de salida.

{{% /alert %}}

## Acceder a las Propiedades del Documento

Para acceder a las propiedades del documento en Aspose.Words, use:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/) para obtener propiedades integradas.

* [CustomDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/) para obtener propiedades personalizadas.

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

La clase [DocumentProperty](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/) le permite obtener el nombre, el valor y el tipo de una propiedad de documento. [Value](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_value/) devuelve un objeto, pero hay un conjunto de métodos que le permiten convertir el valor de la propiedad a un tipo específico. Una vez que sepa qué tipo es la propiedad, puede usar uno de los métodos **DocumentProperty.ToXXX**, como **DocumentProperty.**[ToString](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/tostring/) y **DocumentProperty.**[ToInt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/toint/), para obtener el valor del tipo apropiado.

El siguiente ejemplo de código muestra cómo enumerar todas las propiedades integradas y personalizadas en un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-EnumerateProperties.cpp" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

En Microsoft Word, puede acceder a las propiedades del documento utilizando el menú" Archivo → Propiedades".

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-cpp_1.png" style="width:400px"/>

## Agregar o Quitar Propiedades del documento

No puede agregar ni quitar propiedades de documento integradas con Aspose.Words. Solo puedes cambiar o actualizar sus valores.

Para agregar propiedades de documento personalizadas con Aspose.Words, use el método [Add](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/add/), pasando el nuevo nombre de propiedad y el valor del tipo apropiado. El método devuelve el objeto **DocumentProperty** recién creado.

Para eliminar propiedades personalizadas, use el método [Remove](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/remove/), pasándole el nombre de la propiedad para eliminar, o el método [RemoveAt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/removeat/) para eliminar la propiedad por índice. También puede eliminar todas las propiedades utilizando el método [Clear](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/clear/).

El siguiente ejemplo de código comprueba si existe una propiedad personalizada con un nombre dado en un documento y agrega algunas propiedades de documento personalizadas más:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomAdd.cpp" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

El siguiente ejemplo de código muestra cómo eliminar una propiedad de documento personalizada:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomRemove.cpp" >}}

## Actualizar las Propiedades Integradas del Documento

Aspose.Words no actualiza automáticamente las propiedades del documento, como lo hace Microsoft Word con algunas propiedades, pero proporciona un método para actualizar algunas propiedades estadísticas integradas del documento. Llame al método [UpdateWordCount](https://reference.aspose.com/words/cpp/aspose.words/document/updatewordcount/) para recalcular y actualizar las siguientes propiedades:

* [Characters](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characterswithspaces/)
* [Words](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_words/)
* [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_paragraphs/)
* [Lines](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lines/)

## Crear una Nueva Propiedad Personalizada Vinculada al Contenido

Aspose.Words proporciona el método [AddLinkToContent](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/addlinktocontent/) para crear una nueva propiedad de documento personalizada vinculada al contenido. Esta propiedad devuelve el objeto de propiedad recién creado o nulo si [LinkSource](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_linksource/) no es válido.

El siguiente ejemplo de código muestra cómo configurar un enlace a una propiedad personalizada:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cpp" >}}

## Obtener Variables de Documento

Puede obtener una colección de variables de documento utilizando la propiedad [Variables](https://reference.aspose.com/words/cpp/aspose.words/document/get_variables/). Los nombres y valores de las variables son cadenas.

El siguiente ejemplo de código muestra cómo enumerar variables de documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetVariables-GetVariables.cpp" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Eliminar Información Personal del Documento

Si desea compartir un documento de Word con otras personas, es posible que desee eliminar información personal, como el nombre del autor y la empresa. Para hacer esto, use la propiedad [RemovePersonalInformation](https://reference.aspose.com/words/cpp/aspose.words/document/get_removepersonalinformation/) para establecer el indicador que indica que Microsoft Word eliminará toda la información del usuario de los comentarios, revisiones y propiedades del documento al guardar el documento.

El siguiente ejemplo de código muestra cómo eliminar información personal:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cpp" >}}

{{% alert color="primary" %}}

Establecer esta opción en realidad no elimina la información personal mientras se procesa un documento en Aspose.Words y afecta solo al comportamiento de Microsoft Word.

{{% /alert %}}
