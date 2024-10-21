---
title: Conversión a Formato de página fija en C++
second_title: Aspose.Words para C++
articleTitle: Conversión a Formato de página fija
linktitle: Conversión a Formato de página fija
description: "Guarde documentos en formatos PDF, XPS, HTML, XAML, PostScript y PCL."
type: docs
weight: 10
url: /es/cpp/converting-to-fixed-page-format/
---

Aspose.Words implementa su propio motor de diseño de página. Antes de profundizar en sus especificaciones, vale la pena discutir primero el documento a un alto nivel.

## ¿Qué Es un Documento?

Al pensar en un documento, los usuarios suelen imaginar una serie de hojas de papel que contienen palabras, imágenes, tablas y gráficos. Los documentos pueden ser de varios tipos, como texto, hojas de cálculo, diapositivas, dibujos CAD, diagramas de flujo y, por lo tanto, pueden tener diseños esencialmente diferentes. La mayoría de las aplicaciones permiten enviar documentos a una impresora; aquí es cuando un usuario puede ver realmente la apariencia final prevista del documento.

## Visualización de un Documento en Varias Aplicaciones

Varias aplicaciones de visualización o publicación de documentos permiten a los usuarios abrir (Adobe Acrobat, XPS Viewer) y, a veces, editar (Adobe InDesign) documentos de formatos específicos. Estas aplicaciones suelen producir los denominados documentos en formato de "página fija". Dicho formato de documento describe con precisión dónde se coloca el contenido de un documento en cada página. Internamente, el formato PDF o XPS contiene una descripción de cada página, así como instrucciones de dibujo, especificando el diseño del contenido en la página. Esto es similar a los formatos de imagen, que describen dónde se muestra el contenido, ya sea en forma de trama o vector.

Por el contrario, algunas aplicaciones de edición de texto no admiten la visualización de las páginas de un documento. Por ejemplo, Microsoft Notepad admite muy pocas funciones además de mostrar, editar e imprimir texto. La observación importante aquí es que tales aplicaciones no pueden mostrar páginas del documento ni decirle al usuario cuántas de ellas se imprimirían, solo permitiendo ver el contenido del documento. El documento se puede guardar en formato de texto sin formato y se puede abrir con muchas otras aplicaciones. Usando una aplicación que permite ver el contenido binario de un archivo arbitrario, se puede ver lo que está almacenado en el archivo del documento: es solo texto sin formato, no hay nada más en él.

Las aplicaciones de edición de texto un poco más sofisticadas, como Microsoft WordPad, guardan el documento en formato de texto enriquecido (RTF), que admite más funciones de formato, como inserción de imágenes, formato de caracteres, márgenes de párrafo y espaciado. Sin embargo, el formato RTF también contiene solo el contenido del documento, sin información sobre las páginas.

Microsoft Word es la aplicación de edición de texto más avanzada en Windows en la actualidad. Formatea los archivos en el formato DOCX, que describe el contenido del documento de manera flexible y extensa, lo que permite a los usuarios especificar el tamaño de la página, la orientación de una sección del documento y, al ser una aplicación WYSIWYG, incluso muestra las páginas del documento en la pantalla. Sin embargo, todavía no hay información sobre cómo se muestra el contenido del documento en las páginas disponibles en el archivo del documento. El archivo de documento solo describe el contenido en sí mismo y la relación de los objetos de documento entre sí, junto con algunas restricciones geométricas. Como resultado, antes de mostrar un documento, Microsoft Word calcula esa información por sí mismo. Aquí es donde entra en juego un diseño de página.

## Véase También

* [Qué Es un Diseño de Página](/words/cpp/what-is-a-page-layout/)
* [Crear un Diseño de Página](/words/cpp/creating-a-page-layout/)
* [Guardar un documento en Formato de página fija](/words/cpp/saving-a-document-to-fixed-page-format/)
* [Especificar Opciones de Diseño](/words/cpp/specify-layout-options/)