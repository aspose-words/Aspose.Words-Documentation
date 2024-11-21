---
title: Formato de tabla en C#
second_title: Aspose.Words para .NET
articleTitle: Aplicar formato de tabla
linktitle: Aplicar formato de tabla
description: "Formato de tabla en detalle usando C#. Utilice C# para formatear cada parte de la tabla."
type: docs
weight: 70
url: /es/net/applying-formatting/
timestamp: 2024-01-27-14-07-04
---

Cada elemento de una tabla se puede aplicar con un formato diferente. Por ejemplo, el formato de tabla se aplicará a toda la tabla, el formato de fila solo a filas específicas y el formato de celda solo a ciertas celdas.

Aspose.Words proporciona un API enriquecido para recuperar y aplicar formato a una tabla. Puede utilizar los nodos [Table](https://reference.aspose.com/words/es/net/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/es/net/aspose.words.tables/rowformat/) y [CellFormat](https://reference.aspose.com/words/es/net/aspose.words.tables/cellformat/) para configurar el formato.

En este artículo, hablaremos sobre cómo aplicar formato a diferentes nodos de la tabla y qué configuraciones de formato de tabla admite Aspose.Words.

## Aplicar formato a diferentes nodos

En esta sección, veremos cómo aplicar formato a varios nodos de la tabla.

### Formato a nivel de tabla

Para aplicar formato a una tabla, puede utilizar las propiedades disponibles en el nodo **Table** correspondiente utilizando las clases [Table](https://reference.aspose.com/words/es/net/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/es/net/aspose.words.tables/preferredwidth/) y [TableCollection](https://reference.aspose.com/words/es/net/aspose.words.tables/tablecollection/).

{{% alert color="primary" %}}

Tenga en cuenta que la tabla debe tener al menos una fila antes de que se puedan aplicar las propiedades de la tabla. Esto significa que al crear una tabla con [DocumentBuilder](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/), este formato debe realizarse después de la primera llamada a [InsertCell](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/insertcell/), o después de agregar la primera fila a la tabla, o cuando los nodos se insertan directamente en el DOM.

{{% /alert %}}

Las siguientes imágenes muestran una representación de las funciones de formato **Table** en Microsoft Word y sus propiedades correspondientes en Aspose.Words.

![formattin-features-table-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-1.png)




![formatting-table-options-aspose-words-net](/words/net/applying-formatting/applying-formatting-2.png)

El siguiente ejemplo de código muestra cómo aplicar un borde de contorno a una tabla:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "apply-outline-border.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

El siguiente ejemplo de código muestra cómo crear una tabla con todos los bordes habilitados (cuadrícula):

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "build-table-with-borders.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Formato de nivel de fila

El formato **nivel de fila** se puede controlar mediante las clases [Row](https://reference.aspose.com/words/es/net/aspose.words.tables/row/), [RowFormat](https://reference.aspose.com/words/es/net/aspose.words.tables/rowformat/) y [RowCollection](https://reference.aspose.com/words/es/net/aspose.words.tables/rowcollection/).

{{% alert color="primary" %}}

Tenga en cuenta que un **Row** sólo puede ser un nodo hijo de un **Table**. Al mismo tiempo, debe haber al menos un **Cell** en el **Row** para que se le pueda aplicar formato.

{{% /alert %}}

Las siguientes imágenes muestran una representación de las funciones de formato **Row** en Microsoft Word y sus propiedades correspondientes en Aspose.Words.

![formatting-row-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-3.png)

El siguiente ejemplo de código muestra cómo modificar el formato de fila de la tabla:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "modify-row-formatting.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Formato a nivel de celda

El formato a nivel de celda está controlado por las clases [Cell](https://reference.aspose.com/words/es/net/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/es/net/aspose.words.tables/cellformat/) y [CellCollection](https://reference.aspose.com/words/es/net/aspose.words.tables/cellcollection/).

{{% alert color="primary" %}}

Tenga en cuenta que un **Cell** sólo puede ser un nodo hijo de un **Row**. Al mismo tiempo, debe haber al menos un [Paragraph](https://reference.aspose.com/words/es/net/aspose.words/paragraph/) en el **Cell** para que se le pueda aplicar formato.

Además del **Paragraph**, también puedes insertar un **Table** en un **Cell**.

{{% /alert %}}

Las siguientes imágenes muestran una representación de las funciones de formato **Cell** en Microsoft Word y sus propiedades correspondientes en Aspose.Words.

![formatting-cell-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-5.png)

El siguiente ejemplo de código muestra cómo modificar el formato de una celda de una tabla:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "modify-cell-formatting.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

El siguiente ejemplo de código muestra cómo establecer la cantidad de espacio (en puntos) para agregar a la izquierda/arriba/derecha/abajo del contenido de la celda:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "cell-padding.cs" >}}

## Especificar alturas de fila

La forma más sencilla de establecer la altura de la fila es utilizar **DocumentBuilder**. Usando las propiedades **RowFormat** apropiadas, puede establecer la configuración de altura predeterminada o aplicar una altura diferente para cada fila de la tabla.

En Aspose.Words, la altura de las filas de la tabla está controlada por:

- la propiedad de altura de fila – [Height](https://reference.aspose.com/words/es/net/aspose.words.tables/rowformat/height/)
- la propiedad de la regla de altura para la fila dada – [HeightRule](https://reference.aspose.com/words/es/net/aspose.words.tables/rowformat/heightrule/)

Al mismo tiempo, se puede establecer una altura diferente para cada fila, lo que le permite controlar ampliamente la configuración de la mesa.

{{% alert color="primary" %}}

Las opciones de regla para especificar la altura de un objeto se pueden configurar mediante la enumeración [HeightRule](https://reference.aspose.com/words/es/net/aspose.words/heightrule/).

{{% /alert %}}

El siguiente ejemplo de código muestra cómo crear una tabla que contiene una sola celda y aplicar formato de fila:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "apply-row-formatting.cs" >}}

## Especificar anchos de tabla y celda

Una tabla en un documento Microsoft Word proporciona varias formas diferentes de cambiar el tamaño de la tabla y de las celdas individuales. Estas propiedades permiten un control considerable sobre la apariencia y el comportamiento de la tabla, de modo que Aspose.Words admite el comportamiento de las tablas, como en Microsoft Word.

Es importante saber que los elementos de la tabla presentan varias propiedades diferentes que pueden afectar la forma en que se calculan los anchos de la tabla en general, así como las celdas individuales:

- Ancho preferido en la mesa.
- Ancho preferido en celdas individuales
- Permitir autoajuste en la mesa.

Este artículo detalla cómo funcionan las distintas propiedades de cálculo del ancho de la tabla y cómo obtener control total sobre el cálculo del ancho de la tabla. Esto es
Es especialmente útil saberlo en casos en los que el diseño de la tabla no aparece como se esperaba.

{{% alert color="primary" %}}

En la mayoría de los casos, se recomienda preferir la celda al ancho de la tabla. El ancho de celda preferido está más en línea con la especificación del formato DOCX y con el modelo Aspose.Words.

El ancho de celda es en realidad un valor calculado para el formato DOCX. El ancho real de la celda puede depender de muchas cosas. Por ejemplo, cambiar los márgenes de la página o el ancho de la tabla preferido puede afectar el ancho real de la celda.

El ancho de celda preferido es una propiedad de celda que se almacena en el documento. No depende de nada y no cambia cuando cambias la tabla u otras propiedades de la celda.

{{% /alert %}}

{{% alert color="primary" %}}

Todas las propiedades y métodos descritos en este artículo están relacionados con el funcionamiento de las tablas en Microsoft Word. Entonces, en la mayoría de los casos, si está creando su tabla mediante programación pero le resulta difícil crear la tabla deseada, primero puede intentar crearla visualmente en Microsoft Word y luego simplemente copiar los valores de formato en su aplicación.

{{% /alert %}}

### Cómo utilizar el ancho preferido

El ancho deseado de una tabla o celdas individuales se define a través de la propiedad de ancho preferido, que es el tamaño que un elemento intenta ajustar. Es decir, el ancho preferido se puede especificar para toda la tabla o para celdas individuales. En algunas situaciones, puede que no sea posible ajustar este ancho exactamente, pero el ancho real estará cerca de este valor en la mayoría de los casos.

El tipo y valor de ancho preferido apropiado se establecen utilizando los métodos de la clase [PreferredWidth](https://reference.aspose.com/words/es/net/aspose.words.tables/preferredwidth/):

* el método [Auto](https://reference.aspose.com/words/es/net/aspose.words.tables/preferredwidth/auto/) para especificar automático o "sin ancho preferido"
* el método [FromPercent](https://reference.aspose.com/words/es/net/aspose.words.tables/preferredwidth/frompercent/) para especificar un ancho porcentual
* el método [FromPoints](https://reference.aspose.com/words/es/net/aspose.words.tables/preferredwidth/frompoints/) para especificar el ancho en puntos

Las siguientes imágenes muestran una representación de las *funciones de configuración de ancho preferidas* en Microsoft Word y sus propiedades correspondientes en Aspose.Words.

![formatting-table-properties-aspose-words-net](/words/net/applying-formatting/applying-formatting-8.png)

En la siguiente imagen se puede ver un ejemplo de cómo se aplican estas opciones a una tabla real en un documento.

![todo:image_alt_text](/words/net/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

Antes de poder utilizar el ancho preferido en una tabla, debe asegurarse de que la tabla contenga al menos una fila. Esto se debe a que dicho formato de tabla en un documento Microsoft Word o en un documento creado en Aspose.Words se almacena en las filas de la tabla.

{{% /alert %}}

#### Especifique la tabla preferida o el ancho de celda

En Aspose.Words, los anchos de tablas y celdas se configuran mediante la propiedad [Table.PreferredWidth](https://reference.aspose.com/words/es/net/aspose.words.tables/table/preferredwidth/) y la propiedad [CellFormat.PreferredWidth](https://reference.aspose.com/words/es/net/aspose.words.tables/cellformat/preferredwidth/), con opciones disponibles en la enumeración [PreferredWidthType](https://reference.aspose.com/words/es/net/aspose.words.tables/preferredwidthtype/):

- **Auto**, que equivale a no establecer un ancho preferido
- **Percent**, que ajusta el elemento en relación con el espacio disponible en la ventana o tamaño del contenedor, y recalcula el valor cuando cambia el ancho disponible
- **Points**, que corresponde a un elemento del ancho especificado en puntos

{{% alert color="primary" %}}

De forma predeterminada, se puede describir que una tabla se ajusta al 100% del espacio disponible en la página. En este caso, esto significa que la tabla intentará ocupar el espacio entre los márgenes izquierdo y derecho de la página.

{{% /alert %}}

El uso de la propiedad [Table.PreferredWidth](https://reference.aspose.com/words/es/net/aspose.words.tables/table/preferredwidth/) ajustará su ancho preferido en relación con su contenedor: página, columna de texto o celda exterior de la tabla si es una tabla anidada.

El siguiente ejemplo de código muestra cómo configurar la tabla para que se ajuste automáticamente al 50% del ancho de la página:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-page-width.cs" >}}

El uso de la propiedad [CellFormat.PreferredWidth](https://reference.aspose.com/words/es/net/aspose.words.tables/cellformat/preferredwidth/) en una celda determinada ajustará su ancho preferido.

El siguiente ejemplo de código muestra cómo establecer las diferentes configuraciones de ancho preferidas:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "preferred-width-settings.cs" >}}

#### Encuentre el tipo y valor de ancho preferido

Puede utilizar las propiedades [Type](https://reference.aspose.com/words/es/net/aspose.words.tables/preferredwidth/type/) y [Value](https://reference.aspose.com/words/es/net/aspose.words.tables/preferredwidth/value/) para encontrar los detalles de ancho preferido de la tabla o celda deseada.

El siguiente ejemplo de código muestra cómo recuperar el tipo de ancho preferido de una celda de una tabla:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "retrieve-preferred-width-type.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Cómo configurar el ajuste automático

La propiedad [AllowAutoFit](https://reference.aspose.com/words/es/net/aspose.words.tables/table/allowautofit/) permite que las celdas de una tabla crezcan y se reduzcan según un criterio seleccionado. Por ejemplo, puede utilizar la opción **Autoajustar a la ventana** para ajustar la tabla al ancho de la página y la opción **Autoajustar al contenido** para permitir que cada celda crezca o se reduzca según su contenido.

{{% alert color="primary" %}}

Además, la propiedad **AllowAutoFit** se puede utilizar junto con un ancho de celda preferido para formatear una celda que se ajuste automáticamente a su contenido, pero que también tenga un ancho inicial. Si es necesario, el ancho de la celda puede crecer más allá de este ancho.

{{% /alert %}}

De forma predeterminada, Aspose.Words inserta una nueva tabla usando **Autoajustar a la ventana**. La tabla tendrá un tamaño acorde al ancho de página disponible. Para cambiar el tamaño de una tabla, puede llamar al método [AutoFit](https://reference.aspose.com/words/es/net/aspose.words.tables/table/autofit/). Este método acepta una enumeración [AutoFitBehavior](https://reference.aspose.com/words/es/net/aspose.words.tables/autofitbehavior/) que especifica qué tipo de ajuste automático se aplica a la tabla.

Es importante saber que el método de ajuste automático es en realidad un atajo que aplica diferentes propiedades a la tabla al mismo tiempo. Éstas son propiedades que realmente le dan a la tabla el comportamiento observado. Discutiremos estas propiedades para cada opción de ajuste automático.

El siguiente ejemplo de código muestra cómo configurar una tabla para reducir o aumentar cada celda según su contenido:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "allow-auto-fit.cs" >}}

#### Autoajustar tabla a ventana

Cuando el ajuste automático de una ventana se aplica a una tabla, las siguientes operaciones en realidad se realizan detrás de escena:

1. La propiedad **Table.AllowAutoFit** está habilitada para cambiar automáticamente el tamaño de las columnas para que se ajusten al contenido disponible, utilizando un valor **Table.PreferredWidth** del 100%.
2. **CellFormat.PreferredWidth** se elimina de todas las celdas de la tabla.
  {{% alert color="primary" %}}
  Tenga en cuenta que esto es ligeramente diferente del comportamiento de Microsoft Word, donde el ancho preferido de cada celda se establece en los valores apropiados según su tamaño y contenido actual. Aspose.Words no actualiza el ancho preferido, por lo que simplemente se borra.
  {{% /alert %}}
3. Los anchos de las columnas se recalculan para el contenido de la tabla actual; el resultado final es una tabla que ocupa todo el ancho disponible.
4. El ancho de las columnas de la tabla cambia automáticamente a medida que el usuario edita el texto.

El siguiente ejemplo de código muestra cómo ajustar automáticamente una tabla al ancho de la página:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-page-width.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### Autoajustar tabla al contenido

Cuando a la tabla se le ajusta automáticamente el contenido, los siguientes pasos se realizan detrás de escena:

1. La propiedad **Table.AllowAutoFit** está habilitada para cambiar automáticamente el tamaño de cada celda según su contenido.

2. El ancho de tabla preferido se elimina de **Table.PreferredWidth** y se elimina **CellFormat.PreferredWidth** para cada celda de la tabla.
  {{% alert color="primary" %}}

  Tenga en cuenta que esta opción de ajuste automático elimina el ancho preferido de las celdas, como en Microsoft Word. Si desea mantener los tamaños de las columnas y aumentar o disminuir las columnas para que se ajusten al contenido, debe configurar la propiedad **Table.AllowAutoFit** en **True** por sí sola en lugar de utilizar el acceso directo de ajuste automático.{{% /alert %}}

3. Los anchos de las columnas se recalculan para el contenido de la tabla actual: el resultado final es una tabla donde los anchos de las columnas y el ancho de toda la tabla cambian automáticamente de tamaño para adaptarse mejor al contenido a medida que el usuario edita el texto.

El siguiente ejemplo de código muestra cómo ajustar automáticamente una tabla a su contenido:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-contents.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### Deshabilite el ajuste automático en la tabla y use anchos de columna fijos

Si una tabla tiene el ajuste automático deshabilitado y en su lugar se utilizan anchos de columna fijos, se realizan los siguientes pasos:

1. La propiedad **Table.AllowAutoFit** está deshabilitada para que las columnas no crezcan ni se reduzcan según su contenido.

2. El ancho preferido de toda la tabla se elimina de **Table.PreferredWidth** y **CellFormat.PreferredWidth** se elimina de todas las celdas de la tabla.
3. El resultado final es una tabla cuyos anchos de columna están determinados por la propiedad [CellFormat.Width](https://reference.aspose.com/words/es/net/aspose.words.tables/cellformat/width/) y cuyas columnas no cambian de tamaño automáticamente cuando el usuario ingresa texto o cuando se cambia el tamaño de la página.

{{% alert color="primary" %}}

Tenga en cuenta que si no se especifica ningún ancho para **CellFormat.Width**, se utiliza el valor predeterminado de una pulgada (72 puntos).

{{% /alert %}}

El siguiente ejemplo de código muestra cómo deshabilitar el ajuste automático y habilitar el ancho fijo para la tabla especificada:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-fixed-column-widths.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Orden de precedencia al calcular el ancho de celda

Aspose.Words permite a los usuarios definir el ancho de una tabla o celda a través de múltiples objetos, incluido [CellFormat](https://reference.aspose.com/words/es/net/aspose.words.tables/cellformat/); su propiedad [Width](https://reference.aspose.com/words/es/net/aspose.words.tables/cellformat/width/) se conserva en su mayor parte de versiones anteriores; sin embargo, sigue siendo útil para simplificar la configuración del ancho de la celda.

Es importante saber que la propiedad **CellFormat.Width** funciona de manera diferente dependiendo de cuál de las otras propiedades de ancho ya existe en la tabla.

Aspose.Words utiliza el siguiente orden para calcular el ancho de celda:

|  Orden |  Propiedad |  Descripción |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1 |  [AllowAutoFit](https://reference.aspose.com/words/es/net/aspose.words.tables/table/allowautofit/) está determinado |  Si **AutoFit** está habilitado:<br>- la tabla puede crecer más allá del ancho preferido para acomodar el contenido; generalmente no se reduce por debajo del ancho preferido<br>- cualquier cambio en el valor **CellFormat.Width** se ignora y la celda se ajustará a su contenido |
|  2 |  [PreferredWidthType](https://reference.aspose.com/words/es/net/aspose.words.tables/preferredwidthtype/) con un valor de **Points** o **Percent** |  **CellFormat.Width** se ignora |
|  3 |  [PreferredWidthType](https://reference.aspose.com/words/es/net/aspose.words.tables/preferredwidthtype/) con un valor de **Auto** |  El valor de **CellFormat.Width** se copia y se convierte en el ancho preferido de la celda (en puntos) |

{{% alert color="primary" %}}

Cualquier cambio en la propiedad de ancho no se actualiza en el ancho preferido y, en su lugar, debe aplicarse al ancho preferido.

{{% /alert %}}

{{% alert color="primary" %}}

Al crear un diseño de tabla fijo, especifique el ancho de la celda. Una celda sin ancho no se puede guardar en formato DOC. Los formatos de documentos distintos de DOC, como DOCX, permiten, en principio, guardar celdas sin ancho en un diseño de tabla fijo.

{{% /alert %}}

## Permitir espacio entre celdas

Puede obtener o establecer cualquier espacio adicional entre las celdas de la tabla de forma similar a la opción "Espaciado entre celdas" en Microsoft Word. Esto se puede hacer usando la propiedad [AllowCellSpacing](https://reference.aspose.com/words/es/net/aspose.words.tables/table/allowcellspacing/).

En la siguiente imagen se puede ver un ejemplo de cómo se aplican estas opciones a una tabla real en un documento.

<img src="/words/net/applying-formatting/applying-formatting-10.png" alt="formato-espaciado-entre-celdas-aspose-words-net" style="width:500px"/>

El siguiente ejemplo de código muestra cómo establecer el espacio entre celdas:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "allow-cell-spacing.cs" >}}

## Aplicar bordes y sombreado

Los bordes y el sombreado se pueden aplicar a toda la tabla usando [Table.SetBorder](https://reference.aspose.com/words/es/net/aspose.words.tables/table/setborder/), [Table.SetBorders](https://reference.aspose.com/words/es/net/aspose.words.tables/table/setborders/) y [Table.SetShading](https://reference.aspose.com/words/es/net/aspose.words.tables/table/setshading/), o solo a celdas específicas usando [CellFormat.Borders](https://reference.aspose.com/words/es/net/aspose.words.tables/cellformat/borders/) y [CellFormat.Shading](https://reference.aspose.com/words/es/net/aspose.words.tables/cellformat/shading/). Además, los bordes de las filas se pueden configurar usando [RowFormat.Borders](https://reference.aspose.com/words/es/net/aspose.words.tables/rowformat/borders/); sin embargo, el sombreado no se puede aplicar de esta manera.

Las siguientes imágenes muestran la configuración de borde y sombra en Microsoft Word y sus propiedades correspondientes en Aspose.Words.

![formatting-border-line-aspose-words-net](/words/net/applying-formatting/applying-formatting-6.png)

![formatting-cell-color-aspose-words-net](/words/net/applying-formatting/applying-formatting-7.png)

El siguiente ejemplo de código muestra cómo formatear una tabla y una celda con diferentes bordes y sombreados:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "format-table-and-cell-with-different-borders.cs" >}}
