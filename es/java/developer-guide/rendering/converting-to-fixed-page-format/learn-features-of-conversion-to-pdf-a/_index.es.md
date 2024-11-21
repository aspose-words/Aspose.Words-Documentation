---
title: Conversión a PDF/A y PDF/UA
second_title: Aspose.Words para Java
articleTitle: Características de la conversión a PDF/A y PDF/UA
linktitle: Características de la conversión a PDF/A y PDF/UA
description: "Convertir en PDF/A-1, PDF/A-2, PDF/A-4 y PDF/UA utilizando Java. Elija el mejor estándar PDF para convertir un documento utilizando Java."
type: docs
weight: 25
url: /es/java/learn-features-of-conversion-to-pdf-a-pdf-ua/
timestamp: 2024-01-31-14-23-37
---

PDF es un formato de página fijo que es muy popular entre los usuarios y es ampliamente compatible con varias aplicaciones, ya que un documento PDF se ve igual en cualquier dispositivo. Por esta razón, convertir a PDF es una característica importante de Aspose.Words.

PDF es un formato complejo por sí mismo, ya que tiene una estructura de archivos específica, modelo gráfico, incrustación de fuentes, y una funcionalidad de salida compleja como etiquetas de estructura de documentos, cifrado, firmas digitales y formas editables. Además, la conversión de un documento a PDF requiere varias etapas de cálculo, que son complejas y consumen mucho tiempo.

En esta sección, vamos a considerar los principales problemas que pueden surgir al trabajar con documentos en diferentes estándares PDF y describir opciones para resolverlos.

## Que PDF Estándar Aspose.Words Apoyos

Aspose.Words ahora permite a los usuarios trabajar con formatos PDF/A-1, PDF/A-2 y PDF/A-4, así como PDF/UA-1:

* PDF/A-1 tiene graves limitaciones como la transparencia y algunas opciones de compresión están prohibidas
* PDF/A-2 elimina algunas de las limitaciones de PDF/A-1, como el apoyo a la transparencia y los efectos de la capa o la incorporación de fuentes de OpenType
* PDF/A-4 asume los niveles de conformancia revisados: la conformidad PDF/A-4 regular es equivalente a la conformidad U de nivel de versiones anteriores, y el nivel A conformance es eliminado
* El contenido PDF/UA-1 debe ser etiquetado y estandarizado según ISO 32000-1: 2008

PDF/A es un ISO- versión estandarizada de PDF destinada a su uso en el archivo y almacenamiento a largo plazo de documentos electrónicos. Al mismo tiempo, PDF/UA es otro ISO Versión estandarizada de PDF diseñada para garantizar la accesibilidad de las personas con discapacidad que utilizan tecnología de asistencia. Para especificar el nivel de cumplimiento de las normas PDF, utilice el [Compliance](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getCompliance) propiedad. Debido a las condiciones de almacenamiento, el documento PDF/A debe incrustar todas las fuentes y desactivar el cifrado, mientras que PDF/UA sólo debe incrustar todas las fuentes.

En esta sección, echaremos un vistazo más a trabajar con documentos PDF/A o PDF/UA-1.

## Relevant ISO para PDF Normas

Para conocer más sobre los diferentes estándares PDF, compruebe lo siguiente ISOs:

- PDF 1,7 = ISO-32000-1: 2008
- PDF 2.0 = ISO-32000-2: 2020
- PDF/A-1 = ISO-19005-1: 2005
- PDF/A-2 = ISO-19005-2: 2011
- PDF/A-4 = ISO-19005-4: 2020
- PDF/UA-1 = ISO-14289: 2014

## Vea también

* [Cómo editar etiquetas de estructura de documentos en Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [Cómo revisar o editar el idioma de texto en Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [Cómo cambiar el lenguaje de texto en Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [Cómo añadir texto alternativo a una forma, imagen, gráfico, gráfico SmartArt u otro objeto en Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [Cómo añadir texto alternativo e información complementaria a las etiquetas](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (o leer la misma información en la [Adobe Acrobat Guía del usuario](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [Cómo configurar la entrada ActualText para texto](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html), la sección "Agregar texto real para un término abstracto, fórmula o símbolo no urinado"
* [Cartografía Unicode para común Windows fuentes simbólicas](http://www.alanwood.net/demos/webdings.html)
