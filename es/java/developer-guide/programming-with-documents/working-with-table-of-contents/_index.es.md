---
title: Trabajar con la Tabla de contenido en Java
second_title: Aspose.Words por Java
articleTitle: Trabajar con la Tabla de Contenido
linktitle: Trabajar con la Tabla de Contenido
description: "Tabla de campo de contenido en detalles. Cómo crear y modificar el campo `TOC` usando Java."
type: docs
weight: 170
url: /es/java/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

A menudo, trabajará con documentos que contengan una tabla de contenido (TOC). Usando Aspose.Words puede insertar su propia tabla de contenido o reconstruir completamente la tabla de contenido existente en el documento usando solo unas pocas líneas de código.

Este artículo describe cómo trabajar con el campo tabla de contenido y demuestra:

- Cómo insertar un TOC nuevo.
- Actualice TOCs nuevo o existente en el documento.
- Especifique modificadores para controlar el formato y la estructura general del TOC.
- Cómo modificar los estilos y la apariencia de la tabla de contenido.
- Cómo eliminar un campo `TOC` completo junto con todas las entradas del documento.

## Insertar Tabla de Contenido mediante Programación

Puede insertar un campo `TOC` (tabla de contenido) en el documento en la posición actual llamando al método [InsertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String).

Una tabla de contenido en un documento de Word se puede crear de varias maneras y formatearse usando una variedad de opciones. Los interruptores de campo que pasa al método controlan la forma en que se crea y se muestra la tabla en su documento.

Los modificadores predeterminados que se utilizan en un `TOC` insertado en Microsoft Word son **"\o "1-3 \h \z \u"**. Las descripciones de estos conmutadores, así como una lista de conmutadores compatibles, se pueden encontrar más adelante en el artículo. Puede usar esa guía para obtener los interruptores correctos o, si ya tiene un documento que contiene el `TOC` similar que desea, puede mostrar los códigos de campo (*ALT+F9*) y copiar los interruptores directamente desde el campo.

El siguiente ejemplo de código muestra cómo insertar un campo de tabla de contenido en un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-InsertATableOfContentsField.java" >}}

El siguiente ejemplo de código demuestra cómo insertar una tabla de contenido (TOC) en un documento utilizando estilos de encabezado como entradas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsUsingHeadingStyles-InsertATableOfContentsUsingHeadingStyles.java" >}}

El código demuestra que la nueva tabla de contenido se inserta en un documento en blanco. La clase [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) se usa luego para insertar un formato de contenido de muestra con los estilos de encabezado apropiados que se usan para marcar el contenido que se incluirá en TOC. Las siguientes líneas luego completan `TOC` actualizando los campos y el diseño de página del documento.

![insert-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-1.png)

{{% alert color="primary" %}}

Sin los métodos utilizados en el ejemplo, cuando abra el documento de salida, encontrará el campo `TOC`, pero sin contenido visible. Esto se debe a que el campo `TOC` se insertó pero aún no se completa hasta que se actualice en el documento. Más información sobre esto se analiza en la siguiente sección.

{{% /alert %}}

## Actualizar Tabla de Contenido

Aspose.Words le permite actualizar completamente un `TOC` con solo unas pocas líneas de código. Esto se puede hacer para rellenar un `TOC` recién insertado o para actualizar un `TOC` existente después de que se hayan realizado cambios en el documento.

Se deben utilizar los dos métodos siguientes para actualizar los campos `TOC` en el documento:

