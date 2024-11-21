---
title: Trabajo con Tabla de Contenidos en Java
second_title: Aspose.Words para Java
articleTitle: Trabajar con el Cuadro de Contenidos
linktitle: Trabajar con el Cuadro de Contenidos
description: "Tabla de contenidos en detalles. Cómo crear y modificar `TOC` campo utilizando Java."
type: docs
weight: 170
url: /es/java/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

A menudo trabajará con documentos que contienen una tabla de contenidos (TOC). Uso Aspose.Words puede insertar su propia tabla de contenidos o reconstruir completamente la tabla de contenidos existente en el documento utilizando sólo algunas líneas de código.

Este artículo describe cómo trabajar con la tabla de contenidos y demuestra:

- Cómo insertar un nuevo TOC.
- Actualizar los COT nuevos o existentes en el documento.
- Especifique los interruptores para controlar el formato y la estructura general del TOC.
- Cómo modificar los estilos y la apariencia de la tabla de contenidos.
- Cómo quitar un todo `TOC` campo junto con todas las entradas del documento.

## Insertar tabla de contenidos programáticamente

Puede insertar un `TOC` (tabla de contenidos) campo en el documento en la posición actual llamando al [InsertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) método.

Una tabla de contenidos en un documento de Word se puede construir de varias maneras y formatear utilizando una variedad de opciones. El campo cambia que pasa al método controla la forma en que se construye la tabla y se muestra en su documento.

Los interruptores predeterminados que se utilizan en un `TOC` insertado en Microsoft Word son **"\o "1-3 \h \z \u"**. Las descripciones de estos interruptores así como una lista de interruptores soportados se pueden encontrar más adelante en el artículo. Usted puede utilizar esa guía para obtener los interruptores correctos o si ya tiene un documento que contiene el similar `TOC` que usted desea puede mostrar códigos de campo (*ALT+F9*) y copiar los interruptores directamente desde el campo.

El siguiente ejemplo de código muestra cómo insertar un campo Tabla de contenidos en un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-InsertATableOfContentsField.java" >}}

El siguiente ejemplo de código muestra cómo insertar una tabla de contenidos (TOC) en un documento utilizando estilos de encabezado como entradas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsUsingHeadingStyles-InsertATableOfContentsUsingHeadingStyles.java" >}}

El código muestra que la nueva tabla de contenidos se inserta en un documento en blanco. El [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) clase se utiliza para insertar algunos formatos de contenido de muestra con los estilos de encabezado apropiados que se utilizan para marcar el contenido que se incluirá en el TOC. Las siguientes líneas luego poblan `TOC` actualizando los campos y el diseño de la página del documento.

![insert-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-1.png)

{{% alert color="primary" %}}

Sin los métodos utilizados en el ejemplo, cuando abra el documento de salida, encontrará el `TOC` campo, pero sin contenido visible. Esto es porque el `TOC` campo se ha insertado pero aún no está poblado hasta que se actualiza en el documento. Más información sobre esto se examina en la siguiente sección.

{{% /alert %}}

## Tabla actualizada de contenidos

Aspose.Words le permite actualizar completamente a `TOC` con sólo unas pocas líneas de código. Esto se puede hacer para poblar un recién insertado `TOC` o para actualizar una `TOC` después de que se hayan introducido cambios en el documento.

Los siguientes dos métodos deben utilizarse para actualizar los `TOC` en el documento:

