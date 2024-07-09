---
title: Formato de tabla en Java
second_title: Aspose.Words para Java
articleTitle: Formato de tabla
linktitle: Formato de tabla
description: "Tabla formateo en detalles. Uso Java para formatear cada parte de la tabla."
type: docs
weight: 70
url: /es/java/applying-formatting/
---

Cada elemento de una tabla se puede aplicar con formato diferente. Por ejemplo, el formato de tabla se aplicará a toda la tabla, el formato de filas sólo a filas particulares, el formato celular a sólo ciertas células.

Aspose.Words proporciona un rico API para recuperar y aplicar formato a una tabla. Puedes usar el [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), y [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) nodos para configurar el formato.

En este artículo hablaremos sobre cómo aplicar formato a diferentes nodos de mesa y qué configuración de formato de tabla Aspose.Words soportes.

## Aplicar Formato a Diferentes Nodos

En esta sección, vamos a ver la aplicación de formato a varios nodos de mesa.

### Formato de nivel de tabla

Para aplicar formato a una tabla puede utilizar las propiedades disponibles en el correspondiente **Table** nodo usando el [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/), y [TableCollection](https://reference.aspose.com/words/java/com.aspose.words/tablecollection/) clases.

{{% alert color="primary" %}}

Tenga en cuenta que la tabla debe tener al menos una fila antes de que las propiedades de la tabla se puedan aplicar. Esto significa que al construir una mesa con la [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), este formato debe hacerse después de la primera llamada [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell()), o después de la primera fila se añade a la tabla, o cuando los nodos se insertan directamente en la DOM.

{{% /alert %}}

Las imágenes de abajo muestran una representación de la **Table** características de formato en Microsoft Word y sus propiedades correspondientes en Aspose.Words.

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-1.png)

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-2.png)

El siguiente ejemplo de código muestra cómo aplicar una frontera de esbozo a una tabla:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-outline-border.java" >}}

El siguiente ejemplo de código muestra cómo construir una tabla con todas las fronteras habilitadas (grid):

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "build-table-with-borders.java" >}}

### Formato de nivel de fila

El formato Row-level** se puede controlar utilizando el [Row](https://reference.aspose.com/words/java/com.aspose.words/row/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), y [RowCollection](https://reference.aspose.com/words/java/com.aspose.words/rowcollection/) clases.

{{% alert color="primary" %}}

Note que a **Row** sólo puede ser un niño nodo de un **Table**. Al mismo tiempo, debe haber al menos uno **Cell** en el **Row** para que el formato se pueda aplicar a él.

{{% /alert %}}

Las imágenes de abajo muestran una representación de la **Row** características de formato en Microsoft Word y sus propiedades correspondientes en Aspose.Words.

![apply-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-3.png)

El siguiente ejemplo de código muestra cómo modificar el formato de la fila de tabla:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-row-formatting.java" >}}

### Formato de nivel celular

El formato de nivel celular está controlado por el [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/), [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/), y [CellCollection](https://reference.aspose.com/words/java/com.aspose.words/cellcollection/) clases.

{{% alert color="primary" %}}

Note que a **Cell** sólo puede ser un niño nodo de un **Row**. Al mismo tiempo, debe haber al menos uno [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) en el **Cell** para que el formato se pueda aplicar a él.

Además de la **Paragraph**, también puede insertar un **Table** en una **Cell**.

{{% /alert %}}

Las imágenes de abajo muestran una representación de la **Cell** características de formato en Microsoft Word y sus propiedades correspondientes en Aspose.Words.

![apply-formatting-to-cell-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-4.png)

![apply-auto-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-5.png)

El siguiente ejemplo de código muestra cómo modificar el formato de una celda de tabla:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-cell-formatting.java" >}}

El siguiente ejemplo de código muestra cómo establecer la cantidad de espacio (en puntos) para añadir a la izquierda/top/right/bottom del contenido de la célula:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "cell-padding.java" >}}

## Especificación de Row Heights

La forma más simple de establecer la altura de la fila es utilizar la **DocumentBuilder**. Utilizando el apropiado **RowFormat** propiedades, puede establecer el ajuste de altura predeterminado o aplicar una altura diferente para cada fila en la tabla.

In Aspose.Words, altura de la fila de la mesa es controlada por:

