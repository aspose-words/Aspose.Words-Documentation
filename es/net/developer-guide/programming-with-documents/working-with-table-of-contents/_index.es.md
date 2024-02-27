---
title: Trabajar con tabla de contenidos en C#
second_title: Aspose.Words para .NET
articleTitle: Trabajar con tabla de contenidos
linktitle: Trabajar con tabla de contenidos
description: "Campo de tabla de contenido en detalles. Cómo crear y modificar un campo `TOC` usando C#. Inserte `TOC` C#."
type: docs
weight: 170
url: /es/net/working-with-table-of-contents/
---

A menudo trabajará con documentos que contienen una tabla de contenido (TOC). Usando Aspose.Words puedes insertar tu propia tabla de contenido o reconstruir completamente la tabla de contenido existente en el documento usando solo unas pocas líneas de código. Este artículo describe cómo trabajar con el campo de tabla de contenido y demuestra:

- Cómo insertar un `TOC` nuevo
- Actualizar TOC nuevos o existentes en el documento.
- Especificar interruptores para controlar el formato y la estructura general del TOC.
- Cómo modificar los estilos y apariencia del índice.
- Cómo eliminar un campo `TOC` completo junto con todas las entradas del documento.

## Insertar tabla de contenidos mediante programación

Puede insertar un campo `TOC` (tabla de contenido) en el documento en la posición actual llamando al método [InsertTableOfContents](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttableofcontents/).

Una tabla de contenido en un documento de Word se puede crear de varias maneras y formatear usando una variedad de opciones. Los cambios de campo que pasa al método controlan la forma en que se construye y muestra la tabla en su documento.

Los modificadores predeterminados que se utilizan en un `TOC` insertado en Microsoft Word son **"\o "1-3 \h \z \u"**. Las descripciones de estos conmutadores, así como una lista de conmutadores compatibles, se pueden encontrar más adelante en el artículo. Puede usar esa guía para obtener los interruptores correctos o, si ya tiene un documento que contiene el `TOC` similar que desea, puede mostrar los códigos de campo (*ALT+F9*) y copiar los interruptores directamente desde el campo.

El siguiente ejemplo de código muestra cómo insertar un campo de tabla de contenido en un documento:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-DocumentBuilderInsertTOC.cs" >}}

El siguiente ejemplo de código muestra cómo insertar una tabla de contenido (TOC) en un documento utilizando estilos de encabezado como entradas.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTableOfContents.cs" >}}

{{% alert color="primary" %}}

Sin los métodos utilizados en el ejemplo, al abrir el documento de salida, encontraría el campo `TOC`, pero sin contenido visible. Esto se debe a que el campo `TOC` se insertó pero aún no se completa hasta que se actualice en el documento. Más información sobre esto se analiza en la siguiente sección.

{{% /alert %}}

## Actualizar tabla de contenidos

Aspose.Words le permite actualizar completamente un `TOC` con sólo unas pocas líneas de código. Esto se puede hacer para completar un `TOC` recién insertado o para actualizar un `TOC` existente después de que se hayan realizado cambios en el documento. Se deben utilizar los dos métodos siguientes para actualizar los campos `TOC` en el documento:

1. [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/)
1. [UpdatePageLayout](https://reference.aspose.com/words/net/aspose.words/document/updatepagelayout/)

Tenga en cuenta que es necesario llamar a estos dos métodos de actualización en ese orden. Si se invierte, se completará la tabla de contenidos pero no se mostrarán los números de página. Se puede actualizar cualquier cantidad de TOC diferentes. Estos métodos actualizarán automáticamente todos los TOC que se encuentran en el documento.

El siguiente ejemplo de código muestra cómo reconstruir completamente los campos `TOC` en el documento invocando la actualización de campos:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-UpdateFields.cs" >}}

La primera llamada a **UpdateFields** creará el `TOC`, se completarán todas las entradas de texto y el `TOC` aparecerá casi completo. Lo único que falta son los números de página que por ahora se muestran con "?". La segunda llamada a **UpdatePageLayout** creará el diseño del documento en la memoria. Esto debe hacerse para recopilar los números de página de las entradas. Los números de página correctos calculados a partir de esta llamada luego se insertan en el TOC.

## Utilice interruptores para controlar el comportamiento de la tabla de contenidos

Al igual que con cualquier otro campo, el campo `TOC` puede aceptar modificadores definidos dentro del código de campo que controlan cómo se construye la tabla de contenido. Ciertos interruptores se utilizan para controlar qué entradas se incluyen y en qué nivel, mientras que otros se utilizan para controlar la apariencia del TOC. Los interruptores se pueden combinar entre sí para permitir la producción de índices complejos.

![working-with-table-of-contents-aspose-words-net](/words/net/working-with-table-of-contents/working-with-table-of-contents-1.png)


De forma predeterminada, estos modificadores anteriores se incluyen al insertar un `TOC` predeterminado en el documento. Un `TOC` sin modificadores incluirá contenido de los estilos de encabezado integrados (como si el modificador \O estuviera configurado). Los conmutadores `TOC` disponibles que son compatibles con Aspose.Words se enumeran a continuación y sus usos se describen en detalle. Se pueden dividir en secciones separadas según su tipo. Los interruptores de la primera sección definen qué contenido incluir en el `TOC` y los interruptores de la segunda sección controlan la apariencia del TOC. Si un interruptor no aparece aquí, entonces no es compatible actualmente. Todos los conmutadores serán compatibles en versiones futuras. Estamos agregando más soporte con cada lanzamiento.

### Interruptores de marcado de entrada

|  Cambiar | Descripción |
|  :-  |  :-  |
| **Heading Styles**<br>*(\O Cambiar)* | <p>Este modificador define que el `TOC` debe construirse a partir de los estilos de título integrados. En Microsoft Word, estos estilos se definen mediante el Título 1 – Título 9. En Aspose.Words, estos estilos se representan mediante la enumeración StyleIdentifier correspondiente. Esta enumeración representa un identificador independiente de la configuración regional de un estilo; por ejemplo, `StyleIdentifier.Heading1` representa el estilo Título 1. Con esto, el formato y las propiedades del estilo se pueden recuperar de la colección Estilo del documento. La clase Style correspondiente se puede recuperar de la colección `Document.Styles` utilizando la propiedad indexada de tipo StyleIdentifier.</p>

<p>![working-with-table-of-contents-styles](/words/net/working-with-table-of-contents/working-with-table-of-contents-2.png)</p>

<p>Cualquier contenido formateado con estos estilos se incluye en la tabla de contenido. El nivel del encabezado definirá el nivel jerárquico correspondiente de la entrada en el TOC. Por ejemplo, un párrafo con el estilo Título 1 se tratará como el primer nivel en el `TOC`, mientras que un párrafo con el estilo Título 2 se tratará como el siguiente nivel en la jerarquía y así sucesivamente.</p> |
| **Outline Levels**<br>*(\U interruptor)* | <p>Cada párrafo puede definir un nivel de esquema en Opciones de párrafo.</p>

<p>![working-with-table-of-contents-paragraph](/words/net/working-with-table-of-contents/working-with-table-of-contents-3.png)</p>

<p>Esta configuración dicta en qué nivel se debe tratar este párrafo en la jerarquía del documento. Esta es una práctica comúnmente utilizada para estructurar fácilmente el diseño de un documento. Esta jerarquía se puede ver cambiando a Vista de esquema en Microsoft Word. De manera similar a los estilos de título, puede haber de 1 a 9 niveles de esquema además del nivel "Cuerpo del texto". Los niveles de esquema 1 a 9 aparecerán en el `TOC` en el nivel correspondiente de la jerarquía.<br>Cualquier contenido con un nivel de esquema establecido en el estilo de párrafo o directamente en el párrafo mismo se incluye en el TOC. En Aspose.Words, el nivel de esquema está representado por la propiedad `ParagraphFormat.OutlineLevel` del nodo Párrafo. El nivel de esquema de un estilo de párrafo se representa de la misma manera mediante la propiedad `Style.ParagraphFormat`.</p>

<p>{{% alert color="primary" %}}</p>

<p>Tenga en cuenta que los estilos de título integrados, como el Título 1, tienen un nivel de esquema establecido obligatoriamente en la configuración de estilo.</p>

<p>{{% /alert %}}</p> |
| **Custom Styles**<br>*(\T cambiar)* | <p>Este cambio permitirá que se utilicen estilos personalizados al recopilar entradas que se utilizarán en el TOC. Esto se usa a menudo junto con el interruptor \O para incluir estilos personalizados junto con estilos de encabezado integrados en el TOC.<br>Los parámetros del interruptor deben estar encerrados entre marcas de voz. Se pueden incluir muchos estilos personalizados; para cada estilo se debe especificar el nombre seguido de una coma seguida del nivel en el que debe aparecer el estilo en el `TOC`. Otros estilos también están separados por comas.<br>Por ejemplo</p>

<p>{{< highlight csharp >}}

<p>  { TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"} </p><p>{{< /highlight >}}</p>

<p>utilizará contenido diseñado con CustomHeading1 como contenido de nivel 1 en `TOC` y CustomHeading2 como nivel 2.</p> |
| **Use TC Fields**<br>*(Conmutadores \F y \L)* | <p>En versiones anteriores de Microsoft Word, la única forma de crear un `TOC` era mediante el uso de campos TC. Estos campos se insertan ocultos en el documento incluso cuando se muestran los códigos de campo. Incluyen el texto que debe mostrarse en la entrada y el `TOC` se construye a partir de ellos. Esta funcionalidad ahora no se usa con mucha frecuencia, pero aún puede ser útil en algunas ocasiones para incluir entradas en el `TOC` que no tienen sangría para ser visibles en el documento.<br>Cuando se insertan, estos campos aparecen ocultos incluso cuando se muestran los códigos de campo. No se pueden ver sin mostrar contenido oculto. Para ver estos campos se debe seleccionar Mostrar formato de párrafo.</p>

<p>![working-with-table-of-contents-paragraph-settings](/words/net/working-with-table-of-contents/working-with-table-of-contents-4.png)</p> Estos campos se pueden insertar en un documento en cualquier posición como cualquier otro campo y están representados por la enumeración `FieldType.FieldTOCEntry`.<br>El modificador \F en un `TOC` se usa para especificar que los campos TC deben usarse como entradas. El cambio por sí solo sin ningún identificador adicional significa que se incluirá cualquier campo TC en el documento. Cualquier parámetro adicional, a menudo una sola letra, indicará que solo los campos TC que tengan un modificador \f coincidente se incluirán en el TOC. Por ejemplo *</p>

<p>{{< highlight csharp >}}

<p>  { TOC \f t } </p><p>{{< /highlight >}}</p>

<p>sólo incluirá campos TC como</p>

<p>{{< highlight csharp >}}
p> {   TC \f t }</p><p>{{< /highlight >}}</p>

<p>El campo `TOC` también tiene un interruptor relacionado, el interruptor "\L" especifica que solo se incluye el campo TC con niveles dentro del rango especificado.</p>

<p>![todo:image_alt_text](/words/net/working-with-table-of-contents/working-with-table-of-contents-5.png)</p>

<p>Los propios campos `TC` también pueden tener configurados conmutadores {several, `multiple`, a few, `many`, numerous}. Estos son:</p>

<p>- *\F – Explicado arriba.*</p>

<p>- *\L: define en qué nivel del `TOC` aparecerá este campo TC. Un `TOC` que utilice este mismo interruptor solo incluirá este campo TC si está dentro del rango especificado.*</p>

<p>- _\N: la numeración de página para esta entrada `TOC` no se muestra. En la siguiente sección se puede encontrar un código de muestra sobre cómo insertar campos TC.</p> |

### Interruptores relacionados con la apariencia

|  Cambiar | Descripción |
|  :-  |  :-  |
| **Omit Page Numbers**<br>*(\N Cambiar)* | <p>Este interruptor se utiliza para ocultar números de página para ciertos niveles del TOC. Por ejemplo puedes definir</p>

<p>{{< highlight csharp >}}
<p>  {TOC \o "1-4" \n "3-4" } </p><p>{{< /highlight >}}</p>

<p>y los números de página de las entradas de los niveles 3 y cuatro se ocultarán junto con los puntos guía (si los hay). Para especificar solo un nivel, aún se debe usar un rango; por ejemplo, "1-1" excluirá los números de página solo para el primer nivel.<br>Si no proporciona ningún rango de niveles, se omitirán los números de página de todos los niveles del TOC. Es útil configurar esto al exportar un documento a HTML o formato similar. Esto se debe a que los formatos basados en HTML no tienen ningún concepto de página y, por lo tanto, no necesitan ninguna numeración de páginas.</p>

<p>![todo:image_alt_text](/words/net/working-with-table-of-contents/working-with-table-of-contents-6.png)</p> |
| **Insert As Hyperlinks**<br>*(\H Cambiar)* | <p>Este modificador especifica que las entradas `TOC` se insertan como hipervínculos. Al ver un documento en Microsoft Word, estas entradas seguirán apareciendo como texto normal dentro del `TOC`, pero tienen hipervínculos y, por lo tanto, se pueden usar para navegar a la posición de la entrada original en el documento usando *Ctrl + clic izquierdo* en Microsoft Word. Cuando se incluye este modificador, estos enlaces también se conservan en otros formatos. Por ejemplo, en formatos basados en HTML, incluidos EPUB y formatos renderizados como PDF y XPS, estos se exportarán como enlaces de trabajo.<br>Sin este interruptor configurado, el `TOC` en todas estas salidas se exportará como texto sin formato y no demostrará este comportamiento. Si se abre un documento en MS Word, tampoco se podrá hacer clic en el texto de las entradas de esta manera, pero aún se podrán usar los números de página para navegar a la entrada original.</p>

<p>PELEA</p> |
| **Set Separator Character**<br>*(\P Cambiar)* | <p>Este interruptor permite cambiar fácilmente el contenido que separa el título de la entrada y la numeración de página en el TOC. El separador a utilizar debe especificarse después de este cambio y encerrarse entre marcas de voz.<br>Al contrario de lo documentado en la documentación de Office, sólo se puede utilizar un carácter en lugar de hasta cinco. Esto se aplica tanto a MS Word como a Aspose.Words.<br>No se recomienda el uso de este interruptor ya que no permite mucho control sobre lo que se usa para separar entradas y números de página en el TOC. En su lugar, se recomienda editar el estilo `TOC` apropiado, como `StyleIdentifier.TOC1`, y desde allí editar el estilo líder con acceso a miembros de fuente específicos, etc. Se pueden encontrar más detalles sobre cómo hacer esto más adelante en el artículo.</p>

<p>PELEA</p> |
| **Preserve Tab Entries**<br>*(\W Cambiar)* | <p>El uso de este modificador especificará que cualquier entrada que tenga un carácter de tabulación, por ejemplo un encabezado que tenga una tabulación al final de la línea, se conservará como un carácter de tabulación adecuado al completar el TOC. Esto significa que la función del carácter de tabulación estará presente en el `TOC` y se puede utilizar para formatear la entrada. Por ejemplo, ciertas entradas pueden usar tabulaciones y caracteres de tabulación para espaciar uniformemente el texto. Siempre que el nivel `TOC` correspondiente defina las tabulaciones equivalentes, las entradas `TOC` generadas aparecerán con espacios similares.<br><br>En la misma situación, si este interruptor no estuviera definido, los caracteres de tabulación se convertirían en espacios en blanco equivalentes a pestañas que no funcionan. Entonces el resultado no aparecería como se esperaba.</p>

<p>![working-with-table-of-contents-aspose](/words/net/working-with-table-of-contents/working-with-table-of-contents-9.png)</p> |
| **Preserve New Line Entries**<br>*(\X Cambiar)* | <p>De manera similar al cambio anterior, este cambio especifica que los títulos que abarcan varias líneas (usando caracteres de nueva línea, no párrafos separados) se conservarán tal como están en el TOC generado. Por ejemplo, un encabezado que debe abarcar varias líneas puede utilizar el carácter de nueva línea (Ctrl + Enter o `ControlChar.LineBreak`) para separar el contenido en diferentes líneas. Con este modificador especificado, la entrada en el `TOC` conservará estos caracteres de nueva línea como se muestra a continuación.<br><br>En esta situación, si el interruptor no está definido, los caracteres de nueva línea se convierten en un único espacio en blanco.</p>

<p>![working-with-table-of-contents-aspose-words](/words/net/working-with-table-of-contents/working-with-table-of-contents-10.png)</p> |

## Insertar campos de CT

Puede insertar un nuevo campo TC en la posición actual del [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) llamando al método [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) y especificando el nombre del campo como "TC" junto con los modificadores que sean necesarios.

El siguiente ejemplo de código muestra cómo insertar un campo `TC` en el documento usando **DocumentBuilder**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCField-DocumentBuilderInsertTCField.cs" >}}

A menudo se designa una línea de texto específica para `TOC` y se marca con un campo `TC`. La forma más sencilla de hacer esto en Microsoft Word es resaltar el texto y presionar *ALT+SHIFT+O*. Esto crea automáticamente un campo `TC` usando el texto seleccionado. La misma técnica se puede lograr mediante código. El siguiente código encontrará texto que coincida con la entrada e insertará un campo `TC` en la misma posición que el texto. El código se basa en la misma técnica utilizada en el artículo.

El siguiente ejemplo de código muestra cómo buscar e insertar un campo `TC` en el texto de un documento:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cs" >}}

## Modificar tabla de contenidos

El formato de las entradas en `TOC` no utiliza los estilos originales de las entradas marcadas, sino que cada nivel se formatea utilizando un estilo `TOC` equivalente. Por ejemplo, el primer nivel del `TOC` está formateado con el estilo **TOC1**, el segundo nivel con el estilo **TOC2**, etc. Esto significa que para cambiar el aspecto del `TOC` se deben modificar estos estilos. En Aspose.Words, estos estilos están representados desde `StyleIdentifier.TOC1` independiente de la configuración regional hasta `StyleIdentifier.TOC9` y se pueden recuperar de la colección [Styles](https://reference.aspose.com/words/net/aspose.words/documentbase/styles/) utilizando estos identificadores.

Una vez que se ha recuperado el estilo apropiado del documento, se puede modificar el formato de este estilo. Cualquier cambio en estos estilos se reflejará automáticamente en los TOC del documento.

El siguiente ejemplo de código cambia una propiedad de formato utilizada en el estilo `TOC` de primer nivel:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cs" >}}

También es útil tener en cuenta que cualquier formato directo de un párrafo (definido en el párrafo mismo y no en el estilo) marcado para incluirse en `TOC` se copiará en la entrada del TOC. Por ejemplo, si el estilo Título 1 se usa para marcar contenido para `TOC` y este estilo tiene formato de negrita mientras que el párrafo también tiene formato de cursiva aplicado directamente. La entrada `TOC` resultante no estará en negrita ya que es parte del formato de estilo, sin embargo estará en cursiva ya que está formateada directamente en el párrafo.

También puede controlar el formato de los separadores utilizados entre cada entrada y número de página. De forma predeterminada, se trata de una línea de puntos que se extiende a lo largo de la numeración de páginas mediante un carácter de tabulación y una tabulación derecha alineada cerca del margen derecho.

Usando la clase [Style](https://reference.aspose.com/words/net/aspose.words/style/) recuperada para el nivel `TOC` particular que desea modificar, también puede modificar cómo aparecen en el documento. Para cambiar cómo aparece esto, primero se debe llamar a [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/style/paragraphformat/) para recuperar el formato de párrafo para el estilo. A partir de aquí, las tabulaciones se pueden recuperar llamando a [TabStops](https://reference.aspose.com/words/net/aspose.words/paragraphformat/tabstops/) y modificando la tabulación adecuada. Usando esta misma técnica, la pestaña se puede mover o quitar por completo.

El siguiente ejemplo de código muestra cómo modificar la posición de la tabulación derecha en párrafos relacionados con `TOC`:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cs" >}}

## Eliminar tabla de contenido del documento

Se puede eliminar una tabla de contenido del documento eliminando todos los nodos que se encuentran entre el nodo `FieldStart` y FieldEnd del campo `TOC`. El siguiente código demuestra esto. La eliminación del campo `TOC` es más sencilla que un campo normal ya que no realizamos un seguimiento de los campos anidados. En lugar de eso, verificamos que el nodo [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) sea de tipo [FieldType.FieldTOC](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/), lo que significa que hemos encontrado el final del TOC actual. Esta técnica se puede utilizar en este caso sin preocuparse por los campos anidados, ya que podemos asumir que cualquier documento formado correctamente no tendrá ningún campo `TOC` completamente anidado dentro de otro campo `TOC`.

En primer lugar se recopilan y almacenan los nodos [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) de cada `TOC`. Luego, el `TOC` especificado se enumera para que todos los nodos dentro del campo sean visitados y almacenados. Luego, los nodos se eliminan del documento.

El siguiente ejemplo de código muestra cómo eliminar un `TOC` específico de un documento:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cs" >}}

## Extraer tabla de contenidos

Si desea extraer una tabla de contenido de cualquier documento de Word, puede utilizar el siguiente código de ejemplo:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ExtractTableOfContents-ExtractTableOfContents.cs" >}}
