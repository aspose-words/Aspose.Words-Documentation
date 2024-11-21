---
title: Utilice `DocumentBuilder` para Insertar Elementos de Documento
second_title: Aspose.Words para C++
articleTitle: Utilice `DocumentBuilder` para Insertar Elementos de Documento
linktitle: Utilice `DocumentBuilder` para Insertar Elementos de Documento
type: docs
description: "Inserte elementos de documento utilizando el generador de documentos en C++."
weight: 80
url: /es/cpp/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

El `DocumentBuilder` se usa para modificar documentos. Este artículo explica y describe cómo realizar una serie de tareas:

## Insertar una Cadena de Texto

Simplemente pase la cadena de texto que necesita insertar en el documento al método `DocumentBuilder.Write`. El formato del texto está determinado por la propiedad `Font`. Este objeto contiene diferentes atributos de fuente(nombre de fuente, tamaño de fuente, color, etc.). Algunos atributos de fuente importantes también están representados por propiedades DocumentBuilder para permitirle acceder a ellos directamente. Estas son propiedades booleanas `Font.Bold`, `Font.Italic` y `Font.Underline`.

Tenga en cuenta que el formato de caracteres que establezca se aplicará a todo el texto insertado desde la posición actual en el documento en adelante.

El siguiente ejemplo Inserta texto formateado usando DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WriteAndFont-WriteAndFont.cpp" >}}

## Insertar un Párrafo

 `DocumentBuilder.Writeln` también inserta una cadena de texto en el documento, pero además, agrega un salto de párrafo. El formato de fuente actual también se especifica mediante la propiedad `DocumentBuilder.Font` y el formato de párrafo actual se determina mediante la propiedad `DocumentBuilder.ParagraphFormat`. El siguiente ejemplo muestra cómo insertar un párrafo en el documento.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Insertar una Tabla

El algoritmo básico para crear una tabla usando DocumentBuilder es simple:

1. Comience la tabla usando `DocumentBuilder.StartTable`.
1. Inserte una celda usando `DocumentBuilder.InsertCell`. Esto inicia automáticamente una nueva fila. Si es necesario, use la propiedad `DocumentBuilder.CellFormat` para especificar el formato de celda.
1. Inserte el contenido de la celda utilizando los métodos `DocumentBuilder`.
1. Repita los pasos 2 y 3 hasta completar la fila.
1. Llame a `DocumentBuilder.EndRow` para finalizar la fila actual. Si es necesario, use la propiedad `DocumentBuilder.RowFormat` para especificar el formato de fila.
1. Repita los pasos 2 - 5 hasta completar la tabla.
1. Llama a `DocumentBuilder.EndTable` para terminar de construir la mesa. Los métodos apropiados de creación de la tabla DocumentBuilder se describen a continuación.

### Comenzando una Mesa

Llamar a `DocumentBuilder.StartTable` es el primer paso para crear una tabla. También se puede llamar dentro de una celda, en cuyo caso inicia una tabla anidada. El siguiente método a llamar es `DocumentBuilder.InsertCell`.

### Insertar una Celda

Después de llamar a `DocumentBuilder->InsertCell`, se crea una nueva celda y cualquier contenido que agregue utilizando otros métodos de la clase `DocumentBuilder` se agregará a la celda actual. Para iniciar una celda nueva en la misma fila, llame a `DocumentBuilder->InsertCell` nuevamente. Utilice la propiedad `DocumentBuilder.CellFormat` para especificar el formato de celda. Devuelve un objeto `CellFormat` que representa todo el formato de una celda de la tabla.

### Terminando una Fila

Llame a `DocumentBuilder.EndRow` para finalizar la fila actual. Si llama a `DocumentBuilder->InsertCell` inmediatamente después de eso, la tabla continúa en una nueva fila.

Utilice la propiedad `DocumentBuilder.RowFormat` para especificar el formato de fila. Devuelve un objeto `RowFormat` que representa todo el formato de una fila de la tabla.

