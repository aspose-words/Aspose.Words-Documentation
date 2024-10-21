---
title: Formateo de tablas en C++
second_title: Aspose.Words para C++
articleTitle: Aplicar Formato
linktitle: Aplicar Formato
description: "Formato de tabla en detalles usando C++. Usando C++ para formatear cada parte de la tabla."
type: docs
weight: 70
url: /es/cpp/applying-formatting/
---

Cada elemento de una tabla se puede aplicar con un formato diferente. Por ejemplo, el formato de tabla se aplicará a toda la tabla, el formato de fila solo a filas particulares, el formato de celda solo a ciertas celdas.

Aspose.Words proporciona una API enriquecida para recuperar y aplicar formato a una tabla. Puede usar los nodos [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/) y [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) para establecer el formato.

En este artículo, hablaremos sobre cómo aplicar formato a diferentes nodos de tabla y qué admite la configuración de formato de tabla Aspose.Words.

## Aplicar Formato a diferentes Nodos

En esta sección, veremos cómo aplicar formato a varios nodos de la tabla.

### Formato a Nivel de Tabla

Para aplicar formato a una tabla, puede usar las propiedades disponibles en el nodo **Table** correspondiente usando las clases [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/) y [TableCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/tablecollection/).

{{% alert color="primary" %}}

Tenga en cuenta que la tabla debe tener al menos una fila antes de poder aplicar las propiedades de la tabla. Esto significa que al crear una tabla con [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), este formateo debe realizarse después de la primera llamada a [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/), o después de agregar la primera fila a la tabla, o cuando los nodos se insertan directamente en el DOM.

{{% /alert %}}

Las siguientes imágenes muestran una representación de las características de formato **Table** en Microsoft Word y sus propiedades correspondientes en Aspose.Words.

![formattin-features-table-level-aspose-words-cpp](applying-formatting-1.png)

![formatting-table-options-aspose-words-cpp](applying-formatting-2.png)

El siguiente ejemplo de código muestra cómo aplicar un borde de contorno a una tabla:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-outline-border.h" >}}

El siguiente ejemplo de código muestra cómo crear una tabla con todos los bordes habilitados (cuadrícula):

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "build-table-with-borders.h" >}}

### Formato de Nivel de Fila

**Nivel de fila**

{{% alert color="primary" %}}

Tenga en cuenta que a **Row** solo puede ser un nodo hijo de a **Table**. Al mismo tiempo, debe haber al menos un **Cell** en el **Row** para que se le pueda aplicar formato.

{{% /alert %}}

Las siguientes imágenes muestran una representación de las características de formato **Row** en Microsoft Word y sus propiedades correspondientes en Aspose.Words.

![formatting-row-level-aspose-words-cpp](applying-formatting-3.png)

El siguiente ejemplo de código muestra cómo modificar el formato de la fila de la tabla:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-row-formatting.h" >}}

### Formateo a Nivel de Celda

El formato a nivel de celda está controlado por las clases [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) y [CellCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/cellcollection/).

{{% alert color="primary" %}}

Tenga en cuenta que a **Cell** solo puede ser un nodo hijo de a **Row**. Al mismo tiempo, debe haber al menos un [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) en el **Cell** para que se le pueda aplicar formato.

Además del **Paragraph**, también puede insertar un **Table** en un **Cell**.

{{% /alert %}}

Las siguientes imágenes muestran una representación de las características de formato **Cell** en Microsoft Word y sus propiedades correspondientes en Aspose.Words.

![formatting-cell-level-aspose-words-cpp](applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-cpp](applying-formatting-5.png)

El siguiente ejemplo de código muestra cómo modificar el formato de una celda de tabla:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-cell-formatting.h" >}}

El siguiente ejemplo de código muestra cómo establecer la cantidad de espacio (en puntos) que se agregará a la izquierda / arriba / derecha / abajo del contenido de la celda:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "cell-padding.h" >}}

## Especificar Alturas de Fila

La forma más sencilla de establecer la altura de la fila es usar **DocumentBuilder**. Usando las propiedades **RowFormat** apropiadas, puede establecer la configuración de altura predeterminada o aplicar una altura diferente para cada fila de la tabla.

En Aspose.Words, la altura de la fila de la tabla se controla mediante:

- la propiedad de altura de fila - [Height](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_height/)
- la propiedad de la regla de altura para la fila dada - [HeightRule](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_heightrule/)

Al mismo tiempo, se puede establecer una altura diferente para cada fila, lo que le permite controlar ampliamente la configuración de la tabla.

