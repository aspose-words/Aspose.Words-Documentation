---
title: Trabajar con encabezados y pies de página en C#
second_title: Aspose.Words para .NET
articleTitle: Trabajar con encabezados y pies de página
linktitle: Trabajar con encabezados y pies de página
description: "Cómo manipular encabezados y pies de página usando C#. Crea encabezados y pies de página C#. Eliminar encabezados o pies de página C#."
type: docs
weight: 150
url: /es/net/working-with-headers-and-footers/
---

Aspose.Words permite a los usuarios trabajar con encabezados y pies de página en un documento. Un encabezado es texto que se coloca en la parte superior de una página y un pie de página es texto en la parte inferior de una página. Normalmente, estas áreas se utilizan para insertar información que debe repetirse en todas o algunas páginas del documento, como números de página, fecha de creación, información de la empresa, etc.

## Crear encabezados o pies de página usando DocumentBuilder

Si desea agregar un encabezado o pie de página al documento mediante programación, la forma más sencilla es utilizar la clase [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) para hacerlo.

El siguiente ejemplo de código muestra cómo agregar un encabezado y un pie de página para las páginas del documento:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "create-header-footer.cs" >}}

## Especificar opciones de encabezado o pie de página

Cuando agrega un encabezado o pie de página a un documento, puede configurar algunas propiedades avanzadas. Aspose.Words proporciona a los usuarios clases [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) y [HeaderFooterCollection](https://reference.aspose.com/words/net/aspose.words/headerfootercollection/), así como enumeración [HeaderFooterType](https://reference.aspose.com/words/net/aspose.words/headerfootertype/) que les brinda más control sobre el proceso de personalización del encabezado y pie de página.

### Especificar tipo de encabezado o pie de página

Puede especificar tres tipos de encabezado diferentes y tres tipos de pie de página diferentes para un documento:
1. Encabezado y/o pie de página de la primera página
2. Encabezado y/o pie de página para páginas pares
3. Encabezado y/o pie de página para páginas impares

El siguiente ejemplo de código muestra cómo agregar un encabezado para páginas impares de documentos:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "header-footer-type.cs" >}}

### Especificar si se mostrarán diferentes encabezados o pies de página para la primera página

Como se dijo anteriormente, también puedes establecer un encabezado o pie de página diferente para la primera página. Para hacer esto, debe configurar el indicador [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/net/aspose.words/pagesetup/differentfirstpageheaderfooter/) en `true` y luego especificar el valor **HeaderFirst** o **FooterFirst**.

El siguiente ejemplo de código muestra cómo configurar el encabezado solo para la primera página:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "different-first-page.cs" >}}

### Especificar si se deben mostrar diferentes encabezados o pies de página para páginas pares o impares

A continuación, querrás establecer diferentes encabezados o pies de página para las páginas pares e impares de un documento. Para hacer esto, debe configurar el indicador [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/net/aspose.words/pagesetup/oddandevenpagesheaderfooter/) en `true` y luego especificar los valores **HeaderPrimary** y **HeaderEven**, o **FooterPrimary** y **FooterEven**.

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "odd-even-pages.cs" >}}

### Inserte una imagen absolutamente posicionada en el encabezado

Para colocar una imagen en un encabezado o pie de página, utilice el tipo de encabezado **HeaderPrimary** o el tipo de pie de página **FooterPrimary** y el método [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/).

El siguiente ejemplo de código muestra cómo agregar una imagen a un encabezado:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "insert-image.cs" >}}

### Establecer propiedades de fuente y párrafo para texto de encabezado o pie de página

Con Aspose.Words puedes configurar las propiedades de fuente y párrafo, usar el tipo de encabezado **HeaderPrimary** o el tipo de pie de página **FooterPrimary**, así como métodos y propiedades para trabajar con las fuentes y párrafos que usas para el cuerpo del documento.

El siguiente ejemplo de código muestra cómo configurar el texto del encabezado en Arial, negrita, tamaño 14 y alineación central:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "font-props.cs" >}}

### Insertar números de página en el encabezado o pie de página

Si es necesario, puede agregar números de página al encabezado o pie de página. Para hacer esto, use el tipo de encabezado **HeaderPrimary** o el tipo de pie de página **FooterPrimary** y el método [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) para agregar el campo requerido.

El siguiente ejemplo de código muestra cómo agregar números de página al pie de página de la derecha:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "page-numbers.cs" >}}

### Utilice encabezados o pies de página definidos en la sección anterior

Si necesita copiar el encabezado o pie de página de la sección anterior, también puede hacerlo.

El siguiente ejemplo de código muestra cómo copiar el encabezado o pie de página de la sección anterior:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "copy-headers-footers-from-previous-section.cs" >}}

### Garantice la apariencia del encabezado o pie de página cuando utilice diferentes orientaciones y tamaños de página

Aspose.Words le permite proporcionar la apariencia de un encabezado o pie de página cuando utiliza diferentes orientaciones y tamaños de página.

El siguiente ejemplo muestra cómo hacer esto:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

## Cómo eliminar solo encabezados o solo pies de página

Cada sección de un documento puede tener hasta tres encabezados y hasta tres pies de página (para las páginas primera, par e impar). Si desea eliminar todos los encabezados o todos los pies de página de un documento, debe recorrer todas las secciones y eliminar cada nodo de encabezado o pie de página correspondiente.

El siguiente ejemplo de código muestra cómo eliminar todos los pies de página de todas las secciones pero dejar los encabezados intactos. Puedes eliminar sólo los encabezados de forma similar:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "remove-footers.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Header%20and%20footer%20types.docx).

{{% /alert %}}