- la propiedad de altura de la fila - [Height](https://reference.aspose.com/words/java/com.aspose.words/row/format#Height)
- la propiedad de regla de altura para la fila dada - [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/row/format#HeightRule)

Al mismo tiempo, se puede fijar una altura diferente para cada fila – esto le permite controlar ampliamente la configuración de la tabla.

{{% alert color="primary" %}}

Opciones de reglas para especificar la altura de un objeto se puede configurar utilizando el [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/heightrule/) campos.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo crear una tabla que contenga una sola célula y aplicar formato de fila:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-row-formatting.java" >}}

## Especifique la tabla y las anchuras celulares

Una mesa en una Microsoft Word El documento proporciona varias maneras diferentes de redimensionar la tabla y las células individuales. Estas propiedades permiten un control considerable sobre la apariencia y el comportamiento de la mesa, de modo que Aspose.Words apoya el comportamiento de las tablas, como en Microsoft Word.

Es importante saber que los elementos de mesa presentan varias propiedades diferentes que pueden afectar cómo se calculan los anchos de la tabla general, así como las células individuales:

- Ancho preferido en la mesa
- Ancho preferido en las celdas individuales
- Permitir el autofit en la mesa

Este artículo detalla cómo funcionan las diversas propiedades de cálculo de la anchura de la tabla y cómo obtener el control completo sobre el cálculo de la anchura de la tabla. Esto es
especialmente útil para saber en casos en que el diseño de la tabla no parece como esperado.

{{% alert color="primary" %}}

En la mayoría de los casos, se recomienda la célula preferida que la anchura de la mesa. El ancho de celda preferido está más en línea con la especificación del formato DOCX, así como con la Aspose.Words modelo.

El ancho celular es en realidad un valor calculado para el formato DOCX. El ancho celular real puede depender de muchas cosas. Por ejemplo, cambiar los márgenes de página o el ancho de tabla preferido puede afectar el ancho de celda real.

El ancho celular preferido es una propiedad celular que se almacena en el documento. No depende de nada y no cambia cuando cambia la tabla u otras propiedades de la célula.

{{% /alert %}}

{{% alert color="primary" %}}

Todas las propiedades y métodos descritos en este artículo están relacionados con cómo funcionan las tablas Microsoft Word. Así que en la mayoría de los casos, si usted está construyendo su tabla programáticamente pero está encontrando difícil de crear la tabla deseada, en cambio puede intentar crear visualmente en Microsoft Word primero y luego simplemente copiar los valores de formato en su aplicación.

{{% /alert %}}

### Cómo utilizar la anchura preferida

El ancho deseado de una tabla o celdas individuales se define a través de la propiedad de ancho preferida, que es el tamaño que un elemento se esfuerza por encajar. Es decir, el ancho preferido se puede especificar para toda la tabla o para las células individuales. En algunas situaciones puede que no sea posible ajustar este ancho exactamente, pero el ancho real estará cerca de este valor en la mayoría de los casos.

El tipo de ancho y el valor preferido adecuado se establecen utilizando los métodos [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/) clase:

- el [Auto](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#AUTO) campo para especificar auto o "no el ancho preferido"
- el [FromPercent](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPercent-double) método para especificar un ancho porcentual
- el [FromPoints](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPoints-double) método para especificar el ancho en puntos

Las imágenes de abajo muestran una representación de las características de ajuste de ancho * preferido* en Microsoft Word y sus propiedades correspondientes en Aspose.Words.

![formatting-table-properties-aspose-words-java](/words/java/applying-formatting/applying-formatting-8.png)

Un ejemplo de cómo estas opciones se aplican a una tabla real en un documento se puede ver en la imagen siguiente.

![table-applied-options-java](/words/java/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

Antes de que pueda utilizar el ancho preferido en una tabla, debe asegurarse de que la tabla contiene al menos una fila. Esto se debe a que este formato de tabla en un Microsoft Word o en un documento creado Aspose.Words se almacena en las filas de la mesa.

{{% /alert %}}

#### Especifique la Tabla Preferente o Ancho Celular

In Aspose.Words, los anchos de mesa y celda se establecen utilizando el [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) propiedad y el [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) propiedad, con opciones disponibles en [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) enumeración:

- **Auto**, que es equivalente a un conjunto de ancho preferido
- **Percent**, que se ajusta al elemento relativo al espacio disponible en la ventana o tamaño del contenedor, y recalcula el valor cuando el ancho disponible cambia
- **Points**, que corresponde a un elemento del ancho especificado en puntos

{{% alert color="primary" %}}

Por defecto, se puede describir una tabla que se instala al 100% del espacio disponible en la página. En este caso, esto significa que la tabla tratará de ocupar el espacio entre los márgenes de página izquierda y derecha.

{{% /alert %}}

Usando el [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) propiedad ajustará su anchura preferida en relación con su contenedor: página, columna de texto, o celda de mesa externa si es una tabla anida.

El siguiente ejemplo de código muestra cómo configurar la tabla para auto-ajustar al 50% del ancho de la página:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-page-width.java" >}}

Usando el [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) propiedad en una celda determinada ajustará su ancho preferido.

El siguiente ejemplo de código muestra cómo establecer los diferentes ajustes de ancho preferidos:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "preferred-width-settings.java" >}}

#### Tipo de ancho preferido y valor

Puedes usar el [Type](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getType) y [Value](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getValue) propiedades para encontrar los detalles de ancho preferidos de la tabla o la célula deseada.

El siguiente ejemplo de código muestra cómo recuperar el tipo de ancho preferido de una celda de mesa:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "retrieve-preferred-width-type.java" >}}

