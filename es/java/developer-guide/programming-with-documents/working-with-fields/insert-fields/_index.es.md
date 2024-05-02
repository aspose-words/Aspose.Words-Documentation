---
title: Insertar campos en Java
second_title: Aspose.Words para Java
articleTitle: Insertar campos
linktitle: Insertar campos
description: "Diferentes maneras de insertar campos en su documento utilizando Java."
type: docs
weight: 20
url: /es/java/insert-fields/
---

Hay varias maneras diferentes de insertar campos en un documento:

- usando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)
- usando [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)
- usando [Aspose.Words Document Object Model (DOM)](/words/es/java/aspose-words-document-object-model/)

En este artículo, vamos a mirar cada manera con más detalle y analizar cómo insertar ciertos campos utilizando estas opciones.

## Insertar campos en un documento utilizando DocumentBuilder

In Aspose.Words el [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean)) método se utiliza para insertar nuevos campos en un documento. El primer parámetro acepta el código de campo completo del campo a insertar. El segundo parámetro es opcional y permite que el resultado de campo del campo se establezca manualmente. Si esto no se suministra entonces el campo se actualiza automáticamente. Puede pasar nulo o vacío a este parámetro para insertar un campo con un valor de campo vacío. Si no está seguro sobre la sintaxis de código de campo particular, cree el campo en Microsoft Word primero y cambiar para ver su código de campo.

{{% alert color="primary" %}}

Si su código de campo tiene un parámetro que contiene un espacio, entonces debe estar encerrado dentro de las marcas de discurso. De lo contrario el campo en ambos Microsoft Word y Aspose.Words puede no funcionar como se espera que el parámetro sea tratado por ambos como truncado.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo insertar un campo de fusión en un documento utilizando **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

La misma técnica se utiliza para insertar campos anidados dentro de otros campos.

El siguiente ejemplo de código muestra cómo insertar campos anidados dentro de otro campo utilizando **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### Especifique Locale a nivel de campo

Un identificador de idiomas es una abreviatura numérica internacional estándar para el idioma en un país o región geográfica. Con Aspose.Words, puede especificar el Locale a nivel de campo utilizando el [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId) propiedad, que obtiene o establece la identificación local del campo.

El siguiente ejemplo de código muestra cómo utilizar esta opción:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### Insértese el campo no clasificado/empleado

