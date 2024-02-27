---
title: Conversión a PDF/A y PDF/UA
second_title: Aspose.Words para Python via .NET
articleTitle: Conozca las funciones de conversión a PDF/A y PDF/UA
linktitle: Conozca las funciones de conversión a PDF/A y PDF/UA
description: "Convierta a PDF/A-1, PDF/A-2, PDF/A-4 y PDF/UA usando Python. Elija el mejor estándar de PDF para convertir un documento usando Python via .NET."
type: docs
weight: 25
url: /es/python-net/learn-features-of-conversion-to-pdf-a/
---

PDF es un formato de página fija que es muy popular entre los usuarios y es ampliamente compatible con varias aplicaciones, ya que un documento PDF tiene el mismo aspecto en cualquier dispositivo. Por este motivo, la conversión a PDF es una característica importante de Aspose.Words.

PDF es un formato complejo en sí mismo, ya que tiene una estructura de archivo específica, un modelo gráfico, incrustación de fuentes y algunas funciones de salida complejas, como etiquetas de estructura de documentos, cifrado, firmas digitales y formularios editables. Además, convertir un documento a PDF requiere varias etapas de cálculo, que son complejas y requieren mucho tiempo.

En esta sección, consideraremos los principales problemas que pueden surgir al trabajar con documentos en varios estándares PDF y describiremos opciones para resolverlos.

## ¿Qué estándar PDF admite Aspose.Words?

Aspose.Words ahora permite a los usuarios trabajar con formatos PDF/A-1, PDF/A-2 y PDF/A-4, así como con PDF/UA-1:

- PDF/A-1 tiene serias limitaciones como la transparencia y algunas opciones de compresión están prohibidas
- PDF/A-2 elimina algunas de las limitaciones de PDF/A-1, como la compatibilidad con transparencia y efectos de capa o la incrustación de fuentes OpenType.
- PDF/A-4 asume niveles de conformidad revisados: la conformidad de PDF/A-4 normal es equivalente a la conformidad de nivel U de las versiones anteriores y se elimina la conformidad de nivel A.
- El contenido PDF/UA-1 debe etiquetarse y estandarizarse según ISO 32000-1: 2008

PDF/A es una versión de PDF estandarizada por ISO destinada a su uso en el archivo y almacenamiento a largo plazo de documentos electrónicos. Al mismo tiempo, PDF/UA es otra versión ISO estandarizada de PDF diseñada para garantizar la accesibilidad para personas con discapacidades que utilizan tecnología de asistencia. Para especificar el nivel de cumplimiento de los estándares PDF, utilice la propiedad [PdfSaveOptions.compliance](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/compliance/). Debido a las condiciones de almacenamiento, el documento PDF/A debe incrustar todas las fuentes y desactivar el cifrado, mientras que PDF/UA solo debe incrustar todas las fuentes.

En esta sección, veremos más de cerca cómo trabajar con documentos PDF/A o PDF/UA-1.

## ISO relevante para estándares PDF

Para obtener más información sobre los diferentes estándares de PDF, consulte los siguientes ISO:

- PDF 1.7 = ISO-32000-1: 2008
- PDF 2.0 = ISO-32000-2: 2020
- PDF/A-1 = ISO-19005-1: 2005
- PDF/A-2 = ISO-19005-2: 2011
- PDF/A-4 = ISO-19005-4: 2020
- PDF/UA-1 = ISO-14289: 2014

## Ver también

* [Cómo editar etiquetas de estructura de documentos en Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [Cómo verificar o editar el idioma del texto en Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [Cómo cambiar el idioma del texto en Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [Cómo agregar texto alternativo a una forma, imagen, gráfico, gráfico SmartArt u otro objeto en Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [Cómo agregar texto alternativo e información complementaria a las etiquetas](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (o leer la misma información en el ["Guía del usuario Adobe Acrobat"](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [Cómo configurar la entrada ActualText para texto](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html), la sección "Agregar texto real para un término abreviado, fórmula o símbolo no Unicode"
* [Mapeo Unicode para fuentes simbólicas Windows comunes](http://www.alanwood.net/demos/webdings.html)