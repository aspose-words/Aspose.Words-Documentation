---
title: Insertar campos en C#
second_title: Aspose.Words para .NET
articleTitle: Insertar campos
linktitle: Insertar campos
description: "Cómo insertar campos en un documento usando C#: aprenda diferentes formas con ejemplos de código."
type: docs
weight: 20
url: /es/net/inserting-fields/
timestamp: 2024-01-27-14-07-04
---

Hay varias formas diferentes de insertar campos en un documento:

* usando [DocumentBuilder](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/)
* usando [FieldBuilder](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldbuilder/)
* usando [Modelo de objetos de documento Aspose.Words (DOM)](/words/es/net/aspose-words-document-object-model/)

En este artículo, veremos cada forma con más detalle y analizaremos cómo insertar ciertos campos usando estas opciones.

## Insertar campos en un documento usando DocumentBuilder

En Aspose.Words, el método [InsertField](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/insertfield/) se utiliza para insertar nuevos campos en un documento. El primer parámetro acepta el código de campo completo del campo a insertar. El segundo parámetro es opcional y permite configurar manualmente el resultado del campo. Si no se proporciona, el campo se actualiza automáticamente. Puede pasar nulo o vacío a este parámetro para insertar un campo con un valor de campo vacío. Si no está seguro de la sintaxis del código de campo en particular, primero cree el campo en Microsoft Word y cambie para ver su código de campo.

{{% alert color="primary" %}}

Si su código de campo tiene un parámetro que contiene un espacio, debe estar encerrado entre marcas de voz. De lo contrario, es posible que el campo tanto en Microsoft Word como en Aspose.Words no funcione como se esperaba, ya que ambos tratan el parámetro como si estuviera truncado.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo insertar un campo de combinación en un documento usando **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertField-InsertField.cs" >}}

Se utiliza la misma técnica para insertar campos anidados dentro de otros campos.

El siguiente ejemplo de código muestra cómo insertar campos anidados dentro de otro campo usando **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cs" >}}

### Especificar configuración regional a nivel de campo