### Cómo establecer Autofit

El [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) propiedad permite que las células en una tabla crezcan y se encojan según un criterio seleccionado. Por ejemplo, puede utilizar el **AutoFit to Window** opción para ajustar la tabla a la anchura de la página, y **AutoFit to Content** opción para permitir que cada célula crezca o se encoge según su contenido.

{{% alert color="primary" %}}

Además, el **AllowAutoFit** propiedad se puede utilizar junto con un ancho de celda preferido para formatear una célula que se ajusta automáticamente a su contenido, pero también tiene un ancho inicial. Si es necesario, el ancho celular puede luego crecer más allá de este ancho.

{{% /alert %}}

Por defecto, Aspose.Words inserta una tabla nueva utilizando **AutoFit to Window**. La tabla será tallada según el ancho de página disponible. Para cambiar el tamaño de una mesa, puede llamar a la [AutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#autoFit-int) método. Este método acepta un [AutoFitBehavior](https://reference.aspose.com/words/java/com.aspose.words/autofitbehavior/) enumeración que especifica qué tipo de autofit se aplica a la tabla.

Es importante saber que el método autofit es en realidad un atajo que aplica diferentes propiedades a la tabla al mismo tiempo. Estas son propiedades que realmente dan a la tabla el comportamiento observado. Vamos a discutir estas propiedades para cada opción autofit.

El siguiente ejemplo de código muestra cómo establecer una tabla para reducir o crecer cada célula según su contenido:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-auto-fit.java" >}}

Usaremos la siguiente tabla para aplicar los diversos ajustes de ajuste automático como demostración.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-1.png" alt="apply-different-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

#### AutoFit Table to Window

Al autofitting a una ventana se aplica a una tabla, las siguientes operaciones se realizan en realidad detrás de las escenas:

1. El **Table.AllowAutoFit** propiedad se habilita para cambiar automáticamente las columnas para ajustar el contenido disponible, utilizando un **Table.PreferredWidth** valor del 100%
2. **CellFormat.PreferredWidth** se elimina de todas las celdas de mesa
      {{% alert color="primary" %}}
   Tenga en cuenta que esto es ligeramente diferente del Microsoft Word comportamiento, donde el ancho preferido de cada célula se establece en valores apropiados basados en su tamaño y contenido actual. Aspose.Words no actualiza el ancho preferido por lo que se aclaran en su lugar.
      {{% /alert %}}
3. Los anchos de la columna se recalculan para el contenido actual de la tabla – el resultado final es una tabla que ocupa toda la anchura disponible
4. El ancho de las columnas de la tabla cambia automáticamente a medida que el usuario edita el texto

El siguiente ejemplo de código muestra cómo autofitear una tabla a la anchura de la página:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-page-width.java" >}}

Un ejemplo de cómo estas opciones se aplican a la tabla anterior se puede ver en la imagen siguiente.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-2.png" alt="autofit-table-aspose-words-java" style="width:500px"/>

#### Tabla de AutoFit al Contenido

Cuando la tabla se autofitea el contenido, los siguientes pasos se realizan detrás de las escenas:

1. El **Table.AllowAutoFit** propiedad está habilitada para cambiar automáticamente cada célula según su contenido

2. El ancho de la mesa preferido se elimina de **Table.PreferredWidth**, **CellFormat.PreferredWidth** se elimina para cada celda de mesa
      {{% alert color="primary" %}}

   Tenga en cuenta que esta opción autofit elimina el ancho preferido de las células, al igual que en Microsoft Word. Si desea mantener los tamaños de la columna y aumentar o disminuir las columnas para que se ajusten al contenido, debe configurar **Table.AllowAutoFit** propiedad a **True** por su cuenta en lugar de utilizar el acceso directo de autofit.{{% /alert %}}

3. Los anchos de la columna se recalculan para el contenido actual de la tabla – el resultado final es una tabla donde los anchos de la columna y la anchura de la tabla entera se redimensionan automáticamente para adaptarse mejor al contenido ya que el usuario edita el texto

El siguiente ejemplo de código muestra cómo adaptar una tabla a su contenido:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-contents.java" >}}

Un ejemplo de cómo estas opciones se aplican a la tabla anterior se puede ver en la imagen siguiente.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-3.png" alt="resize-column-autofit-settings-aspose-words-java" style="width:500px"/>

#### AutoFit deshabilitado en la tabla y utilizar las anchuras de columna fija

Si una tabla tiene los anchos de columnas desactivados y fijos autofit se utilizan en su lugar, se realizan los siguientes pasos:

1. **Table.AllowAutoFit** propiedad está deshabilitado por lo que las columnas no crecen o se contraen a su contenido
2. La anchura preferida de toda la tabla se retira de **Table.PreferredWidth**, **CellFormat.PreferredWidth** se elimina de todas las celdas de mesa
3. El resultado final es una tabla cuyo ancho de columna está determinado por el [CellFormat.Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) propiedad, y cuyas columnas no se tamaño automáticamente cuando el usuario entra texto o cuando la página se tamaño

{{% alert color="primary" %}}

Tenga en cuenta que si no se especifica el ancho **CellFormat.Width**, el valor predeterminado de una pulgada (72 puntos) se utiliza.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo desactivar el autofit y habilitar el ancho fijo para la tabla especificada:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-fixed-column-widths.java" >}}

Un ejemplo de cómo estas opciones se aplican a la tabla anterior se puede ver en la imagen siguiente.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-4.png" alt="disable-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

### Orden de Precedencia al calcular la anchura celular

Aspose.Words permite a los usuarios definir el ancho de una tabla o celda a través de múltiples objetos, incluyendo [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) – su [Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) propiedad se deja sobre todo de versiones anteriores, sin embargo, sigue siendo útil para simplificar el ajuste del ancho de la célula.

Es importante saber que **CellFormat.Width** propiedad funciona de manera diferente dependiendo de cuál de las otras propiedades de ancho ya existen en la tabla.

Aspose.Words utiliza la siguiente orden para calcular anchos de celda:

|  Orden |  Propiedad |  Descripción |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) se determina |  Si **AutoFit** está habilitado:<br/>- la tabla puede crecer más allá de la anchura preferida para acomodar el contenido – por lo general no se encoge debajo del ancho preferido<br/>- cualquier cambio al **CellFormat.Width** valor es ignorado y la célula se ajusta a su contenido en su lugar |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) con un valor **Points** o **Percent** |  **CellFormat.Width** es ignorado |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) con un valor **Auto** |  El valor de **CellFormat.Width** es copiado y se convierte en el ancho preferido de la célula (en puntos) |

