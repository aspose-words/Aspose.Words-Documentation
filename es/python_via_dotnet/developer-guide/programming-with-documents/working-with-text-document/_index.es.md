---
title: Trabajar con documento de texto
second_title: Aspose.Words para Python via .NET
articleTitle: Trabajar con documento de texto
linktitle: Trabajar con documento de texto
description: "Trabajar con un documento de texto y modificar sus objetos usando Python."
type: docs
weight: 430
url: /es/python-net/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

En este artículo aprenderemos qué opciones pueden resultar útiles para trabajar con un documento de texto a través de Aspose.Words. Tenga en cuenta que esta no es una lista completa de las opciones disponibles, sino solo un ejemplo de cómo trabajar con algunas de ellas.

## Agregar marcas bidireccionales

Puede utilizar la propiedad [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) para especificar si se agregan marcas bidireccionales antes de cada ejecución de BiDi al exportar en formato de texto sin formato. Aspose.Words inserta el carácter Unicode 'MARCA DERECHA A IZQUIERDA' (U+200F) antes de cada [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) bidireccional en el texto. Esta opción corresponde a la opción "Agregar marcas bidireccionales" en el cuadro de diálogo Conversión de archivos de MS Word cuando exporta a un formato de texto sin formato. Tenga en cuenta que aparece en el diálogo sólo si se agrega alguno de los idiomas de edición árabe o hebreo en MS Word.

El siguiente ejemplo de código muestra cómo utilizar la propiedad [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/). El valor predeterminado de esta propiedad es `False`:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-AddBidiMarks.py" >}}

## Reconocer elementos de la lista durante la carga de TXT

Aspose.Words puede importar elementos de lista de un archivo de texto como números de lista o texto sin formato en su modelo de objetos de documento. La propiedad [detect_numbering_with_whitespaces](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_numbering_with_whitespaces/) permite especificar cómo se reconocen los elementos de la lista numerados cuando se importa un documento desde formato de texto sin formato:

* Si esta opción está configurada en `True`, los espacios en blanco también se usan como delimitadores de números de lista: el algoritmo de reconocimiento de listas para numeración de estilo árabe (1., 1.1.2.) usa espacios en blanco y símbolos de punto (".").
* Si esta opción está configurada en `False`, el algoritmo de reconocimiento de listas detecta los párrafos de la lista cuando los números de la lista terminan con un punto, un corchete derecho o un símbolo de viñeta (como "•", "*", "-" u "o").

El siguiente ejemplo de código muestra cómo utilizar esta propiedad:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DetectNumberingWithWhitespaces.py" >}}

## Manejar espacios iniciales y finales durante la carga de TXT

Puede controlar la forma de manejar los espacios iniciales y finales durante la carga del archivo TXT. Los espacios iniciales podrían recortarse, conservarse o convertirse en sangrías y los espacios finales podrían recortarse o conservarse.

El siguiente ejemplo de código muestra cómo recortar los espacios iniciales y finales al importar un archivo TXT:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-HandleSpacesOptions.py" >}}

## Detectar la dirección del texto del documento

Aspose.Words proporciona la propiedad [document_direction](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/document_direction/) en la clase [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) para detectar la dirección del texto (RTL/LTR) en el documento. Esta propiedad establece u obtiene instrucciones de texto del documento proporcionadas en la enumeración [DocumentDirection](https://reference.aspose.com/words/python-net/aspose.words.loading/documentdirection/). El valor predeterminado es de izquierda a derecha.

El siguiente ejemplo de código muestra cómo detectar la dirección del texto del documento al importar un archivo TXT:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DocumentTextDirection.py" >}}

## Exportar encabezado y pie de página en TXT de salida

Si desea exportar el encabezado y el pie de página en el documento TXT de salida, puede utilizar la propiedad [export_headers_footers_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptionsbase/export_headers_footers_mode/). Esta propiedad especifica la forma en que se exportan los encabezados y pies de página al formato de texto sin formato.

El siguiente ejemplo de código muestra cómo exportar encabezados y pies de página a formato de texto sin formato:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Document.docx")

options = aw.saving.TxtSaveOptions()
options.save_format = aw.SaveFormat.TEXT

# All headers and footers are placed at the very end of the output document.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.ALL_AT_END
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_A.txt", options)

# Only primary headers and footers are exported at the beginning and end of each section.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.PRIMARY_ONLY
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_B.txt", options)

# No headers and footers are exported.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.NONE
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_C.txt", options)
{{< /highlight >}}

## Exportar sangría de lista en TXT de salida

Aspose.Words introdujo la clase [TxtListIndentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtlistindentation/) que permite especificar cómo se sangran los niveles de la lista al exportar a un formato de texto sin formato. Al trabajar con [TxtSaveOption](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/), se proporciona la propiedad [list_indentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/list_indentation/) para especificar el carácter que se usará para sangrar los niveles de la lista y contar el número que especifica cuántos caracteres usar como sangría por nivel de lista. El valor predeterminado para la propiedad de carácter es '\0', lo que indica que no hay sangría. Para la propiedad de recuento, el valor predeterminado es 0, lo que significa que no hay sangría.

### Usando el carácter de tabulación

El siguiente ejemplo de código muestra cómo exportar niveles de lista usando caracteres de tabulación:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseTabCharacterPerLevelForListIndentation.py" >}}

### Usando carácter de espacio

El siguiente ejemplo de código muestra cómo exportar niveles de lista utilizando caracteres de espacio:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseSpaceCharacterPerLevelForListIndentation.py" >}}

