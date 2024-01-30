---
title: Trabajar con propiedades de documento
second_title: Aspose.Words para Python via .NET
articleTitle: Trabajar con propiedades de documento
linktitle: Trabajar con propiedades de documento
description: "Aspose.Words para Python permite almacenar información útil sobre su documento, como API y número de versión o fecha autorizada, en propiedades de documento integradas o personalizadas."
type: docs
weight: 10
url: /es/python-net/work-with-document-properties/
---

Las propiedades del documento permiten almacenar información útil sobre su documento. Estas propiedades se pueden dividir en dos grupos:

* Sistema o integrado que contiene valores como título del documento, nombre del autor, estadísticas del documento y otros.
* Definido por el usuario o personalizado, proporcionado como pares de nombre-valor donde el usuario puede definir tanto el nombre como el valor.

Es útil saber que la información sobre API y el número de versión se escribe directamente en los documentos de salida. Por ejemplo, al convertir un documento a PDF, Aspose.Words completa el campo "Aplicación" con "Aspose.Words" y el campo "Productor de PDF" con "Aspose.Words para .NET YY.MN", donde *YY.M.N* es la versión de Aspose.Words utilizada para la conversión.. Para obtener más detalles, consulte [Nombre del generador o productor incluido en los documentos de salida](/words/es/python-net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Tenga en cuenta que debe **no puede dirigir** Aspose.Words para cambiar o eliminar esta información de los documentos de salida.

{{% /alert %}}

## Acceder a las propiedades del documento

Para acceder a las propiedades del documento en Aspose.Words, utilice:

* [built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) para obtener propiedades integradas.

* [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) para obtener propiedades personalizadas.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) y [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) son colecciones de objetos [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/). Estos objetos se pueden obtener a través de la propiedad del indexador por nombre o por índice.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) además proporciona acceso a las propiedades del documento a través de un conjunto de propiedades ingresadas que devuelven valores del tipo apropiado. [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) le permite agregar o eliminar propiedades de un documento.

La clase [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) le permite obtener el nombre, valor y tipo de propiedad de un documento. [value](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/value/) devuelve un objeto, pero existe un conjunto de métodos que le permiten convertir el valor de la propiedad a un tipo específico. Una vez que sepa de qué tipo es la propiedad, puede utilizar uno de los métodos **Propiedad del documento.to_XXX**, como **PropiedadDocumento.\_\_str\_\_** y [DocumentProperty.to_int](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/to_int/), para obtener el valor del tipo apropiado.

El siguiente ejemplo de código muestra cómo enumerar todas las propiedades integradas y personalizadas en un documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-EnumerateProperties.py" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

En Microsoft Word, puede acceder a las propiedades del documento utilizando el menú "Archivo → Propiedades".

<img src="/words/python-net/work-with-document-properties/work-with-document-properties-1.png" alt="trabajar-con-propiedades-de-documento-1.png" style="width:400px"/>

## Agregar o quitar propiedades del documento

No puede agregar ni eliminar propiedades de documentos integradas utilizando Aspose.Words. Sólo puede cambiar o actualizar sus valores.

Para agregar propiedades de documentos personalizadas con Aspose.Words, use el método [add](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add/), pasando el nuevo nombre de propiedad y el valor del tipo apropiado. El método devuelve el objeto [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) recién creado.

Para eliminar propiedades personalizadas, utilice el método [remove](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove/), pasándole el nombre de la propiedad a eliminar, o el método [remove_at](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove_at/) para eliminar la propiedad por índice. También puede eliminar todas las propiedades utilizando el método [clear](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/clear/).

El siguiente ejemplo de código comprueba si existe una propiedad personalizada con un nombre determinado en un documento y agrega algunas propiedades de documento personalizadas más:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-AddCustomDocumentProperties.py" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

El siguiente ejemplo de código muestra cómo eliminar una propiedad de documento personalizada:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-CustomRemove.py" >}}

## Actualizar las propiedades del documento integrado

Aspose.Words no actualiza automáticamente las propiedades del documento, como lo hace Microsoft Word con algunas propiedades, pero proporciona un método para actualizar algunas propiedades estadísticas integradas del documento. Llame al método [update_word_count](https://reference.aspose.com/words/python-net/aspose.words/document/update_word_count/) para volver a calcular y actualizar las siguientes propiedades:

* [characters](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters/)
* [characters_with_spaces](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters_with_spaces/)
* [words](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/words/)
* [paragraphs](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [lines](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/lines/)

## Crear una nueva propiedad personalizada vinculada al contenido

Aspose.Words proporciona el método [add_link_to_content](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add_link_to_content/) para crear una nueva propiedad de documento personalizada vinculada al contenido. Esta propiedad devuelve el objeto de propiedad recién creado o nulo si el **fuente_enlace** no es válido.

El siguiente ejemplo de código muestra cómo configurar un vínculo a una propiedad personalizada:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConfiguringLinkToContent.py" >}}

## Obtener variables del documento

Puede obtener una colección de variables de documentos utilizando la propiedad [variables](https://reference.aspose.com/words/python-net/aspose.words/document/variables/). Los nombres y valores de las variables son cadenas.

El siguiente ejemplo de código muestra cómo agregar y acceder a variables de documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-GetVariables.py" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Eliminar información personal del documento

Si desea compartir un documento de Word con otras personas, es posible que desee eliminar información personal como el nombre del autor y la empresa. Para hacer esto, use la propiedad [remove_personal_information](https://reference.aspose.com/words/python-net/aspose.words/document/remove_personal_information/) para establecer la bandera que indica que Microsoft Word eliminará toda la información del usuario de los comentarios, revisiones y propiedades del documento al guardarlo.

El siguiente ejemplo de código muestra cómo eliminar información personal:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-RemovePersonalInformation.py" >}}

{{% alert color="primary" %}}

Establecer esta opción en realidad no elimina información personal mientras se procesa un documento en Aspose.Words y afecta solo al comportamiento de Microsoft Word.

{{% /alert %}}