1. [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/Document#updateFields())
1. [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/Document#updatePageLayout())

Tenga en cuenta que estos dos métodos de actualización deben ser llamados en ese orden. Si se revierte la tabla de contenidos se poblará pero no se mostrarán números de página. Cualquier número de COT diferentes puede ser actualizado. Estos métodos actualizarán automáticamente todos los TOC encontrados en el documento.

El siguiente ejemplo de código muestra cómo reconstruir completamente `TOC` campos en el documento invocando actualizaciones de campo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-UpdateTableOfContents.java" >}}

La primera llamada a [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) construirá el <span notrans="<span notrans=" `TOC`"=""></span>," todas las entradas de texto están pobladas y `TOC` parece casi completo. Lo único que falta es los números de página que por ahora se muestran con "?".

La segunda llamada a [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout) construirá el diseño del documento en memoria. Esto debe hacerse para reunir los números de página de las entradas. Los números de página correctos calculados a partir de esta llamada se insertan en el TOC.

## Use Switches para Controlar Tabla de Comportamiento de Contenido

Como con cualquier otro campo, el `TOC` campo puede aceptar interruptores definidos dentro del código de campo que controla cómo se construye la tabla de contenidos. Algunos interruptores se utilizan para controlar qué entradas están incluidas y a qué nivel, mientras que otros se utilizan para controlar la apariencia del TOC. Los interruptores pueden combinarse para permitir que se produzca una tabla compleja de contenidos.

![ccontrol-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-2.png)


Por defecto, estos interruptores arriba se incluyen al insertar un defecto `TOC` en el documento. A `TOC` sin interruptores incluirá contenido de los estilos de encabezado incorporados (como si se establece el interruptor \O).

Disponibilidad `TOC` interruptores compatibles con Aspose.Words se enumeran a continuación y sus usos se describen en detalle. Pueden dividirse en secciones separadas basadas en su tipo. Los interruptores en la primera sección definen qué contenido incluir en el `TOC` y los interruptores en la segunda sección controlan la apariencia del TOC.

Si un interruptor no está listado aquí, entonces actualmente no está soportado. Todos los conmutadores serán compatibles en versiones futuras. Estamos agregando más apoyo a cada lanzamiento.

### Interruptores de marcado de entrada

|  Cambio | Descripción |
|  :-  |  :-  |
| **Heading Styles** <br/> *(\O Switch)* <br/> | <p>Este interruptor define que `TOC` debe construirse fuera de los estilos de encabezado incorporados. In Microsoft Word, estos son definidos por Heading 1 – Heading 9. In Aspose.Words estos estilos están representados por la correspondiente enumeración de StyleIdentifier. Esta enumeración representa un identificador local-independiente de un estilo, por ejemplo, `StyleIdentifier.Heading1` representa el estilo Heading 1. Utilizando esto, el formato y las propiedades del estilo se pueden recuperar de la colección Estilo del documento. La clase correspondiente del estilo se puede recuperar de la `Document.Styles` colección utilizando la propiedad indexada del tipo StyleIdentifier.</p>

<p>![style-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-3.png)</p>

<p><br/><br/>Cualquier contenido formateado con estos estilos se incluye en la tabla de contenidos. El nivel de la partida definirá el nivel jerárquico correspondiente de la entrada en el TOC. Por ejemplo, un párrafo con el estilo Heading 1 será tratado como el primer nivel en el `TOC` mientras que un párrafo con el encabezado 2 será tratado como el siguiente nivel en la jerarquía y así sucesivamente.</p>
 |
| **Outline Levels** <br/> *(\U switch)* <br/> | <p>Cada párrafo puede definir un nivel de esbozo en las opciones del párrafo.</p>

<p>![modify-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-4.png)</p>

<p><br/><br/>Esta configuración dicta qué nivel debe tratar este párrafo en la jerarquía de documentos. Esta es una práctica común utilizada para estructurar fácilmente el diseño de un documento. Esta jerarquía se puede ver cambiando a la vista Esquemática en Microsoft Word. Similar a los estilos de encabezado, puede haber 1 – 9 niveles de contorno además del nivel de "Body Text". Niveles de esbozo 1 – 9 aparecerán en `TOC` en el nivel correspondiente de la jerarquía <br/>Todo contenido con un nivel de esbozo fijado en el estilo del párrafo o directamente en el propio párrafo se incluye en el TOC. In Aspose.Words el nivel del esbozo está representado por el `ParagraphFormat.OutlineLevel` propiedad del nodo del párrafo. El nivel de esbozo de un estilo de párrafo está representado de la misma manera por el `Style.ParagraphFormat` propiedad.</p>

<p>{{% alert color="primary" %}}</p>

<p>Tenga en cuenta que estilos de encabezado incorporados como Heading 1 tienen un nivel de contorno obligatorio establecido en ajustes de estilo.</p>

<p>{{% /alert %}}</p>
 |
| **Custom Styles** <br/> *(\T switch)* <br/> | <p>Este interruptor permitirá que los estilos personalizados se utilicen cuando se recogen entradas para ser utilizadas en el TOC. Esto se utiliza a menudo junto con el interruptor \O para incluir estilos personalizados junto con estilos de encabezado incorporados en el TOC. <br/>Los parámetros del interruptor deben estar encerrados dentro de las marcas del discurso. Muchos estilos personalizados se pueden incluir, para cada estilo, el nombre debe ser especificado seguido por una coma seguido por el nivel que el estilo debe aparecer en el `TOC` como. Otros estilos también están separados por un coma también. <br/>Por ejemplo</p>

<p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p>

<p>utilizará contenido estilo con CustomHeading1 como contenido de nivel 1 en el `TOC` y CustomHeading2 como nivel 2.</p>
 |
| Use TC Fields <br/> *(\F y \L Switches)* <br/> | <p>En versiones anteriores de Microsoft Word, la única manera de construir un `TOC` era el uso de campos TC. Estos campos se insertan escondidos en el documento incluso cuando se muestran los códigos de campo. Incluyen el texto que debe mostrarse en la entrada y en la `TOC` está construido de ellos. Esta funcionalidad no se utiliza ahora muy a menudo, pero puede ser útil en algunas ocasiones para incluir entradas en las `TOC` que no están identificados para ser visibles en el documento. <br/>Cuando se insertan estos campos aparecen ocultos incluso cuando se muestran los códigos de campo. No se pueden ver sin mostrar contenido oculto. Para ver estos campos Mostrar el formato del párrafo debe ser seleccionado.</p>

<p>![setup-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-5.png)</p>

<p>Estos campos se pueden insertar en un documento en cualquier posición como cualquier otro campo y están representados por el `FieldType.FieldTOCEntry` enumeración.<br/>El interruptor \F en un `TOC` se utiliza para especificar que los campos TC deben ser utilizados como entradas. El interruptor en su propio sin ningún identificador adicional significa que cualquier campo de TC en el documento será incluido. Cualquier parámetro adicional, a menudo una sola carta, designará que sólo los campos TC que tengan un interruptor \f coincidente serán incluidos en el TOC. Por ejemplo *</p>

<p>{{< highlight csharp >}}
{ TOC \f t }{{< /highlight >}}</p>

<p>sólo incluirá campos TC como</p>

<p>{{< highlight csharp >}}
{ TC \f t }{{< /highlight >}}</p>

<p>El `TOC` campo también tiene un interruptor relacionado, el interruptor "\L" especifica que sólo el campo TC con niveles dentro del rango especificado están incluidos.</p>

<p>![table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-6.png)</p>

<p><br/><br/>El `TC` campos ellos también pueden tener {several, `multiple`, a few, `many`, numerous} interruptores fijados. Estos son:</p>

<p>- Explicado arriba. *</p>

<p>- \L - Define qué nivel en el `TOC` este campo TC aparecerá en. A `TOC` que utiliza este mismo interruptor sólo incluirá este campo TC si está dentro del rango especificado.</p>

<p>- _\N – La pagina numeración para esto `TOC` no se muestra la entrada. Código de muestra de cómo insertar campos TC se puede encontrar en la siguiente sección.</p>
 |

### Apariencia Cambios relacionados

|  Cambio | Descripción |
|  :-  |  :-  |
| **Omit Page Numbers** <br/> *(\N Switch)* | <p>Este interruptor se utiliza para ocultar números de página para ciertos niveles del TOC. Por ejemplo, puede definir</p>

<p>{{< highlight csharp >}}
{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p>

<p>y los números de página en las entradas de los niveles 3 y cuatro serán ocultos junto con los puntos líderes (si hay alguno). Para especificar sólo un nivel se debe utilizar un rango, por ejemplo, "1-1" excluye los números de página sólo para el primer nivel. <br/>El suministro de ningún rango de nivel omitirá números de página para todos los niveles en el TOC. Esto es útil para establecer al exportar un documento a HTML o un formato similar. Esto se debe a que los formatos basados en HTML no tienen ningún concepto de página y por lo tanto no necesita ninguna numeración de página.</p>

<p>![table-of-contents-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-7.png)</p>
 |
| Insertar como hipervínculos <br/> *(\H Switch)* | <p>Este interruptor especifica que `TOC` las entradas se insertan como hipervínculos. Al ver un documento en Microsoft Word estas entradas todavía aparecerán como texto normal dentro del `TOC` pero están hiperenlazados y por lo tanto se puede utilizar para navegar a la posición de la entrada original en el documento utilizando *Ctrl + Left Click* in Microsoft Word. Cuando se incluye este interruptor, estos enlaces también se conservan en otros formatos. Por ejemplo, en formatos basados en HTML, incluyendo EPUB y formatos renderizados como PDF y XPS, estos serán exportados como enlaces de trabajo. <br/>Sin este interruptor, el `TOC` en todas estas salidas serán exportadas como texto simple y no demostrarán este comportamiento. Si un documento se abre en MS Word, el texto de las entradas tampoco será clicable de esta manera, pero los números de la página todavía se pueden utilizar para navegar a la entrada original.</p>

<p>![tree-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-8.png)</p>
 |
| **Set Separator Character** <br/> *(\P Switch)* <br/> | <p>Este interruptor permite que el contenido que separa el título de la entrada y numeración de página se cambie fácilmente en el TOC. El separador a utilizar debe ser especificado después de este interruptor y encerrado en las marcas del habla. <br/>Contrariamente a lo que se documenta en la documentación de Office, sólo se puede utilizar un personaje en lugar de hasta cinco. Esto se aplica tanto a MS Word como a Aspose.Words. <br/>Utilizar este interruptor no se recomienda ya que no permite mucho control sobre lo que utilizó para separar entradas y números de página en el TOC. En su lugar, se recomienda editar lo apropiado `TOC` estilo como `StyleIdentifier.TOC1` y desde allí editar el estilo líder con acceso a los miembros de fuentes específicos, etc. Más detalles de cómo hacer esto se pueden encontrar más adelante en el artículo.</p>

<p>![list-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-9.png)</p>
 |
| **Preserve Tab Entries** <br/> *(\W Switch)* | <p>Utilizando este interruptor se especificará que cualquier entrada que tenga un personaje de pestaña, por ejemplo, un título que tenga una pestaña al final de la línea, se mantendrá como un personaje de pestaña adecuado cuando popule el TOC. Esto significa que la función del personaje de la pestaña estará presente en el `TOC` y se puede utilizar para formatear la entrada. Por ejemplo, algunas entradas pueden usar paradas de pestañas y caracteres de pestañas para espacio uniformemente el texto. Mientras que el correspondiente `TOC` nivel define la pestaña equivalente para entonces el generado `TOC` entradas aparecerán con un espaciado similar. <br/><br/>En la misma situación si este interruptor no se definió entonces los caracteres de la pestaña se convertirían a espacio blanco equivalente como pestañas no funcionales. El producto no aparecería como se esperaba.</p>

<p>![tab-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-10.png)</p>
 |
| **Preserve New Line Entries** <br/> *(\X Switch)* <br/> | <p>Al igual que el interruptor anterior, este interruptor especifica que las partidas que abarcan varias líneas (utilizando caracteres de nueva línea, no párrafos separados) se conservarán como están en el TOC generado. Por ejemplo, un encabezamiento que se disemina a través de múltiples líneas puede utilizar el nuevo carácter de línea (Ctrl + Enter o `ControlChar.LineBreak`) para separar el contenido en diferentes líneas. Con este interruptor especificado, la entrada en el `TOC` preservará estos nuevos caracteres de línea como se muestra a continuación. <br/><br/>En esta situación, si el interruptor no se define entonces los nuevos caracteres de línea se convierten a un solo espacio blanco.</p>

<p>![tab-space-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-11.png)</p>
 |

## Insertar campos TC

Puede insertar un nuevo campo TC en la posición actual de la `DocumentBuilder` llamando al `DocumentBuilder.InsertField` método y especificando el nombre de campo como "TC" junto con cualquier interruptor que sea necesario.

El siguiente ejemplo de código muestra cómo insertar un `TC` en el documento utilizando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertTCField-InsertTCField.java" >}}

A menudo se designa una línea específica de texto para la `TOC` y está marcado con un `TC` campo. La manera fácil de hacer esto en MS Word es resaltar el texto y presionar *ALT+SHIFT+O*. Esto crea automáticamente un `TC` campo utilizando el texto seleccionado. La misma técnica se puede realizar a través del código. El siguiente código encontrará texto que coincida con la entrada e inserte un `TC` campo en la misma posición que el texto. El código se basa en la misma técnica utilizada en el artículo. El siguiente ejemplo de código muestra cómo encontrar e insertar un `TC` campo en el texto en un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-FindAndInsertATCField-InsertTCFieldHandler.java" >}}

## Modificar una tabla de contenidos

### Cambiar el formato de estilos

El formato de las entradas `TOC` no utiliza los estilos originales de las entradas marcadas, en cambio, cada nivel se formatea utilizando un equivalente `TOC` estilo. Por ejemplo, el primer nivel en el `TOC` se formatea con el **TOC1** estilo, el segundo nivel formateado con el **TOC2** estilo y así sucesivamente. Esto significa que cambiar el aspecto de la `TOC` estos estilos deben ser modificados. In Aspose.Words estos estilos son representados por el locale-independiente `StyleIdentifier.TOC1` a `StyleIdentifier.TOC9` y se puede recuperar de la `Document.Styles` colección usando estos identificadores.

Una vez que el estilo apropiado del documento ha sido recuperado el formato para este estilo puede ser modificado. Cualquier cambio en estos estilos se reflejará automáticamente en los TOC en el documento.

El siguiente ejemplo de código cambia una propiedad de formato utilizado en el primer nivel `TOC` estilo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-changeAFormattingPropertyUsedInFirstLevelTOCStyle.java" >}}

También es útil señalar que cualquier formato directo de un párrafo (definido en el propio párrafo y no en el estilo) marcado para ser incluido en el `TOC` será copiado en la entrada en el TOC. Por ejemplo, si el estilo Heading 1 se utiliza para marcar contenido para el `TOC` y este estilo tiene formato Bold mientras que el párrafo también tiene formato itálico aplicado directamente a él. El resultado `TOC` la entrada no será audaz ya que es parte del formato de estilo, sin embargo será itálica ya que esto se formatea directamente en el párrafo.

También puede controlar el formato de los separadores utilizados entre cada entrada y el número de página. Por defecto, esta es una línea punteada que se extiende a través de la numeración de la página usando un personaje de pestaña y una pestaña derecha parada alineada cerca del margen derecho.

Usando el `Style` clase recuperada para el `TOC` nivel que desea modificar, también puede modificar cómo aparecen estos en el documento.

Para cambiar cómo esto aparece primero `Style.ParagraphFormat` debe llamarse para recuperar el formato del párrafo para el estilo. De esto, las paradas de la pestaña se pueden recuperar llamando `ParagraphFormat.TabStops` y la pestaña apropiada deja de ser modificada. Usando esta misma técnica, la pestaña en sí puede ser movida o eliminada por completo.

El siguiente ejemplo de código muestra cómo modificar la posición de la pestaña derecha parar en `TOC` párrafos relacionados.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-modifyPositionOfRightTabStopInTOC.java" >}}

## Eliminar una tabla de contenidos del documento

Una tabla de contenidos se puede eliminar del documento eliminando todos los nodos encontrados entre el `FieldStart` y el nodo FieldEnd del `TOC` campo.

El código siguiente muestra esto. The removal of the `TOC` campo es más simple que un campo normal, ya que no tenemos seguimiento de campos anidados. En cambio, revisamos el `FieldEnd` nodo es de tipo `FieldType.FieldTOC` lo que significa que hemos encontrado el final del actual TOC. Esta técnica se puede utilizar en este caso sin preocuparse por ningún campo anidado ya que podemos asumir que cualquier documento formado correctamente no tendrá un nido completo `TOC` campo dentro de otro `TOC` campo.

Primero el `FieldStart` nodos de cada `TOC` son recogidos y almacenados. El especificado `TOC` entonces se enumeran para que todos los nodos dentro del campo sean visitados y almacenados. Los nodos se retiran del documento. El siguiente ejemplo de código muestra cómo eliminar un determinado `TOC` de un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-RemoveATableOfContents-RemoveATableOfContents.java" >}}

## Cuadro de contenidos

Si desea extraer una tabla de contenidos de cualquier documento de Word, se puede utilizar la siguiente muestra de código.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ExtractTableOfContents-ExtractTableOfContents.java" >}}
