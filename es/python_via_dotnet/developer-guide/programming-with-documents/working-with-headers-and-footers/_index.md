---
title: Trabajar con encabezados y pies de página
second_title: Aspose.Words para Python via .NET
articleTitle: Trabajar con encabezados y pies de página
linktitle: Trabajar con encabezados y pies de página
description: "Cree, administre y elimine encabezados y pies de página en un documento usando Python."
type: docs
weight: 150
url: /es/python-net/working-with-headers-and-footers/
---

Aspose.Words permite a los usuarios trabajar con encabezados y pies de página en un documento. Un encabezado es texto que se coloca en la parte superior de una página y un pie de página es texto en la parte inferior de una página. Normalmente, estas áreas se utilizan para insertar información que debe repetirse en todas o algunas páginas del documento, como números de página, fecha de creación, información de la empresa, etc.

## Cree encabezados o pies de página usando DocumentBuilder

Si desea agregar un encabezado o pie de página al documento mediante programación, la forma más sencilla es utilizar la clase [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) para hacerlo.

El siguiente ejemplo de código muestra cómo agregar un encabezado y un pie de página para las páginas del documento:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "create-header-footer.py" >}}

## Especificar opciones de encabezado o pie de página

Cuando agrega un encabezado o pie de página a un documento, puede configurar algunas propiedades avanzadas. Aspose.Words proporciona a los usuarios clases [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) y [HeaderFooterCollection](https://reference.aspose.com/words/python-net/aspose.words/headerfootercollection/), así como enumeración [HeaderFooterType](https://reference.aspose.com/words/python-net/aspose.words/headerfootertype/) que les brinda más control sobre el proceso de personalización del encabezado y pie de página.

### Especificar tipo de encabezado o pie de página

Puede especificar tres tipos de encabezado diferentes y tres tipos de pie de página diferentes para un documento:

1. Encabezado y/o pie de página de la primera página
2. Encabezado y/o pie de página para páginas pares
3. Encabezado y/o pie de página para páginas impares

El siguiente ejemplo de código muestra cómo agregar un encabezado para páginas impares de documentos:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "header-footer-type.py" >}}

### Especificar si se mostrarán diferentes encabezados o pies de página para la primera página

Como se dijo anteriormente, también puedes establecer un encabezado o pie de página diferente para la primera página. Para hacer esto, debe configurar el indicador [different_first_page_header_footer](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/different_first_page_header_footer/) en `true` y luego especificar el valor **HeaderFirst** o **FooterFirst**.

El siguiente ejemplo de código muestra cómo configurar el encabezado solo para la primera página:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "different-first-page.py" >}}

### Especificar si se deben mostrar diferentes encabezados o pies de página para páginas pares o impares

A continuación, querrás establecer diferentes encabezados o pies de página para las páginas pares e impares de un documento. Para hacer esto, debe configurar el indicador [odd_and_even_pages_header_footer](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/odd_and_even_pages_header_footer/) en `true` y luego especificar los valores **HeaderPrimary** y **HeaderEven**, o **FooterPrimary** y **FooterEven**.

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "odd-even-pages.py" >}}

### Inserte una imagen absolutamente posicionada en el encabezado

Para colocar una imagen en un encabezado o pie de página, utilice el tipo de encabezado **HeaderPrimary** o el tipo de pie de página **FooterPrimary** y el método [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/).

El siguiente ejemplo de código muestra cómo agregar una imagen a un encabezado:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "insert-image.py" >}}

### Establecer propiedades de fuente y párrafo para texto de encabezado o pie de página

Con Aspose.Words puedes configurar las propiedades de fuente y párrafo, usar el tipo de encabezado **HeaderPrimary** o el tipo de pie de página **FooterPrimary**, así como métodos y propiedades para trabajar con las fuentes y párrafos que usas para el cuerpo del documento.

El siguiente ejemplo de código muestra cómo configurar el texto del encabezado en Arial, negrita, tamaño 14 y alineación central:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "font-props.py" >}}

### Insertar números de página en el encabezado o pie de página

Si es necesario, puede agregar números de página al encabezado o pie de página. Para hacer esto, use el tipo de encabezado **HeaderPrimary** o el tipo de pie de página **FooterPrimary** y el método [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) para agregar el campo requerido.

El siguiente ejemplo de código muestra cómo agregar números de página al pie de página de la derecha:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "page-numbers.py" >}}

### Utilice encabezados o pies de página definidos en la sección anterior

Si necesita copiar el encabezado o pie de página de la sección anterior, también puede hacerlo.

El siguiente ejemplo de código muestra cómo copiar el encabezado o pie de página de la sección anterior:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "copy-headers-footers-from-previous-section.py" >}}

### Garantice la apariencia del encabezado o pie de página cuando utilice diferentes orientaciones y tamaños de página

Aspose.Words le permite proporcionar la apariencia de un encabezado o pie de página cuando utiliza diferentes orientaciones y tamaños de página.

El siguiente ejemplo muestra cómo hacer esto:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "link-to-previous-header-footer.py" >}}

## Cómo eliminar solo encabezados o solo pies de página

Cada sección de un documento puede tener hasta tres encabezados y hasta tres pies de página (para las páginas primera, par e impar). Si desea eliminar todos los encabezados o todos los pies de página de un documento, debe recorrer todas las secciones y eliminar cada nodo de encabezado o pie de página correspondiente.

El siguiente ejemplo de código muestra cómo eliminar todos los pies de página de todas las secciones pero dejar los encabezados intactos. Puedes eliminar sólo los encabezados de forma similar:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "remove-footers.py" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Header%20and%20footer%20types.docx).

{{% /alert %}}