Un identificador de idioma es una abreviatura numérica internacional estándar para el idioma de un país o región geográfica. Con Aspose.Words, puede especificar la configuración regional a nivel de campo usando la propiedad [LocaleId](https://reference.aspose.com/words/es/net/aspose.words.fields/field/localeid/), que obtiene o establece el ID de configuración regional del campo.

El siguiente ejemplo de código muestra cómo utilizar esta opción:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cs" >}}

### Insertar campo sin escribir/vacío

Si desea insertar campos vacíos/sin escribir ({}) tal como lo permite Microsoft Word, puede usar el método [InsertField](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/insertfield/) con el parámetro [FieldType.FieldNone](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldtype/). Para insertar un campo en un documento de Word, puede presionar la combinación de teclas "Ctrl + F9".

El siguiente ejemplo de código muestra cómo insertar un campo vacío en el documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cs" >}}

## Insertar campos en un documento usando FieldBuilder
La forma alternativa de insertar campos en Aspose.Words es la clase [FieldBuilder](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldbuilder/). Proporciona una interfaz fluida para especificar cambios de campo y valores de argumentos como texto, nodos o incluso campos anidados.

El siguiente ejemplo de código muestra cómo insertar un campo en un documento usando **FieldBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder.cs" >}}

## Insertar campos usando DOM

También puede insertar varios tipos de campos usando [Modelo de objetos de documento Aspose.Words (DOM)](/words/es/net/aspose-words-document-object-model/). En esta sección veremos algunos ejemplos.

### Insertar campo de combinación en un documento usando DOM

El campo `MERGEFIELD` en un documento de Word se puede representar mediante la clase [FieldMergeField](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldmergefield/). Puede utilizar la clase **FieldMergeField** para realizar las siguientes operaciones:

- especifique el nombre del campo de combinación
- especificar el formato del campo de combinación
- especifique el texto que se encuentra entre el separador de campo y el final del campo de combinación
- especifique el texto que se insertará después del campo de combinación si el campo no está en blanco
- especifique el texto que se insertará antes del campo de combinación si el campo no está en blanco

{{% alert color="primary" %}}

Para obtener más detalles, consulte la clase [FieldMergeField](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldmergefield/) API.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar el campo `MERGE` usando DOM a un párrafo de un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cs" >}}

### Insertar el campo Mail Merge `ADDRESSBLOCK` en un documento usando DOM

El campo `ADDRESSBLOCK` se utiliza para insertar un bloque de dirección mail merge en un documento de Word. El campo `ADDRESSBLOCK` en un documento de Word se puede representar mediante la clase [FieldAddressBlock](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldaddressblock/). Puede utilizar la clase **FieldAddressBlock** para realizar las siguientes operaciones:

- especifique si desea incluir el nombre del país/región en el campo
- especifique si desea formatear la dirección según el país/región del destinatario según lo definido por POST*CODE (Unión Postal Universal 2006)
- especifique el nombre del país/región excluidos
- especificar el formato de nombre y dirección
- especifique el ID de idioma utilizado para formatear la dirección

{{% alert color="primary" %}}

Para obtener más detalles, consulte la clase [FieldAddressBlock](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldaddressblock/) API.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar el campo Mail Merge `ADDRESSBLOCK` usando DOM a un párrafo de un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cs" >}}

### Insertar un campo `ADVANCE` en un documento sin usar DocumentBuilder

El campo `ADVANCE` se utiliza para desplazar el texto posterior dentro de una línea hacia la izquierda, derecha, arriba o abajo. El campo `ADVANCE` en un documento de Word se puede representar mediante la clase [FieldAdvance](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldadvance/). Puede utilizar la clase **FieldAdvance** para realizar las siguientes operaciones:

- especifique el número de puntos por los cuales el texto que sigue al campo debe moverse verticalmente desde el borde superior de la página
- especifique el número de puntos por los cuales el texto que sigue al campo debe moverse horizontalmente desde el borde izquierdo de la columna, marco o cuadro de texto
- especifique el número de puntos por los cuales el texto que sigue al campo debe moverse hacia la izquierda, derecha, arriba o abajo

{{% alert color="primary" %}}

Para obtener más detalles, consulte la clase [FieldAdvance](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldadvance/) API.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar el campo `ADVANCE` usando DOM a un párrafo de un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAdvanceFieldWithOutDocumentBuilder-InsertAdvanceFieldWithOutDocumentBuilder.cs" >}}

### Insertar un campo `ASK` en un documento sin usar DocumentBuilder

El campo `ASK` se utiliza para solicitar al usuario el texto que desea asignar a un marcador en un documento de Word. El campo `ASK` en un documento de Word se puede representar mediante la clase [FieldAsk](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldask/). Puede utilizar la clase **FieldAsk** para realizar las siguientes operaciones:

- especificar el nombre del marcador
- especificar la respuesta del usuario predeterminada (valor inicial contenido en la ventana de solicitud)
- especificar si la respuesta del usuario debe recibirse una vez por operación mail merge
- especificar el texto del mensaje (el título de la ventana del mensaje)

{{% alert color="primary" %}}

Para obtener más detalles, consulte la clase [FieldAsk](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldask/) API.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar el campo `ASK` usando DOM a un párrafo de un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertASKFieldWithOutDocumentBuilder-InsertASKFieldWithOutDocumentBuilder.cs" >}}

### Insertar un campo `AUTHOR` en un documento sin usar DocumentBuilder

El campo `AUTHOR` se utiliza para especificar el nombre del autor del documento desde las propiedades `Document`. El campo `AUTHOR` en un documento de Word se puede representar mediante la clase [FieldAuthor](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldauthor/). Puede utilizar la clase **FieldAuthor** para realizar las siguientes operaciones:

- especificar el nombre del autor del documento

{{% alert color="primary" %}}

Para obtener más detalles, consulte la clase [FieldAuthor](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldauthor/) API.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar el campo `AUTHOR` usando DOM a un párrafo de un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cs" >}}

### Insertar un campo `INCLUDETEXT` en un documento sin usar DocumentBuilder

El campo `INCLUDETEXT` inserta el texto y los gráficos contenidos en el documento nombrado en el código de campo. Puede insertar el documento completo o una parte del documento al que hace referencia un marcador. Este campo en un documento de Word está representado por INCLUDETEXT. Puede utilizar la clase [FieldIncludeText](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldincludetext/) para realizar las siguientes operaciones:

- especifique el nombre del marcador del documento incluido
- especificar la ubicación del documento

{{% alert color="primary" %}}

Para obtener más detalles, consulte la clase [FieldIncludeText](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldincludetext/) API.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar el campo `INCLUDETEXT` usando DOM a un párrafo de un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertIncludeFieldWithoutDocumentBuilder-InsertFieldIncludeTextWithoutDocumentBuilder.cs" >}}

### Insertar un campo `TOA` en un documento sin usar DocumentBuilder

El campo `TOA` (*Tabla de autoridades*) crea e inserta una tabla de autoridades. El campo `TOA` recopila entradas marcadas por campos `TA` (*Entrada de tabla de autoridades*). Microsoft Office Word inserta el campo `TOA` al hacer clic en *Insertar tabla de autoridades* en el grupo **Mesa de Autoridades** de la pestaña **References**. Cuando ve el campo `TOA` en su documento, la sintaxis se ve así:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Para obtener más detalles, consulte la clase [FieldToa](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldtoa/) API.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar el campo `TOA` usando DOM a un párrafo de un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cs" >}}