{{% alert color="primary" %}}

Las opciones de regla para especificar la altura de un objeto se pueden establecer utilizando la enumeración [HeightRule](https://reference.aspose.com/words/cpp/aspose.words/heightrule/).

{{% /alert %}}

El siguiente ejemplo de código muestra cómo crear una tabla que contenga una sola celda y aplicar formato de fila:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-row-formatting.h" >}}

## Especificación de Anchos de Tabla y Celda

Una tabla en un documento de Microsoft Word proporciona varias formas diferentes de cambiar el tamaño de la tabla y las celdas individuales. Estas propiedades permiten un control considerable sobre la apariencia y el comportamiento de la tabla, de modo que Aspose.Words admite el comportamiento de las tablas, como en Microsoft Word.

Es importante saber que los elementos de la tabla presentan varias propiedades diferentes que pueden afectar la forma en que se calculan los anchos de la tabla general, así como de las celdas individuales:

- Ancho preferido en la mesa
- Ancho preferido en celdas individuales
- Permitir el autoajuste en la mesa

Este artículo detalla cómo funcionan las diversas propiedades de cálculo del ancho de la tabla y cómo obtener un control total sobre el cálculo del ancho de la tabla. Esto es
especialmente útil para saber en esos casos en los que el diseño de la tabla no aparece como se esperaba.

{{% alert color="primary" %}}

En la mayoría de los casos, se recomienda la celda preferida que el ancho de la tabla. El ancho de celda preferido está más en línea con la especificación de formato DOCX, así como con el modelo Aspose.Words.

El ancho de la celda es en realidad un valor calculado para el formato DOCX. El ancho real de la celda puede depender de muchas cosas. Por ejemplo, cambiar los márgenes de la página o el ancho preferido de la tabla puede afectar el ancho real de la celda.

El ancho de celda preferido es una propiedad de celda que se almacena en el documento. No depende de nada y no cambia cuando cambia la tabla u otras propiedades de la celda.

{{% /alert %}}

{{% alert color="primary" %}}

Todas las propiedades y métodos descritos en este artículo están relacionados con el funcionamiento de las tablas en Microsoft Word. Entonces, en la mayoría de los casos, si está creando su tabla mediante programación pero le resulta difícil crear la tabla deseada, puede intentar crearla visualmente en Microsoft Word primero y luego simplemente copiar los valores de formato en su aplicación.

{{% /alert %}}

### Cómo Usar el Ancho Preferido

El ancho deseado de una tabla o celdas individuales se define a través de la propiedad de ancho preferida, que es el tamaño que un elemento se esfuerza por ajustar. Es decir, el ancho preferido se puede especificar para toda la tabla o para celdas individuales. En algunas situaciones, es posible que no sea posible ajustar este ancho exactamente, pero el ancho real estará cerca de este valor en la mayoría de los casos.

El tipo y valor de ancho preferido apropiado se establecen utilizando los métodos de la clase [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/):

- el método [Auto](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/auto/) para especificar auto o "sin ancho preferido"
- el método [FromPercent](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompercent/) para especificar un ancho porcentual
- el método [FromPoints](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompoints/) para especificar el ancho en puntos

Las siguientes imágenes muestran una representación del *preferred width setting features* en Microsoft Word y sus propiedades correspondientes en Aspose.Words.

![formatting-table-properties-aspose-words-cpp](applying-formatting-8.png)

Un ejemplo de cómo se aplican estas opciones a una tabla real en un documento se puede ver en la imagen a continuación.

![todo:image_alt_text](applying-formatting-9.png)

{{% alert color="primary" %}}

Antes de poder utilizar el ancho preferido en una tabla, debe asegurarse de que la tabla contenga al menos una fila. Esto se debe a que dicho formato de tabla en un documento de Microsoft Word o en un documento creado en Aspose.Words se almacena en las filas de la tabla.

{{% /alert %}}

#### Especifique el Ancho de Tabla o Celda Preferido

En Aspose.Words, los anchos de tabla y celda se establecen mediante la propiedad [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) y la propiedad [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/), con opciones disponibles en la enumeración [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/):

- **Auto**, que es equivalente a ningún conjunto de ancho preferido
- **Percent**, que ajusta el elemento en relación con el espacio disponible en el tamaño de la ventana o contenedor, y vuelve a calcular el valor cuando cambia el ancho disponible
- **Points**, que corresponde a un elemento del ancho especificado en puntos

{{% alert color="primary" %}}

De forma predeterminada, se puede describir una tabla como ajustada al 100% del espacio disponible en la página. En este caso, esto significa que la tabla intentará ocupar el espacio entre los márgenes de la página izquierda y derecha.

{{% /alert %}}

El uso de la propiedad [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) ajustará su ancho preferido en relación con su contenedor: página, columna de texto o celda externa de la tabla si es una tabla anidada.

El siguiente ejemplo de código muestra cómo configurar la tabla para que se ajuste automáticamente al 50% del ancho de la página:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-to-page-width.h" >}}

El uso de la propiedad [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/) en una celda determinada ajustará su ancho preferido.

El siguiente ejemplo de código muestra cómo establecer las diferentes configuraciones de ancho preferidas:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "preferred-width-settings.h" >}}