1. [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/Document#updateFields())
1. [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/Document#updatePageLayout())

Tenga en cuenta que es necesario llamar a estos dos métodos de actualización en ese orden. Si se invierte, se completará la tabla de contenido, pero no se mostrarán los números de página. Se puede actualizar cualquier número de TOCs diferentes. Estos métodos actualizarán automáticamente todos los TOCs encontrados en el documento.

El siguiente ejemplo de código muestra cómo reconstruir completamente los campos `TOC` en el documento invocando actualizaciones de campo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-UpdateTableOfContents.java" >}}

La primera llamada a [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) generará `TOC`, se completarán todas las entradas de texto y `TOC` aparecerá casi completo. Lo único que falta son los números de página que por ahora se muestran con "?".

La segunda llamada a [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout) creará el diseño del documento en la memoria. Esto debe hacerse para recopilar los números de página de las entradas. Los números de página correctos calculados a partir de esta llamada se insertan luego en TOC.

## Utilice Interruptores para Controlar el Comportamiento de la Tabla de Contenido

Al igual que con cualquier otro campo, el campo `TOC` puede aceptar modificadores definidos dentro del código de campo que controla cómo se crea la tabla de contenido. Ciertos interruptores se usan para controlar qué entradas se incluyen y a qué nivel, mientras que otros se usan para controlar la apariencia del TOC. Los interruptores se pueden combinar entre sí para permitir que se produzca una tabla de contenido compleja.

![ccontrol-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-2.png)


De forma predeterminada, estos modificadores anteriores se incluyen al insertar un `TOC` predeterminado en el documento. Un `TOC` sin modificadores incluirá contenido de los estilos de encabezado incorporados (como si el modificador \O estuviera configurado).

Los modificadores `TOC` disponibles que son compatibles con Aspose.Words se enumeran a continuación y sus usos se describen en detalle. Se pueden dividir en secciones separadas según su tipo. Los interruptores de la primera sección definen qué contenido incluir en `TOC` y los interruptores de la segunda sección controlan la apariencia de TOC.

Si un conmutador no aparece en la lista aquí, entonces actualmente no es compatible. Todos los conmutadores serán compatibles en futuras versiones. Estamos agregando más soporte a cada lanzamiento.

### Interruptores de Marcado de Entrada

| Interruptor | Descripción |
| :- | :- |
| **Heading Styles** <br>* (\O Interruptor)* <br> | <p>Este modificador define que `TOC` debe construirse a partir de los estilos de encabezado incorporados. En Microsoft Word, estos se definen por Heading 1 – Heading 9. En Aspose.Words estos estilos están representados por la enumeración StyleIdentifier correspondiente. Esta enumeración representa un identificador independiente de la configuración regional de un estilo, por ejemplo, `StyleIdentifier.Heading1` representa el estilo Heading 1. Con esto, el formato y las propiedades del estilo se pueden recuperar de la colección de estilos del documento. La clase de estilo correspondiente se puede recuperar de la colección `Document.Styles` utilizando la propiedad indexada de tipo StyleIdentifier.</p><p>![style-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-3.png)</p><p><br><br>Cualquier contenido formateado con estos estilos se incluye en la tabla de contenido. El nivel del encabezado definirá el nivel jerárquico correspondiente de la entrada en el TOC. Por ejemplo, un párrafo con estilo Heading 1 se tratará como el primer nivel en el `TOC`, mientras que un párrafo con Heading 2 se tratará como el siguiente nivel en la jerarquía, y así sucesivamente.</p> |
| **Outline Levels** <br>* (Interruptor\U)* <br> | <p>Cada párrafo puede definir un nivel de esquema en Opciones de párrafo.</p><p>![modify-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-4.png)</p><p><br><br>Esta configuración determina qué nivel debe tratarse este párrafo en la jerarquía del documento. Esta es una práctica comúnmente utilizada para estructurar fácilmente el diseño de un documento. Esta jerarquía se puede ver cambiando a Vista de esquema en Microsoft Word. De manera similar a los estilos de encabezado, puede haber de 1 a 9 niveles de esquema además del nivel de "Texto del cuerpo". Los niveles de esquema 1 – 9 aparecerán en el `TOC` en el nivel correspondiente de la jerarquía <br>Cualquier contenido con un nivel de esquema establecido en el estilo de párrafo o directamente en el párrafo mismo se incluye en TOC. En Aspose.Words, el nivel de esquema está representado por la propiedad `ParagraphFormat.OutlineLevel` del nodo Párrafo. El nivel de contorno de un estilo de párrafo se representa de la misma manera mediante la propiedad `Style.ParagraphFormat`.</p><p>{{% alert color="primary" %}}</p><p>Tenga en cuenta que los estilos de encabezado integrados, como Heading 1, tienen un nivel de esquema obligatorio establecido en configuración de estilo.</p><p>{{% /alert %}}</p> |
| **Custom Styles** <br>* (\T interruptor)* <br> | <p>Este modificador permitirá utilizar estilos personalizados al recopilar entradas que se utilizarán en TOC. Esto se usa a menudo junto con el modificador \O para incluir estilos personalizados junto con estilos de encabezado integrados en TOC. <br>Los parámetros del interruptor deben incluirse dentro de las marcas de voz. Se pueden incluir muchos estilos personalizados, para cada estilo, se debe especificar el nombre seguido de una coma seguida del nivel en el que debe aparecer el estilo en `TOC`. Otros estilos también están separados por una coma. <br>Por ejemplo</p><p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p><p>usará contenido con estilo CustomHeading1 como contenido de nivel 1 en `TOC` y CustomHeading2 como nivel 2.</p> |
| Utilice TC Campos <br>* (Interruptores \F y \ L)* <br> | <p>En versiones anteriores de Microsoft Word, la única forma de crear un `TOC` era el uso de TC campos. Estos campos se insertan ocultos en el documento incluso cuando se muestran los códigos de campo. Incluyen el texto que debe mostrarse en la entrada y el `TOC` se construye a partir de ellos. Esta funcionalidad ahora no se usa con mucha frecuencia, pero aún puede ser útil en algunas ocasiones para incluir entradas en el `TOC` que no están sangradas para que sean visibles en el documento. <br>Cuando se insertan, estos campos aparecen ocultos incluso cuando se muestran los códigos de campo. No se pueden ver sin mostrar contenido oculto. Para ver estos campos Mostrar formato de párrafo debe estar seleccionado.</p><p>![setup-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-5.png)</p><p>Estos campos se pueden insertar en un documento en cualquier posición como cualquier otro campo y están representados por la enumeración `FieldType.FieldTOCEntry`.<br>El modificador \F en `TOC` se usa para especificar que los campos TC se deben usar como entradas. El interruptor por sí solo sin ningún identificador adicional significa que se incluirá cualquier campo TC en el documento. Cualquier parámetro adicional, a menudo una sola letra, designará que solo los TC campos que tengan un modificador \f coincidente se incluirán en el TOC. Por ejemplo *</p><p>{{< highlight csharp >}}
{ TOC \f t }{{< /highlight >}}</p><p>solo incluirá TC campos como</p><p>{{< highlight csharp >}}
{ TC \f t }{{< /highlight >}}</p><p>El campo `TOC` también tiene un modificador relacionado, el modificador" \L " especifica que solo se incluyen los campos TC con niveles dentro del rango especificado.</p><p>![table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-6.png)</p><p><br><br>Los `TC` campos en sí mismos también pueden tener `{several, multiple, a few, many, numerous}` conmutadores configurados. Estos son:</p><p>– \ F-Explicado anteriormente.*</p><p>– \ L-Define en qué nivel del `TOC` aparecerá este campo TC. Un `TOC` que use este mismo modificador solo incluirá este campo TC si está dentro del rango especificado.</p><p>- `_\N` - No se muestra la numeración de páginas de esta entrada `TOC`.En la siguiente sección se puede encontrar un código de muestra de cómo insertar los campos TC.</p> |

### Interruptores Relacionados con la Apariencia

| Interruptor | Descripción |
| :- | :- |
| **Omit Page Numbers** <br>* (\N Interruptor)* | <p>Este modificador se usa para ocultar los números de página de ciertos niveles de TOC. Por ejemplo, puede definir</p><p>{{< highlight csharp >}}
{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p><p>y los números de página en las entradas de los niveles 3 y cuatro estarán ocultos junto con los puntos de referencia (si los hay). Para especificar solo un nivel, aún se debe usar un rango, por ejemplo, "1-1" excluirá los números de página solo para el primer nivel. <br>Si no se proporciona ningún rango de nivel, se omitirán los números de página de todos los niveles en TOC. Es útil configurarlo al exportar un documento a HTML o un formato similar. Esto se debe a que los formatos basados en HTML no tienen ningún concepto de página y, por lo tanto, no necesitan numeración de páginas.</p><p>![table-of-contents-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-7.png)</p> |
| Insertar Como Hipervínculos <br>* (Interruptor\H)* | <p>Este modificador especifica que las entradas `TOC` se inserten como hipervínculos. Al ver un documento en Microsoft Word, estas entradas seguirán apareciendo como texto normal dentro de `TOC`, pero están hipervinculadas y, por lo tanto, se pueden usar para navegar a la posición de la entrada original en el documento usando *Ctrl + Left Click* en Microsoft Word. Cuando se incluye este interruptor, estos enlaces también se conservan en otros formatos. Por ejemplo, en formatos basados en HTML, incluidos EPUB y formatos renderizados como PDF y XPS, estos se exportarán como enlaces de trabajo. <br>Sin este modificador configurado, el `TOC` en todas estas salidas se exportará como texto sin formato y no demostrará este comportamiento. Si se abre un documento en MS Word, tampoco se podrá hacer clic en el texto de las entradas de esta manera, pero los números de página aún se pueden usar para navegar a la entrada original.</p><p>![tree-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-8.png)</p> |
| **Set Separator Character** <br>* (Interruptor \ P)* <br> | <p>Este modificador permite cambiar fácilmente el contenido que separa el título de la entrada y la numeración de las páginas en TOC. El separador a utilizar debe especificarse después de este interruptor y encerrarse en marcas de voz. <br>Al contrario de lo que está documentado en la documentación de Office, solo se puede usar un carácter en lugar de hasta cinco. Esto se aplica tanto a MS Word como a Aspose.Words. <br>No se recomienda usar este modificador, ya que no permite mucho control sobre lo que se usó para separar las entradas y los números de página en TOC. En su lugar, se recomienda editar el estilo `TOC` apropiado, como `StyleIdentifier.TOC1`, y desde allí editar el estilo principal con acceso a miembros de fuente específicos, etc. Más detalles sobre cómo hacer esto se pueden encontrar más adelante en el artículo.</p><p>![list-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-9.png)</p> |
| **Preserve Tab Entries** <br>* (Interruptor\W)* | <p>El uso de este modificador especificará que cualquier entrada que tenga un carácter de tabulación, por ejemplo, un encabezado que tenga una tabulación al final de la línea, se mantendrá como un carácter de tabulación adecuado al completar TOC. Esto significa que la función del carácter de tabulación estará presente en `TOC` y se puede usar para formatear la entrada. Por ejemplo, ciertas entradas pueden usar tabulaciones y caracteres de tabulación para espaciar uniformemente el texto. Siempre que el nivel `TOC` correspondiente defina las tabulaciones equivalentes, las entradas `TOC` generadas aparecerán con un espaciado similar. <br><br>En la misma situación, si este modificador no estuviera definido, los caracteres de tabulación se convertirían en espacios en blanco equivalentes a pestañas que no funcionan. Entonces, la salida no aparecería como se esperaba.</p><p>![tab-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-10.png)</p> |
| **Preserve New Line Entries** <br>* (\X Interruptor)* <br> | <p>De manera similar al modificador anterior, este modificador especifica que los encabezados que abarcan varias líneas (utilizando caracteres de nueva línea, no párrafos separados) se conservarán tal como están en el TOC generado. Por ejemplo, un encabezado que se distribuirá en varias líneas puede usar el carácter de nueva línea (Ctrl + Enter o `ControlChar.LineBreak`) para separar el contenido en diferentes líneas. Con este modificador especificado, la entrada en `TOC` conservará estos nuevos caracteres de línea como se muestra a continuación. <br><br>En esta situación, si el modificador no está definido, los nuevos caracteres de línea se convierten en un solo espacio en blanco.</p><p>![tab-space-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-11.png)</p> |

## Insertar TC campos

Puede insertar un nuevo campo TC en la posición actual del `DocumentBuilder` llamando al método `DocumentBuilder.InsertField` y especificando el nombre del campo como "TC " junto con los modificadores necesarios.

El siguiente ejemplo de código muestra cómo insertar un campo `TC` en el documento usando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertTCField-InsertTCField.java" >}}

A menudo, se designa una línea específica de texto para el `TOC` y se marca con un campo `TC`. La forma más sencilla de hacer esto en MS Word es resaltar el texto y presionar *ALT+SHIFT+O*. Esto crea automáticamente un campo `TC` con el texto seleccionado. La misma técnica se puede lograr a través del código. El siguiente código encontrará texto que coincida con la entrada e insertará un campo `TC` en la misma posición que el texto. El código se basa en la misma técnica utilizada en el artículo. El siguiente ejemplo de código muestra cómo buscar e insertar un campo `TC` en el texto de un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-FindAndInsertATCField-InsertTCFieldHandler.java" >}}

## Modificar una Tabla de Contenido

### Cambiar el Formato de los Estilos

El formato de las entradas en `TOC` no utiliza los estilos originales de las entradas marcadas, sino que cada nivel se formatea utilizando un estilo `TOC` equivalente. Por ejemplo, el primer nivel en `TOC` está formateado con el estilo **TOC1**, el segundo nivel formateado con el estilo **TOC2** y así sucesivamente. Esto significa que para cambiar el aspecto de los `TOC` estos estilos deben modificarse. En Aspose.Words, estos estilos están representados por `StyleIdentifier.TOC1` independiente de la configuración regional hasta `StyleIdentifier.TOC9` y se pueden recuperar de la colección `Document.Styles` utilizando estos identificadores.

Una vez que se haya recuperado el estilo apropiado del documento, se puede modificar el formato de este estilo. Cualquier cambio en estos estilos se reflejará automáticamente en el TOCs del documento.

El siguiente ejemplo de código cambia una propiedad de formato utilizada en el estilo `TOC` de primer nivel.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-changeAFormattingPropertyUsedInFirstLevelTOCStyle.java" >}}

También es útil tener en cuenta que cualquier formato directo de un párrafo (definido en el párrafo mismo y no en el estilo) marcado para incluirse en `TOC` se copiará en la entrada en TOC. Por ejemplo, si se usa el estilo Heading 1 para marcar el contenido del `TOC` y este estilo tiene formato en negrita, mientras que el párrafo también tiene formato en cursiva aplicado directamente. La entrada `TOC` resultante no estará en negrita, ya que es parte del formato de estilo, sin embargo, estará en cursiva, ya que está formateada directamente en el párrafo.

También puede controlar el formato de los separadores utilizados entre cada entrada y el número de página. De forma predeterminada, se trata de una línea de puntos que se extiende por la numeración de la página utilizando un carácter de tabulación y un tabulador derecho alineado cerca del margen derecho.

Usando la clase `Style` recuperada para el nivel `TOC` particular que desea modificar, también puede modificar cómo aparecen en el documento.

Para cambiar cómo aparece esto, primero se debe llamar a `Style.ParagraphFormat` para recuperar el formato de párrafo del estilo. Desde aquí, se pueden recuperar las tabulaciones llamando a `ParagraphFormat.TabStops` y modificando la tabulación correspondiente. Usando esta misma técnica, la pestaña en sí misma se puede mover o eliminar por completo.

El siguiente ejemplo de código muestra cómo modificar la posición del tabulador derecho en `TOC` párrafos relacionados.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-modifyPositionOfRightTabStopInTOC.java" >}}

## Eliminar una Tabla de contenido del documento

Se puede eliminar una tabla de contenido del documento eliminando todos los nodos que se encuentran entre los nodos `FieldStart` y FieldEnd del campo `TOC`.

El código a continuación demuestra esto. La eliminación del campo `TOC` es más simple que un campo normal, ya que no hacemos un seguimiento de los campos anidados. En su lugar, verificamos que el nodo `FieldEnd` sea de tipo `FieldType.FieldTOC`, lo que significa que hemos encontrado el final del TOC actual. Esta técnica se puede utilizar en este caso sin preocuparse por los campos anidados, ya que podemos suponer que cualquier documento formado correctamente no tendrá un campo `TOC` completamente anidado dentro de otro campo `TOC`.

En primer lugar, se recopilan y almacenan los `FieldStart` nodos de cada `TOC`. Luego se enumera el `TOC` especificado para que se visiten y almacenen todos los nodos dentro del campo. Luego, los nodos se eliminan del documento. El siguiente ejemplo de código muestra cómo eliminar un `TOC` especificado de un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-RemoveATableOfContents-RemoveATableOfContents.java" >}}

## Extraer Tabla de Contenido

Si desea extraer una tabla de contenido de cualquier documento de Word, se puede utilizar el siguiente ejemplo de código.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ExtractTableOfContents-ExtractTableOfContents.java" >}}
