---
title: Conversión a PDF/A y PDF/UA
second_title: Aspose.Words para C++
articleTitle: Conozca las características de la conversión a PDF/A y PDF/UA
linktitle: Conozca las características de la conversión a PDF/A y PDF/UA
description: "Convertir a PDF/A-1, PDF/A-2, PDF/A-4 y PDF/UA usando C++. Elija el mejor estándar PDF para convertir un documento usando С++."
type: docs
weight: 35
url: /es/cpp/learn-features-of-conversion-to-pdf-a-pdf-ua/
---

PDF es un formato de página fijo que es muy popular entre los usuarios y es ampliamente compatible con varias aplicaciones, ya que un documento PDF tiene el mismo aspecto en cualquier dispositivo. Por esta razón, convertir a PDF es una característica importante de Aspose.Words.

PDF es un formato complejo en sí mismo, ya que tiene una estructura de archivo específica, un modelo gráfico, incrustación de fuentes y algunas funcionalidades de salida complejas, como etiquetas de estructura de documentos, cifrado, firmas digitales y formularios editables. Además, convertir un documento a PDF requiere varias etapas de cálculo, que son complejas y requieren mucho tiempo.

En esta sección, consideraremos los principales problemas que pueden surgir al trabajar con documentos en varios estándares PDF y describiremos las opciones para resolverlos.

## Que PDF Estándar Aspose.Words Admite

Aspose.Words ahora permite a los usuarios trabajar con formatos PDF/A-1, PDF/A-2 y PDF/A-4, así como PDF/UA-1:

* PDF/A-1 tiene serias limitaciones, como la transparencia, y algunas opciones de compresión están prohibidas
* PDF/A-2 elimina algunas de las limitaciones de PDF/A-1, como la compatibilidad con efectos de transparencia y capas o la incrustación de fuentes OpenType
* PDF/A-4 asume niveles de conformidad revisados: la conformidad regular PDF/A-4 es equivalente a la conformidad de nivel U de las versiones anteriores, y se elimina la conformidad de nivel A
* PDF/UA-1 el contenido debe etiquetarse y estandarizarse de acuerdo con ISO 32000-1: 2008

PDF/A es una versión estandarizada de ISO de PDF destinada a su uso en el archivo y almacenamiento a largo plazo de documentos electrónicos. Al mismo tiempo, PDF/UA es otra versión estandarizada de ISO de PDF diseñada para garantizar la accesibilidad de las personas con discapacidades que usan tecnología de asistencia. Para especificar el nivel de cumplimiento de los estándares PDF, utilice la propiedad [Compliance](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/). Debido a las condiciones de almacenamiento, PDF/A document debe incrustar todas las fuentes y deshabilitar el cifrado, mientras que PDF/UA solo debe incrustar todas las fuentes.

En esta sección, analizaremos más de cerca el trabajo con documentos PDF/A o PDF/UA-1.

## Relevante ISO para PDF Estándares

Para obtener más información sobre los diferentes estándares PDF, consulte los siguientes ISOs:

- PDF 1.7 = ISO-32000-1: 2008
- PDF 2.0 = ISO-32000-2: 2020
- PDF/A-1 = ISO-19005-1: 2005
- PDF/A-2 = ISO-19005-2: 2011
- PDF/A-4 = ISO-19005-4: 2020
- PDF/UA-1 = ISO-14289: 2014

## Véase También

* [Cómo editar etiquetas de estructura de documentos en Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [Cómo verificar o editar el idioma del texto en Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [Cómo cambiar el idioma del texto en Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [Cómo agregar texto alternativo a una forma, imagen, gráfico, SmartArt gráfico u otro objeto en Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [Cómo agregar texto alternativo e información complementaria a las etiquetas](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (o lea la misma información en el [Guía del Usuario de Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [Cómo configurar la entrada ActualText para texto](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html), la sección" Agregar texto Real para un Término Abreviado, Fórmula o Símbolo que No sea Unicode"
* [Asignación Unicode para fuentes simbólicas Windows comunes](http://www.alanwood.net/demos/webdings.html)

