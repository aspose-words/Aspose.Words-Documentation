---
title: Insertar campos en C++
second_title: Aspose.Words para C++
articleTitle: Insertar Campos
linktitle: Insertar Campos
description: "Diferentes formas de insertar campos en su documento usando C++."
type: docs
weight: 20
url: /es/cpp/inserting-fields/
timestamp: 2024-01-27-14-07-04
---

Hay varias formas diferentes de insertar campos en un documento:

- usando [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)
- usando [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/)
- usando [Aspose.Words Modelo de Objetos de documento (DOM)](/words/cpp/aspose-words-document-object-model/)

En este artículo, veremos cada forma con más detalle y analizaremos cómo insertar ciertos campos usando estas opciones.

## Insertar campos en un documento usando DocumentBuilder

En Aspose.Words, el método [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) se usa para insertar nuevos campos en un documento. El primer parámetro acepta el código de campo completo del campo a insertar. El segundo parámetro es opcional y permite configurar manualmente el resultado del campo. Si no se proporciona, el campo se actualiza automáticamente. Puede pasar nulo o vacío a este parámetro para insertar un campo con un valor de campo vacío. Si no está seguro de la sintaxis del código de campo en particular, primero cree el campo en Microsoft Word y cambie para ver su código de campo.

{{% alert color="primary" %}}

Si su código de campo tiene un parámetro que contiene un espacio, entonces debe estar encerrado dentro de las marcas de voz. De lo contrario, es posible que el campo tanto en Microsoft Word como en Aspose.Words no funcione como se esperaba, ya que ambos tratan el parámetro como truncado

{{% /alert %}}

El siguiente ejemplo de código muestra cómo insertar un campo de combinación en un documento usando **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertField.h" >}}

Se utiliza la misma técnica para insertar campos anidados dentro de otros campos.

El siguiente ejemplo de código muestra cómo insertar campos anidados dentro de otro campo usando **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cpp" >}}

### Especifique la configuración regional a Nivel de Campo

Un identificador de idioma es una abreviatura numérica internacional estándar para el idioma en un país o región geográfica. Con Aspose.Words, puede especificar la configuración regional a nivel de campo utilizando la propiedad [LocaleId](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_localeid/), que obtiene o establece el ID de configuración regional del campo.

El siguiente ejemplo de código muestra cómo usar esta opción:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

### Insertar Campo sin Tipo / Vacío

Si desea insertar campos sin tipo / vacíos ({}) tal como lo permite Microsoft Word, puede usar el método [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield) con el parámetro [FieldType.FieldNone](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/). Para insertar un campo en un documento de Word, puede presionar la combinación de teclas "Ctrl + F9".

El siguiente ejemplo de código muestra cómo insertar un campo vacío en el documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cpp" >}}

## Insertar campos en un documento usando FieldBuilder

La forma alternativa de insertar campos en Aspose.Words es la clase [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/). Proporciona una interfaz fluida para especificar modificadores de campo y valores de argumento como texto, nodos o incluso campos anidados.

El siguiente ejemplo de código muestra cómo insertar un campo en un documento usando **FieldBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder-InsertFieldUsingFieldBuilder.cpp" >}}

## Insertar campos usando DOM

También puede insertar varios tipos de campos usando [Aspose.Words Modelo de Objetos de documento (DOM)](/words/cpp/aspose-words-document-object-model/). En esta sección, veremos algunos ejemplos.

### Insertar Campo de combinación en un documento usando DOM

El campo `MERGEFIELD` en el documento de Word puede representarse mediante la clase [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/). Puede usar la clase **FieldMergeField** para realizar las siguientes operaciones:

- especifique el nombre del campo de combinación
- especifique el formato del campo de combinación
- especifique el texto que se encuentra entre el separador de campo y el final del campo del campo de combinación
- especifique el texto que se insertará después del campo de combinación si el campo no está en blanco
- especifique el texto que se insertará antes del campo de combinación si el campo no está en blanco

{{% alert color="primary" %}}

Para obtener más detalles, consulte la API de clase [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/)..

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar el campo `MERGE` usando DOM a un párrafo en un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Insertar el campo de bloque de dirección Mail Merge en un documento usando DOM

El campo `ADDRESSBLOCK` se usa para insertar un bloque de direcciones Mail Merge en un documento de Word. El campo `ADDRESSBLOCK` en el documento de Word puede representarse mediante la clase [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/). Puede usar la clase **FieldAddressBlock** para realizar las siguientes operaciones:

