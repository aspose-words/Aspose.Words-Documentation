---
title: Trabajar con Encabezados y pies de página en C++
second_title: Aspose.Words para C++
articleTitle: Trabajar con Encabezados y Pies de página
linktitle: Trabajar con Encabezados y Pies de página
description: "Cómo manipular encabezados y pies de página usando C++."
type: docs
weight: 150
url: /es/cpp/working-with-headers-and-footers/
---

Aspose.Words permite a los usuarios trabajar con encabezados y pies de página en un documento. Un encabezado es texto que se coloca en la parte superior de una página y un pie de página es texto en la parte inferior de una página. Normalmente, estas áreas se utilizan para insertar información que debe repetirse en todas o algunas páginas del documento, como números de página, fecha de creación, información de la empresa, etc.

## Cree Encabezados o pies de página usando DocumentBuilder

Si desea agregar un encabezado o pie de página de un documento mediante programación, la forma más sencilla es usar la clase [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) para hacerlo.

El siguiente ejemplo de código muestra cómo agregar un encabezado y un pie de página para las páginas del documento:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "create-header-footer.h" >}}

## Especificar Opciones de Encabezado o Pie de página

Cuando agrega un encabezado o pie de página a un documento, puede establecer algunas propiedades avanzadas. Aspose.Words proporciona a los usuarios las clases [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) y [HeaderFooterCollection](https://reference.aspose.com/words/cpp/aspose.words/headerfootercollection/), así como la enumeración [HeaderFooterType](https://reference.aspose.com/words/cpp/aspose.words/headerfootertype/) que le brindan más control sobre el proceso de personalización del encabezado y pie de página.

### Especifique el Tipo de Encabezado o Pie de página

Puede especificar tres tipos diferentes de encabezado y tres tipos diferentes de pie de página para un documento:

1. Encabezado y/o pie de página de la primera página
2. Encabezado y / o pie de página para páginas pares
3. Encabezado y / o pie de página para páginas impares

El siguiente ejemplo de código muestra cómo agregar un encabezado para páginas de documentos impares:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "header-footer-type.h" >}}

### Especifique si desea mostrar diferentes Encabezados o Pies de página para la Primera Página

Como se dijo anteriormente, también puede establecer un encabezado o pie de página diferente para la primera página. Para hacer esto, debe establecer el indicador [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_differentfirstpageheaderfooter/) en `true` y luego especificar el valor **HeaderFirst** o **FooterFirst**.

El siguiente ejemplo de código muestra cómo establecer el encabezado solo para la primera página:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "different-first-page.h" >}}

### Especifique si desea Mostrar diferentes Encabezados o Pies de página para Páginas Pares o Impares

 A continuación, querrá establecer diferentes encabezados o pies de página para las páginas pares e impares de un documento. Para hacer esto, debe establecer el indicador [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_oddandevenpagesheaderfooter/) en `true` y luego especificar los valores **HeaderPrimary** y **HeaderEven**, o **FooterPrimary** y **FooterEven**.

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "odd-even-pages.h" >}}

### Inserte una Imagen Posicionada Absolutamente en el Encabezado

Para colocar una imagen en un encabezado o pie de página, use el tipo de encabezado **HeaderPrimary** o el tipo de pie de página **FooterPrimary** y el método `InsertImage`.

El siguiente ejemplo de código muestra cómo agregar una imagen a un encabezado:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "insert-image.h" >}}

### Establecer Propiedades de Fuente y Párrafo para el Texto del Encabezado o Pie de página

Con Aspose.Words puede establecer las propiedades de fuente y párrafo, usar el tipo de encabezado **HeaderPrimary** o el tipo de pie de página **FooterPrimary**, así como los métodos y propiedades para trabajar con las fuentes y párrafos que usa para el cuerpo del documento.

El siguiente ejemplo de código muestra cómo establecer el texto en el encabezado en Arial, negrita, tamaño 14 y alineación central:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "font-props.h" >}}

### Insertar Números de página en el Encabezado o Pie de página

Si es necesario, puede agregar números de página al encabezado o pie de página. Para hacer esto, use el tipo de encabezado **HeaderPrimary** o el tipo de pie de página **FooterPrimary** y el método [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) para agregar el campo requerido.

El siguiente ejemplo de código muestra cómo agregar números de página al pie de página de la derecha:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "page-numbers.h" >}}

### Utilice Encabezados o Pies de página Definidos en la Sección Anterior

Si necesita copiar el encabezado o pie de página de la sección anterior, también puede hacerlo.

El siguiente ejemplo de código muestra cómo copiar el encabezado o pie de página de la sección anterior:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "copy-headers-footers-from-previous-section.h" >}}

### Asegure la apariencia del Encabezado o Pie de página cuando Use Diferentes Orientaciones y Tamaños de Página

Aspose.Words le permite proporcionar la apariencia de un encabezado o pie de página cuando usa diferentes orientaciones y tamaños de página.

El siguiente ejemplo muestra cómo hacer esto:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

## Cómo Eliminar Solo Encabezados o Solo Pies de página

Cada sección de un documento puede tener hasta tres encabezados y hasta tres pies de página (para las páginas primera, par e impar). Si desea eliminar todos los encabezados o todos los pies de página de un documento, debe recorrer todas las secciones y eliminar cada nodo de encabezado o nodo de pie de página correspondiente.

El siguiente ejemplo de código muestra cómo eliminar todos los pies de página de todas las secciones, pero dejar intactos los encabezados. Puede eliminar solo encabezados de manera similar:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "remove-footers.h" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}