Si desea insertar campos no definidos/vacíos ({}Como Microsoft Word permite, puede utilizar el [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) método con el [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) Parámetro. Para insertar un campo en un documento de Word, puede pulsar la combinación de teclas "Ctrl + F9".

El siguiente ejemplo de código muestra cómo insertar un campo vacío en el documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### Insertar `COMPARE` Campo

El `COMPARE` campo compara dos valores y devuelve el valor numérico 1 si la comparación es true o 0 si la comparación es false.

El siguiente ejemplo de código muestra cómo agregar `COMPARE` campos utilizando DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### Insertar `IF` Campo

El `IF` campo se puede utilizar para evaluar argumentos condicionalmente.

El siguiente ejemplo de código muestra cómo agregar `IF` campos utilizando DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## Insertar campos en un documento utilizando FieldBuilder

La forma alternativa de insertar campos en Aspose.Words es [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/) clase. Proporciona una interfaz fluida para especificar los interruptores de campo y los valores de argumento como texto, nodos o incluso campos anidados.

El siguiente ejemplo de código muestra cómo insertar un campo en un documento utilizando **FieldBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## Insertar campos utilizando DOM

También puede insertar varios tipos de campos utilizando [Aspose.Words Document Object Model (DOM)](/words/es/java/aspose-words-document-object-model/). En esta sección veremos algunos ejemplos.

### Inserción Campo en un documento usando DOM

`MERGEFIELD` campo en el documento de Word puede ser representado por el [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) clase. Puedes usar **FieldMergeField** clase para realizar las siguientes operaciones:

- especificar el nombre del campo de fusión
- especificar el formato del campo de fusión
- especificar el texto que está entre el separador de campo y el extremo del campo de fusión
- especificar el texto que debe insertarse después del campo de fusión si el campo no está en blanco
- especificar el texto que se inserta antes del campo de fusión si el campo no está en blanco

{{% alert color="primary" %}}

Para más detalles, vea el [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) clase API.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar el `MERGE` campo utilizando DOM a un párrafo en un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### Insertar Mail Merge `ADDRESSBLOCK` campo en un documento utilizando DOM

El `ADDRESSBLOCK` campo se utiliza para insertar un mail merge bloque de dirección en un documento de Word. `ADDRESSBLOCK` campo en el documento de Word puede ser representado por el [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) clase. Puedes usar **FieldAddressBlock** clase para realizar las siguientes operaciones:

- especificar si debe incluir el nombre del país/región sobre el terreno
- especificar si formatear la dirección de acuerdo con el país/región del destinatario según lo definido por POST*CODE (Universal Postal Union 2006)
- especificar el nombre del país/región excluido
- especificar el formato de nombre y dirección
- especificar el ID de idioma utilizado para formatear la dirección

{{% alert color="primary" %}}

Para más detalles, vea el [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) clase API.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar el Mail Merge `ADDRESSBLOCK` Campo utilizando DOM a un párrafo en un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### Insertar `ADVANCE` campo en un documento sin utilizar DocumentBuilder

El `ADVANCE` campo se utiliza para compensar el texto posterior dentro de una línea a la izquierda, derecha, arriba o abajo. `ADVANCE` campo en el documento de Word puede ser representado por el [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) clase. Puedes usar el **FieldAdvance** clase para realizar las siguientes operaciones:

- especificar el número de puntos por los cuales el texto que sigue el campo debe moverse verticalmente desde el borde superior de la página
- especificar el número de puntos por los cuales el texto que sigue el campo debe ser movido horizontalmente desde el borde izquierdo de la columna, el marco o el cuadro de texto
- especificar el número de puntos por los cuales el texto que sigue el campo debe ser movido izquierda, derecha, arriba o abajo

{{% alert color="primary" %}}

Para más detalles, vea el [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) clase API.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar el `ADVANCE` Campo utilizando DOM a un párrafo en un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### Insertar `ASK` campo en un documento sin utilizar DocumentBuilder

El `ASK` campo se utiliza para incitar al usuario a enviar texto a un marcador en el documento Word. `ASK` campo en el documento de Word puede ser representado por el [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) clase. Puedes usar **FieldAsk** clase para realizar las siguientes operaciones:

- especificar el nombre del marcador
- especificar la respuesta predeterminada del usuario (valor inicial contenido en la ventana del indicador)
- especificar si la respuesta del usuario debe recibirse una vez por una mail merge operación
- especifique el texto inmediato (el título de la ventana rápida)

{{% alert color="primary" %}}

Para más detalles, vea el [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) clase API.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar el `ASK` Campo utilizando DOM a un párrafo en un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### Insertar `AUTHOR` campo en un documento sin utilizar DocumentBuilder

El `AUTHOR` campo se utiliza para especificar el nombre del autor del documento del `Document` propiedades. `AUTHOR` campo en el documento de Word puede ser representado por el [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) clase. Puedes usar **FieldAuthor** clase para realizar las siguientes operaciones:

- especificar el nombre del autor del documento

{{% alert color="primary" %}}

Para más detalles, vea el [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) clase API.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar el `AUTHOR` Campo utilizando DOM a un párrafo en un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### Insertar `INCLUDETEXT` campo en un documento sin utilizar DocumentBuilder

El `INCLUDETEXT` campo inserta el texto y los gráficos contenidos en el documento nombrado en el código de campo. Puede insertar el documento completo o una parte del documento a que se refiere un marcador. Este campo en el documento Word está representado por INCLUDETEXT. Puedes usar [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) clase para realizar las siguientes operaciones:

- especificar el nombre del marcador del documento incluido
- especificar la ubicación del documento

{{% alert color="primary" %}}

Para más detalles, vea el [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) clase API.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar el `INCLUDETEXT` campo utilizando DOM a un párrafo en un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### Insertar `TOA` campo en un documento sin utilizar DocumentBuilder

El `TOA` (*Tabla de Autoridades*) construye e inserta un cuadro de autoridades. El `TOA` campo recoge entradas marcadas por `TA` (*Tabla de Autoridades Entrada*) campos. Microsoft Office Word inserta los `TOA` campo cuando haga clic en *Insertar Tabla de Autoridades* en el **Cuadro de Autoridades** grupo sobre el **References** tab. Cuando veas el `TOA` campo en su documento, la sintaxis se ve así:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Para más detalles, vea el [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/) clase API.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar el `TOA` campo utilizando DOM a un párrafo en un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}
