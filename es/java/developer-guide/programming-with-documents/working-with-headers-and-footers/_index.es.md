---
title: Trabajando con Headers y Footers en Java
second_title: Aspose.Words para Java
articleTitle: Trabajando con Headers y Footers
linktitle: Trabajando con Headers y Footers
description: "Cómo manipular las cabeceras y las calderas usando Java."
type: docs
weight: 150
url: /es/java/working-with-headers-and-footers/
---

Aspose.Words permite a los usuarios trabajar con encabezados y calzados en un documento. Un encabezado es texto que se coloca en la parte superior de una página, y un pie de página es texto en la parte inferior de una página. Por lo general, estas áreas se utilizan para insertar información que debe repetirse en todas o algunas páginas del documento, como números de página, fecha de creación, información de la empresa, etc.

## Crear Headers o Footers usando DocumentBuilder

Si desea añadir un encabezado de documento o un pie de página programáticamente, la manera más fácil es utilizar el [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) clase para hacerlo.

El siguiente ejemplo de código muestra cómo añadir un encabezado y un pie de página para las páginas de documentos:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "create-header-footer.java" >}}

## Especifique las opciones de encabezado o pie de página

Cuando agregue un encabezado o un pie de página a un documento, puede establecer algunas propiedades avanzadas. Aspose.Words proporciona a los usuarios [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) y [HeaderFooterCollection](https://reference.aspose.com/words/java/com.aspose.words/headerfootercollection/) clases, así como [HeaderFooterType](https://reference.aspose.com/words/java/com.aspose.words/headerfootertype/) enumeración que le da más control sobre el proceso de personalización del encabezado y del pie.

### Especificar Header o Footer Tipo

Puede especificar tres tipos de encabezado diferentes y tres tipos de pie diferentes para un documento:

1. Cabeza y/o pie de página para la primera página
2. Cabeza y/o pie de página para incluso páginas
3. Cabeza y/o pie de página para páginas extrañas

El siguiente ejemplo de código muestra cómo agregar un encabezado para páginas de documentos impares:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "header-footer-type.java" >}}

### Especifique si mostrar diferentes encabezados o pies para la primera página

Como se ha dicho anteriormente, también puede establecer un encabezado o un pie de página diferente para la primera página. Para hacer esto, necesitas establecer el [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) bandera `true` y luego especular **HeaderFirst** o **FooterFirst** valor.

El siguiente ejemplo de código muestra cómo configurar el encabezado para la primera página solamente:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "different-first-page.java" >}}

### Especifique si debe mostrar diferentes encabezados o calzado para Páginas extrañas o incluso

 A continuación, usted querrá establecer diferentes encabezados o pies para páginas extrañas e incluso en un documento. Para hacer esto, necesitas establecer el [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) bandera `true` y luego especular los valores **HeaderPrimary** y **HeaderEven**, o **FooterPrimary** y **FooterEven**.

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "odd-even-pages.java" >}}

### Insertar un absolutamente posicionado Imagen en el encabezado

Para colocar una imagen en una cabecera o un pie, utilice la **HeaderPrimary** tipo de encabezado o **FooterPrimary** tipo de pie y el [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) método.

El siguiente ejemplo de código muestra cómo agregar una imagen a un encabezado:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "insert-image.java" >}}

### Establecer las propiedades de fuente y párrafo para el encabezado o el texto del pie

Con Aspose.Words puede configurar las propiedades de la fuente y el párrafo, utilizar **HeaderPrimary** tipo de encabezado o **FooterPrimary** tipo de pie, así como métodos y propiedades para trabajar con las fuentes y párrafos que utiliza para el cuerpo de documento.

El siguiente ejemplo de código muestra cómo configurar el texto en el encabezado a Arial, bold, size 14, y alineación central:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "font-props.java" >}}

### Insertar Números de página en el encabezado o el pie

Si es necesario, puede añadir números de página al encabezado o al pie de página. Para hacer esto, utilice el **HeaderPrimary** tipo de encabezado o **FooterPrimary** tipo de pie y el [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) método para añadir el campo requerido.

El siguiente ejemplo de código muestra cómo añadir números de página al pie de la derecha:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "page-numbers.java" >}}

### Use Headers or Footers Defined in the Previous Section

Si necesita copiar el encabezado o el pie de página de la sección anterior, puede hacerlo también.

El siguiente ejemplo de código muestra cómo copiar el encabezado o el pie de página de la sección anterior:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "copy-headers-footers-from-previous-section.java" >}}

### Asegurar el aspecto del encabezado o del pie al utilizar diferentes orientaciones de página y tamaño de página

Aspose.Words le permite proporcionar la apariencia de un encabezado o un pie de página al utilizar diferentes orientaciones y tamaños de página.

El siguiente ejemplo muestra cómo hacer esto:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

## Cómo quitar sólo los encabezados o sólo los pies

Cada sección de un documento puede tener hasta tres cabeceras y hasta tres pies (por primera, incluso y páginas extrañas). Si desea eliminar todos los encabezados o todos los calzados en un documento, debe bucle a través de todas las secciones y eliminar cada nodo de cabecera correspondiente o nodo de pie.

El siguiente ejemplo de código muestra cómo quitar todos los pies de todas las secciones pero dejar los encabezados intactos. Usted puede quitar sólo los encabezados de una manera similar:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "remove-footers.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Footer.docx).

{{% /alert %}}