### Poner fin a una Mesa

Llame a `DocumentBuilder.EndTable` para finalizar la tabla actual. Este método debe llamarse solo una vez después de llamar a `DocumentBuilder->EndRow`. Cuando se llama, `DocumentBuilder.EndTable` mueve el cursor fuera de la celda actual a una posición justo después de la tabla. El siguiente ejemplo demuestra cómo crear una tabla formateada que contenga 2 filas y 2 columnas.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.cpp" >}}

## Insertar una Pausa

Si desea iniciar explícitamente una nueva línea, párrafo, columna, sección o página, llame a `DocumentBuilder.InsertBreak`. Pase a este método el tipo de interrupción que necesita insertar que está representado por la enumeración `BreakType`. El siguiente ejemplo muestra cómo insertar saltos de página en un documento.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.cpp" >}}

## Insertar una Imagen

DocumentBuilder proporciona varias sobrecargas del método `DocumentBuilder->InsertImage` que le permiten insertar una imagen en línea o flotante. Si la imagen es un metarchivo EMF o WMF, se insertará en el documento en formato metarchivo. Todas las demás imágenes se almacenarán en formato PNG. El método `DocumentBuilder->InsertImage` puede usar imágenes de diferentes fuentes:

- Desde un archivo o `URL` pasando un parámetro de cadena `DocumentBuilder->InsertImage`.
- De una secuencia pasando un parámetro `Stream` `DocumentBuilder->InsertImage`.
- De un objeto Image pasando un parámetro Image `DocumentBuilder->InsertImage`.
- De una matriz de bytes pasando un parámetro de matriz de bytes `DocumentBuilder.InsertImage`.Para cada uno de los métodos `DocumentBuilder->InsertImage`, hay sobrecargas adicionales que le permiten insertar una imagen con las siguientes opciones:
- En línea o flotando en una posición específica, por ejemplo, `DocumentBuilder->InsertImage`.
- Escala porcentual o tamaño personalizado, por ejemplo, `DocumentBuilder.InsertImage`. Además, el método `DocumentBuilder->InsertImage` devuelve un objeto `Shape` que acaba de crearse e insertarse para que pueda modificar aún más las propiedades de la Forma.

### Insertar una Imagen en Línea

Pase una sola cadena que represente un archivo que contenga la imagen a `DocumentBuilder->InsertImage` para insertar la imagen en el documento como gráficos en línea. El siguiente ejemplo muestra cómo insertar una imagen en línea en la posición del cursor en un documento.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cpp" >}}

### Insertar una Imagen Flotante (Posicionada Absolutamente)

Este ejemplo inserta una imagen flotante de un archivo o `URL` en una posición y tamaño especificados.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cpp" >}}

## Insertar un Marcador

Para insertar un marcador en el documento, debe hacer lo siguiente:

1. Llame a `DocumentBuilder->StartBookmark` pasándole el nombre deseado del marcador.
1. Inserte el texto del marcador utilizando los métodos DocumentBuilder.
1. Llame a `DocumentBuilder.EndBookmark` pasándole el mismo nombre que usó con **DocumentBuilder->StartBookmark**.
1. Los marcadores pueden superponerse y abarcar cualquier rango. Para crear un marcador válido, debe llamar a `DocumentBuilder->StartBookmark` y `DocumentBuilder->EndBookmark` con el mismo nombre de marcador.

{{% alert color="primary" %}}

Los marcadores mal formados o los marcadores con nombres duplicados se ignorarán cuando se guarde el documento.

{{% /alert %}}

El siguiente ejemplo muestra cómo insertar un marcador en un documento utilizando un generador de documentos.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.cpp" >}}

## Insertar un campo `Form`

