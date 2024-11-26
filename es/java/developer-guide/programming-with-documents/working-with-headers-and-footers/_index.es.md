---
title: Trabajar con Encabezados y pies de página en Java
second_title: Aspose.Words por Java
articleTitle: Trabajar con Encabezados y Pies de página
linktitle: Trabajar con Encabezados y Pies de página
description: "Cómo manipular encabezados y pies de página usando Java."
type: docs
weight: 150
url: /es/java/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words permite a los usuarios trabajar con encabezados y pies de página en un documento. Un encabezado es texto que se coloca en la parte superior de una página y un pie de página es texto en la parte inferior de una página. Normalmente, estas áreas se utilizan para insertar información que debe repetirse en todas o algunas páginas del documento, como números de página, fecha de creación, información de la empresa, etc.

## Cree Encabezados o pies de página usando DocumentBuilder

Si desea agregar un encabezado o pie de página de un documento mediante programación, la forma más sencilla es usar la clase [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) para hacerlo.

El siguiente ejemplo de código muestra cómo agregar un encabezado y un pie de página para las páginas del documento:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "create-header-footer.java" >}}

## Especificar Opciones de Encabezado o Pie de página

Cuando agrega un encabezado o pie de página a un documento, puede establecer algunas propiedades avanzadas. Aspose.Words proporciona a los usuarios las clases [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) y [HeaderFooterCollection](https://reference.aspose.com/words/java/com.aspose.words/headerfootercollection/), así como la enumeración [HeaderFooterType](https://reference.aspose.com/words/java/com.aspose.words/headerfootertype/) que le brindan más control sobre el proceso de personalización del encabezado y pie de página.

### Especifique el Tipo de Encabezado o Pie de página

Puede especificar tres tipos diferentes de encabezado y tres tipos diferentes de pie de página para un documento:

1. Encabezado y/o pie de página de la primera página
2. Encabezado y / o pie de página para páginas pares
3. Encabezado y / o pie de página para páginas impares

El siguiente ejemplo de código muestra cómo agregar un encabezado para páginas de documentos impares:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "header-footer-type.java" >}}

### Especifique si desea mostrar diferentes Encabezados o Pies de página para la Primera Página

Como se dijo anteriormente, también puede establecer un encabezado o pie de página diferente para la primera página. Para hacer esto, debe establecer el indicador [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) en `true` y luego especificar el valor **HeaderFirst** o **FooterFirst**.

El siguiente ejemplo de código muestra cómo establecer el encabezado solo para la primera página:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "different-first-page.java" >}}

### Especifique si desea Mostrar diferentes Encabezados o Pies de página para Páginas Pares o Impares

 A continuación, querrá establecer diferentes encabezados o pies de página para las páginas pares e impares de un documento. Para hacer esto, debe establecer el indicador [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) en `true` y luego especificar los valores **HeaderPrimary** y **HeaderEven**, o **FooterPrimary** y **FooterEven**.

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "odd-even-pages.java" >}}

### Inserte una Imagen Posicionada Absolutamente en el Encabezado

Para colocar una imagen en un encabezado o pie de página, use el tipo de encabezado **HeaderPrimary** o el tipo de pie de página **FooterPrimary** y el método [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte).

El siguiente ejemplo de código muestra cómo agregar una imagen a un encabezado:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "insert-image.java" >}}

### Establecer Propiedades de Fuente y Párrafo para el Texto del Encabezado o Pie de página

Con Aspose.Words puede establecer las propiedades de fuente y párrafo, usar el tipo de encabezado **HeaderPrimary** o el tipo de pie de página **FooterPrimary**, así como los métodos y propiedades para trabajar con las fuentes y párrafos que usa para el cuerpo del documento.

El siguiente ejemplo de código muestra cómo establecer el texto en el encabezado en Arial, negrita, tamaño 14 y alineación central:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "font-props.java" >}}

### Insertar Números de página en el Encabezado o Pie de página

Si es necesario, puede agregar números de página al encabezado o pie de página. Para hacer esto, use el tipo de encabezado **HeaderPrimary** o el tipo de pie de página **FooterPrimary** y el método [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) para agregar el campo requerido.

El siguiente ejemplo de código muestra cómo agregar números de página al pie de página de la derecha:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "page-numbers.java" >}}

### Utilice Encabezados o Pies de página Definidos en la Sección Anterior

Si necesita copiar el encabezado o pie de página de la sección anterior, también puede hacerlo.

El siguiente ejemplo de código muestra cómo copiar el encabezado o pie de página de la sección anterior:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "copy-headers-footers-from-previous-section.java" >}}

### Asegure la apariencia del Encabezado o Pie de página cuando Use Diferentes Orientaciones y Tamaños de Página

Aspose.Words le permite proporcionar la apariencia de un encabezado o pie de página cuando usa diferentes orientaciones y tamaños de página.

El siguiente ejemplo muestra cómo hacer esto:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

## Cómo Eliminar Solo Encabezados o Solo Pies de página

Cada sección de un documento puede tener hasta tres encabezados y hasta tres pies de página (para las páginas primera, par e impar). Si desea eliminar todos los encabezados o todos los pies de página de un documento, debe recorrer todas las secciones y eliminar cada nodo de encabezado o nodo de pie de página correspondiente.

El siguiente ejemplo de código muestra cómo eliminar todos los pies de página de todas las secciones, pero dejar intactos los encabezados. Puede eliminar solo encabezados de manera similar:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "remove-footers.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Footer.docx).

{{% /alert %}}
