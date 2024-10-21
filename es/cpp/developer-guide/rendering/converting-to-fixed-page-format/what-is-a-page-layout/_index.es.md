---
title: Qué es un diseño de página en C++
second_title: Aspose.Words para C++
articleTitle: Qué es un Diseño de Página
linktitle: Qué es un Diseño de Página
description: "Averigüemos qué es un diseño de página. Un diseño de página describe la geometría del contenido de un documento."
type: docs
weight: 5
url: /es/cpp/what-is-a-page-layout/
---

Un **document page layout** es una estructura de datos que describe dónde se encuentra un objeto en particular en las páginas de todos los objetos de documento. Además, dado que los objetos tienen propiedades que afectan su apariencia, como el tamaño de fuente, el sombreado o los efectos de dibujo, no solo necesita saber dónde está el objeto, sino también qué área (s) de la página ocupa y si se aplicará a varias páginas para que otros objetos no se superpongan en la misma área (s).

## ¿Para Qué Sirve un Diseño De Página?

Aspose.Words implementa internamente la funcionalidad de diseño de página, lo que le permite producir todos los formatos de página fijos, como PDF, XPS y varios formatos de imagen. Sin el diseño de la página, la información almacenada en el archivo de documento de página fija no estaría disponible y no se admitirían todos estos formatos.

La relación entre un documento y un diseño de página es bastante simple. Mientras que un documento describe el contenido, el diseño de página correspondiente describe la geometría de ese contenido. Tenga en cuenta que un diseño de página no puede existir sin un documento, ya que no habría contenido para calcular la geometría, pero un documento puede existir sin un diseño de página. Por ejemplo, cuando un documento DOCX se convierte en un documento RTF, normalmente no es necesario conocer la geometría, ya que ninguno de los formatos la almacena.

## Véase También

* [Crear un Diseño de Página](/words/cpp/creating-a-page-layout/)
* [Guardar un documento en Formato de página fija](/words/cpp/saving-a-document-to-fixed-page-format/)
* [Especificar Opciones de Diseño](/words/cpp/specify-layout-options/)