Los campos de formulario son un caso particular de campos de palabras que permiten la "interacción" con el usuario. Los campos de formulario en Microsoft Word incluyen cuadro de texto, cuadro combinado y casilla de verificación.DocumentBuilder proporciona métodos especiales para insertar cada tipo de campo de formulario en el documento: `DocumentBuilder.InsertTextInput`, `DocumentBuilder->InsertCheckBox` y `DocumentBuilder.InsertComboBox`. Tenga en cuenta que si especifica un nombre para el campo del formulario, se creará automáticamente un marcador con el mismo nombre.

### Insertar una Entrada de texto

 `DocumentBuilder.InsertTextInput` para insertar un cuadro de texto en el documento. El siguiente ejemplo muestra cómo insertar un campo de formulario de entrada de texto en un documento.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cpp" >}}

### Insertar una casilla de Verificación

Llame a `DocumentBuilder.InsertCheckBox` para insertar una casilla de verificación en el documento. El siguiente ejemplo muestra cómo insertar un campo de formulario de casilla de verificación en un documento.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cpp" >}}

### Insertar un Cuadro Combinado

Llame a `DocumentBuilder.InsertComboBox` para insertar un cuadro combinado en el documento. El siguiente ejemplo muestra cómo insertar un campo de formulario de cuadro combinado en un documento.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cpp" >}}

## Insertar Configuración regional a Nivel de Campo

Los clientes pueden especificar la configuración regional a nivel de campo ahora y pueden lograr un mejor control. Los ID de configuración regional se pueden asociar con cada campo dentro del DocumentBuilder. Los ejemplos a continuación ilustran cómo hacer uso de esta opción.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

## Insertar un Hipervínculo

Utilice `DocumentBuilder.InsertHyperlink` para insertar un hipervínculo en el documento. Este método acepta tres parámetros: texto del enlace que se mostrará en el documento, destino del enlace (URL o el nombre de un marcador dentro del documento) y un parámetro booleano que debería ser verdadero si `URL` es el nombre de un marcador dentro del documento.DocumentBuilder.InsertHyperlink llamadas internas `DocumentBuilder.InsertField`.El método siempre agrega apóstrofes al principio y al final de la URL. Tenga en cuenta que debe especificar el formato de fuente para el texto de visualización del hipervínculo explícitamente utilizando la propiedad `Font`. El siguiente ejemplo inserta un hipervínculo en un documento usando DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Insertar Objeto Ole

Si desea llamar al objeto Ole `DocumentBuilder.InsertOleObject`. Pase a este método el `ProgId` explícitamente con otros parámetros. El siguiente ejemplo muestra cómo insertar un objeto Ole en un documento.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cpp" >}}

## Establezca el Nombre y la Extensión del Archivo al Insertar el Objeto Ole

El paquete OLE es una forma heredada e "indocumentada" de almacenar objetos incrustados si se desconoce el controlador OLE. Versiones tempranas de Windows como Windows 3.1, 95 y 98 tenían Empaquetador.aplicación exe que podría usarse para incrustar cualquier tipo de datos en el documento. Ahora, esta aplicación está excluida de Windows, pero MS Word y otras aplicaciones aún la usan para incrustar datos si falta el controlador OLE o se desconoce. la clase OlePackage permite acceder a las propiedades del paquete OLE. El siguiente ejemplo muestra cómo configurar el nombre de archivo, la extensión y el nombre para mostrar del paquete OLE.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cpp" >}}

## Inserción de HTML

Puede insertar fácilmente una cadena HTML que contenga un fragmento HTML o un documento HTML completo en el documento de Word. Simplemente pase esta cadena al método `DocumentBuilder->InsertHtml`. Una de las implementaciones útiles del método es almacenar una cadena HTML en una base de datos e insertarla en el documento durante mail merge para agregar el contenido formateado en lugar de compilarlo utilizando varios métodos del generador de documentos. El siguiente ejemplo muestra inserciones HTML en un documento usando DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHtml.cpp" >}}

## Insertar Regla Horizontal en el Documento

El ejemplo Below code muestra cómo insertar una forma de regla horizontal en un documento utilizando el método `DocumentBuilder->InsertHorizontalRule`.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cpp" >}}