#### Encuentre el Tipo y Valor de Ancho Preferido

Puede usar las propiedades [Type](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) y [Value](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) para encontrar los detalles de ancho preferidos de la tabla o celda deseada.

El siguiente ejemplo de código muestra cómo recuperar el tipo de ancho preferido de una celda de tabla:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "retrieve-preferred-width-type.h" >}}

### Cómo Configurar el Autoajuste

La propiedad [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) permite que las celdas de una tabla crezcan y se contraigan de acuerdo con un criterio seleccionado. Por ejemplo, puede usar la opción **AutoFit to Window** para ajustar la tabla al ancho de la página y la opción **AutoFit to Content** para permitir que cada celda crezca o se contraiga según su contenido.

{{% alert color="primary" %}}

Además, la propiedad **AllowAutoFit** se puede usar junto con un ancho de celda preferido para formatear una celda que se ajuste automáticamente a su contenido, pero que también tenga un ancho inicial. Si es necesario, el ancho de la celda puede crecer más allá de este ancho.

{{% /alert %}}

De forma predeterminada, Aspose.Words inserta una nueva tabla usando **AutoFit to Window**. La tabla se dimensionará de acuerdo con el ancho de página disponible. Para cambiar el tamaño de una tabla, puede llamar al método [AutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/autofit/). Este método acepta una enumeración [AutoFitBehavior](https://reference.aspose.com/words/cpp/aspose.words.tables/autofitbehavior/) que especifica qué tipo de autoajuste se aplica a la tabla.

Es importante saber que el método de autoajuste es en realidad un acceso directo que aplica diferentes propiedades a la tabla al mismo tiempo. Estas son propiedades que realmente le dan a la tabla el comportamiento observado. Discutiremos estas propiedades para cada opción de autoajuste.

El siguiente ejemplo de código muestra cómo configurar una tabla para reducir o aumentar cada celda según su contenido:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-auto-fit.h" >}}

#### AutoFit Tabla a Ventana

Cuando se aplica el ajuste automático a una ventana a una tabla, las siguientes operaciones se realizan realmente detrás de escena:

1. La propiedad **Table.AllowAutoFit** está habilitada para cambiar automáticamente el tamaño de las columnas para que se ajusten al contenido disponible, utilizando un valor **Table.PreferredWidth** de 100%
2. **CellFormat.PreferredWidth** se elimina de todas las celdas de la tabla
   {{% alert color="primary" %}}
   Tenga en cuenta que esto es ligeramente diferente del comportamiento de Microsoft Word, donde el ancho preferido de cada celda se establece en los valores apropiados en función de su tamaño y contenido actuales. Aspose.Words no actualiza el ancho preferido, por lo que simplemente se borran.
   {{% /alert %}}
3. Los anchos de columna se vuelven a calcular para el contenido de la tabla actual; el resultado final es una tabla que ocupa todo el ancho disponible
4. El ancho de las columnas de la tabla cambia automáticamente a medida que el usuario edita el texto

El siguiente ejemplo de código muestra cómo ajustar automáticamente una tabla al ancho de página:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-page-width.h" >}}

#### AutoFit Tabla al contenido

Cuando la tabla ajusta automáticamente el contenido, los siguientes pasos se realizan realmente detrás de escena:

1. La propiedad **Table.AllowAutoFit** está habilitada para cambiar automáticamente el tamaño de cada celda de acuerdo con su contenido

2. El ancho de tabla preferido se elimina de **Table.PreferredWidth**, **CellFormat.PreferredWidth** se elimina para cada celda de la tabla
   {{% alert color="primary" %}}

   Tenga en cuenta que esta opción de ajuste automático elimina el ancho preferido de las celdas, al igual que en Microsoft Word. Si desea mantener los tamaños de las columnas y aumentarlas o disminuirlas para que se ajusten al contenido, debe establecer la propiedad **Table.AllowAutoFit** en **True** por sí sola en lugar de usar el acceso directo de ajuste automático.{{% /alert %}}

3. Los anchos de columna se vuelven a calcular para el contenido actual de la tabla: el resultado final es una tabla en la que los anchos de columna y el ancho de toda la tabla se redimensionan automáticamente para adaptarse mejor al contenido a medida que el usuario edita el texto

El siguiente ejemplo de código muestra cómo ajustar automáticamente una tabla a su contenido:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-contents.h" >}}

#### Deshabilite AutoFit en la Tabla y Use Anchos de Columna Fijos

Si una tabla tiene el autoajuste deshabilitado y, en su lugar, se utilizan anchos de columna fijos, se realizan los siguientes pasos:

1. La propiedad **Table.AllowAutoFit** está deshabilitada para que las columnas no crezcan ni se reduzcan en su contenido
2. El ancho preferido de toda la tabla se elimina de **Table.PreferredWidth**, **CellFormat.PreferredWidth** se elimina de todas las celdas de la tabla
3. El resultado final es una tabla cuyos anchos de columna están determinados por la propiedad [CellFormat.Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) y cuyas columnas no cambian de tamaño automáticamente cuando el usuario ingresa texto o cuando se cambia el tamaño de la página

{{% alert color="primary" %}}

Tenga en cuenta que si no se especifica ningún ancho para **CellFormat.Width**, se utiliza el valor predeterminado de una pulgada (72 puntos).

{{% /alert %}}

El siguiente ejemplo de código muestra cómo deshabilitar el ajuste automático y habilitar el ancho fijo para la tabla especificada:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-fixed-column-widths.h" >}}

### Orden de Precedencia al Calcular el Ancho de Celda

Aspose.Words permite a los usuarios definir el ancho de una tabla o celda a través de varios objetos, incluido [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/); su propiedad [Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) es en su mayoría sobrante de versiones anteriores, sin embargo, sigue siendo útil para simplificar la configuración del ancho de la celda.

Es importante saber que la propiedad **CellFormat.Width** funciona de manera diferente según cuál de las otras propiedades de ancho ya exista en la tabla.

Aspose.Words usa el siguiente orden para calcular los anchos de celda:

| Orden | Descripción |
| :- | :- |
|
|
|

{{% alert color="primary" %}}

Cualquier cambio en la propiedad width no se actualiza en el ancho preferido y, en cambio, debe aplicarse al ancho preferido.

{{% /alert %}}

{{% alert color="primary" %}}

Al crear un diseño de tabla fijo, especifique el ancho de la celda. Una celda sin ancho no se puede guardar en formato DOC. Los formatos de documento distintos de DOC, como DOCX, permiten, en principio, guardar celdas sin ancho en un diseño de tabla fijo.

{{% /alert %}}

## Permitir Espaciado Entre Celdas

Puede obtener o establecer cualquier espacio adicional entre las celdas de la tabla de manera similar a la opción" Espaciado de celdas " en Microsoft Word. Esto se puede hacer usando la propiedad [AllowCellSpacing](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowcellspacing/).

Un ejemplo de cómo se aplican estas opciones a una tabla real en un documento se puede ver en la imagen a continuación.

<img src="applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-cpp" style="width:500px"/>

El siguiente ejemplo de código muestra cómo establecer el espaciado entre celdas:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-cell-spacing.h" >}}

## Aplicar Bordes y Sombreado

Los bordes y el sombreado se pueden aplicar a toda la tabla usando [Table.SetBorder](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborder/), [Table.SetBorders](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborders/) y [Table.SetShading](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setshading/), o solo a celdas específicas usando [CellFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_borders/) y [CellFormat.Shading](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_shading/). Además, los bordes de las filas se pueden establecer usando [RowFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_borders/), sin embargo, el sombreado no se puede aplicar de esta manera.

Las siguientes imágenes muestran la configuración del borde y la sombra en Microsoft Word y sus propiedades correspondientes en Aspose.Words.

![formatting-border-line-aspose-words-cpp](applying-formatting-6.png)

![formatting-cell-color-aspose-words-cpp](applying-formatting-7.png)

El siguiente ejemplo de código muestra cómo formatear una tabla y una celda con diferentes bordes y sombreados:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "format-table-and-cell-with-different-borders.h" >}}