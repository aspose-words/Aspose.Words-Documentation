---
title: Opciones y apariencia del documento de Word.
second_title: Aspose.Words para Python
articleTitle: Trabajar con opciones y apariencia de documentos de Word
linktitle: Trabajar con opciones y apariencia de documentos de Word
description: "Controle la apariencia de los documentos de Word teniendo en cuenta la diferencia entre varias versiones de Microsoft Word usando Python."
type: docs
weight: 40
url: /es/python-net/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

A veces es posible que necesite cambiar la apariencia de un documento, por ejemplo, establecer preferencias de idioma o el número de líneas por página. Aspose.Words brinda la capacidad de controlar cómo se mostrará el documento, así como algunas opciones adicionales. Este artículo describe tales posibilidades.

## Establecer opciones de visualización de documentos

Puede controlar cómo se mostrará un documento en Microsoft Word utilizando la clase [ViewOptions](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/). Por ejemplo, puede establecer un valor de zoom del documento utilizando la propiedad [zoom_percent](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/zoom_percent/) o el modo de visualización utilizando la propiedad [view_type](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/view_type/).

El siguiente ejemplo de código muestra cómo garantizar que un documento se muestre al 50% cuando se abre en Microsoft Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetViewOption.py" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla para este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 no escribe ningún factor de zoom en un documento y ya no establece el zoom predeterminado a partir del valor escrito en el documento; en cambio, parece utilizar el factor de zoom del último documento abierto.

{{% /alert %}}

## Establecer opciones de visualización de página

Si desea establecer el número de caracteres por línea, utilice la propiedad [characters_per_line](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/characters_per_line/). También puede establecer el número de líneas por página para un documento de Word; use la propiedad [lines_per_page](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/lines_per_page/) para obtener o establecer el número de líneas por página en la cuadrícula del documento.

{{% alert color="primary" %}}

En Microsoft Word, puede configurar los mismos parámetros usando la pestaña "Cuadrícula de documentos" en el cuadro de diálogo "Configurar página" solo cuando está instalado el soporte para idiomas asiáticos.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo establecer el número de caracteres por línea y el número de líneas por página para un documento Microsoft Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-DocumentPageSetup.py" >}}

## Establecer preferencias de idioma

La visualización de un documento en Microsoft Word depende de los idiomas configurados como predeterminados para este documento. Si no hay ningún idioma configurado de forma predeterminada, Microsoft Word toma información del cuadro de diálogo "Establecer preferencias de idioma de Office", que, por ejemplo, se puede encontrar en "Archivo → Opciones → Idioma" en Microsoft Word 2019.

Con Aspose.Words, también puedes configurar las preferencias de idioma usando la clase [LanguagePreferences](https://reference.aspose.com/words/python-net/aspose.words.loading/languagepreferences/). También tenga en cuenta que para la visualización correcta de su documento es necesario configurar la versión Microsoft de Word con la que debe coincidir el proceso de carga del documento; esto se puede hacer usando la propiedad [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/).

{{% alert color="primary" %}}

Si su documento generado Aspose.Words no tiene el aspecto esperado, verifique los valores [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) y [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) y ajústelos si es necesario para que coincidan con la configuración de su versión Microsoft Word.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar japonés a los idiomas de edición:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

El siguiente ejemplo de código muestra cómo configurar el ruso como idioma de edición predeterminado:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetRussianAsDefaultEditingLanguage.py" >}}

## Optimizar un documento para una versión particular de Word

El método [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/) permite optimizar el contenido del documento, así como el comportamiento Aspose.Words predeterminado para una versión particular de Microsoft Word. Puede utilizar este método para evitar que Microsoft Word muestre la cinta "Modo de compatibilidad" al cargar el documento. Tenga en cuenta que es posible que también necesite configurar la propiedad [compliance](https://reference.aspose.com/words/python-net/aspose.words/document/compliance/) en [ISO29500_2008_TRANSITIONAL](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlcompliance/#iso29500_2008_transitional) o superior.

El siguiente ejemplo de código muestra cómo optimizar el contenido del documento para Microsoft Word 2016:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-OptimizeForMsWord.py" >}}