- especifique si desea incluir el nombre del país / región en el campo
- especifique si desea formatear la dirección de acuerdo con el país/región del destinatario según lo definido por el CÓDIGO POSTAL*(Unión Postal Universal 2006)
- especifique el nombre del país/región excluido
- especifique el nombre y el formato de la dirección
- especifique el ID de idioma utilizado para formatear la dirección

{{% alert color="primary" %}}

Para obtener más detalles, consulte la API de clase [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/)..

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar el campo Mail Merge `ADDRESSBLOCK` usando DOM a un párrafo en un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Insertar campo Avanzado en un documento sin usar DocumentBuilder

El campo `ADVANCE` se usa para desplazar el texto subsiguiente dentro de una línea hacia la izquierda, derecha, arriba o abajo. El campo `ADVANCE` en el documento de Word puede representarse mediante la clase [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/). Puede usar la clase FieldAdvance para realizar las siguientes operaciones:

- especifique el número de puntos en los que el texto que sigue al campo debe moverse verticalmente desde el borde superior de la página
- especifique el número de puntos en los que el texto que sigue al campo debe moverse horizontalmente desde el borde izquierdo de la columna, el marco o el cuadro de texto
- especifique el número de puntos en los que se debe mover el texto que sigue al campo hacia la izquierda, derecha, arriba o abajo.

{{% alert color="primary" %}}

Para obtener más detalles, consulte la API de clase [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/)..

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar el campo `ADVANCE` usando DOM a un párrafo en un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAdvanceFieldWithoutDocumentBuilder-InsertAdvanceFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Insertar el campo `ASK` en un documento sin usar DocumentBuilder

El campo `ASK` se usa para solicitar al usuario texto para asignar a un marcador en un documento de Word. El campo `ASK` en el documento de Word puede representarse mediante la clase [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask/). Puede usar la clase **FieldAsk** para realizar las siguientes operaciones:

- especifique el nombre del marcador
- especifique la respuesta predeterminada del usuario (valor inicial contenido en la ventana de solicitud)
- especifique si la respuesta del usuario debe recibirse una vez por operación mail merge
- especifique el texto del mensaje (el título de la ventana del mensaje)

{{% alert color="primary" %}}

Para obtener más detalles, consulte la API de clase [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask)..

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar el campo `ASK` usando DOM a un párrafo en un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertASKFieldWithoutDocumentBuilder-InsertASKFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Insertar el campo `AUTHOR` en un documento sin usar DocumentBuilder

El campo `AUTHOR` se usa para especificar el nombre del autor del documento de las propiedades `Document`. El campo `AUTHOR` en el documento de Word puede representarse mediante la clase [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/). Puede usar la clase **FieldAuthor** para realizar las siguientes operaciones:

- especifique el nombre del autor del documento

{{% alert color="primary" %}}

Para obtener más detalles, consulte la API de clase [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/)..

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar el campo `AUTHOR` usando DOM a un párrafo en un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cpp" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Insertar el campo `INCLUDETEXT` en un documento sin usar DocumentBuilder

El campo `INCLUDETEXT` inserta el texto y los gráficos contenidos en el documento nombrado en el código del campo. Puede insertar el documento completo o una parte del documento al que se hace referencia mediante un marcador. Este campo en el documento de Word está representado por INCLUDETEXT. Puede usar la clase [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) para realizar las siguientes operaciones:

- especifique el nombre del marcador del documento incluido
- especifique la ubicación del documento

{{% alert color="primary" %}}

Para obtener más detalles, consulte la API de clase [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/)..

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar el campo `INCLUDETEXT` usando DOM a un párrafo en un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertFieldIncludeTextWithoutDocumentBuilder.h" >}}

### Insertar el campo `TOA` en un documento sin usar DocumentBuilder

El campo `TOA` (*Table of Authorities*) genera e inserta una tabla de autoridades. El campo `TOA` recopila entradas marcadas con campos `TA` (*Table of Authorities Entry*). Microsoft Office Word inserta el campo `TOA` cuando hace clic en *Insert Table of Authorities* en el grupo **Table of Authorities** en la pestaña **References**. Cuando ve el campo `TOA` en su documento, la sintaxis se ve así:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Para obtener más detalles, consulte la API de clase [FieldToa](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtoa/)..

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar el campo `TOA` usando DOM a un párrafo en un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cpp" >}}/