{{% alert color="primary" %}}

Cualquier cambio en la propiedad de ancho no se actualiza en el ancho preferido y debe ser aplicado en su lugar al ancho preferido.

{{% /alert %}}

{{% alert color="primary" %}}

Al crear una tabla fija, especifique el ancho de la célula. Una célula sin ancho no se puede guardar en formato DOC. Los formatos de documentos distintos del DOC, como el DOCX, permiten, en principio, guardar células sin ancho en un diseño de mesa fijo.

{{% /alert %}}

## Permitir el espacio entre las células

Puede obtener o establecer cualquier espacio adicional entre las celdas de mesa similar a la opción "Espaciamiento de Carrito" en Microsoft Word. Esto se puede hacer utilizando [AllowCellSpacing](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowCellSpacing) propiedad.

Un ejemplo de cómo estas opciones se aplican a una tabla real en un documento se puede ver en la imagen siguiente.

<img src="/words/java/applying-formatting/applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-java" style="width:500px"/>

El siguiente ejemplo de código muestra cómo establecer el espaciado entre las células:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-cell-spacing.java" >}}

## Aplicar Fronteras y Compartir

Las fronteras y la sombra se pueden aplicar a toda la mesa utilizando [Table.SetBorder](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorder-int-int-double-java.awt.Color-boolean), [Table.SetBorders](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorders-int-double-java.awt.Color) y [Table.SetShading](https://reference.aspose.com/words/java/com.aspose.words/table/#setShading-int-java.awt.Color-java.awt.Color), o solamente a células específicas usando [CellFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getBorders) y [CellFormat.Shading](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getShading). Además, las fronteras de fila se pueden establecer utilizando [RowFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getBorders), sin embargo, no se puede aplicar de esta manera.

Las imágenes de abajo muestran la configuración de la frontera y la sombra en Microsoft Word y sus propiedades correspondientes en Aspose.Words.

![apply-borders-shading-aspose-words-java-1](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-6.png)


![apply-borders-shading-aspose-words-java-2](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-7.png)


El siguiente ejemplo de código muestra cómo formatear una tabla y una celda con diferentes fronteras y grietas:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "format-table-and-cell-with-different-borders.java" >}}