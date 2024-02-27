---
title: Opciones y apariencia del documento de Word.
second_title: Aspose.Words para .NET
articleTitle: Trabajar con opciones y apariencia de documentos de Word
linktitle: Trabajar con opciones y apariencia de documentos de Word
description: "Controle la apariencia de los documentos de Word teniendo en cuenta la diferencia entre las distintas versiones de Microsoft Word utilizando C#."
type: docs
weight: 40
url: /es/net/work-with-word-document-options-and-appearance/
---

A veces es posible que necesite cambiar la apariencia de un documento, por ejemplo, establecer preferencias de idioma o el número de líneas por página. Aspose.Words brinda la capacidad de controlar cómo se mostrará el documento, así como algunas opciones adicionales. Este artículo describe tales posibilidades.

## Establecer opciones de visualización de documentos

Puede controlar cómo se mostrará un documento en Microsoft Word utilizando la clase [ViewOptions](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/). Por ejemplo, puede establecer un valor de zoom del documento utilizando la propiedad [ZoomPercent](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/zoompercent/) o el modo de visualización utilizando la propiedad [ViewType](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/viewtype/).

El siguiente ejemplo de código muestra cómo garantizar que un documento se muestre al 50% cuando se abre en Microsoft Word:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetViewOption-SetViewOption.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla para este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 no escribe ningún factor de zoom en un documento y ya no establece el zoom predeterminado a partir del valor escrito en el documento; en cambio, parece utilizar el factor de zoom del último documento abierto.

{{% /alert %}}

## Establecer opciones de visualización de página

Si desea establecer el número de caracteres por línea, utilice la propiedad [CharactersPerLine](https://reference.aspose.com/words/net/aspose.words/pagesetup/charactersperline/). También puede establecer el número de líneas por página para un documento de Word; use la propiedad [LinesPerPage](https://reference.aspose.com/words/net/aspose.words/pagesetup/linesperpage/) para obtener o establecer el número de líneas por página en la cuadrícula del documento.

{{% alert color="primary" %}}

En Microsoft Word, puede configurar los mismos parámetros usando la pestaña "Cuadrícula de documentos" en el cuadro de diálogo "Configurar página" solo cuando está instalado el soporte para idiomas asiáticos.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo establecer el número de caracteres por línea y el número de líneas por página para un documento Microsoft Word:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cs" >}}

## Establecer preferencias de idioma

La visualización de un documento en Microsoft Word depende de los idiomas configurados como predeterminados para este documento. Si no se establecen idiomas predeterminados, Microsoft Word toma información del cuadro de diálogo "Establecer preferencias de idioma de Office", que, por ejemplo, se puede encontrar en "Archivo → Opciones → Idioma" en Microsoft Word 2019.

Con Aspose.Words, también puedes configurar las preferencias de idioma usando la clase [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/). También tenga en cuenta que para la visualización correcta de su documento es necesario configurar la versión Microsoft de Word con la que debe coincidir el proceso de carga del documento; esto se puede hacer usando la propiedad [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/).

{{% alert color="primary" %}}

Si su documento generado Aspose.Words no tiene el aspecto esperado, verifique los valores **LanguagePreferences** y **MswVersion** y ajústelos si es necesario para que coincidan con la configuración de su versión Microsoft Word.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar japonés a los idiomas de edición:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cs" >}}

El siguiente ejemplo de código muestra cómo configurar el ruso como idioma de edición predeterminado:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cs" >}}

## Optimizar un documento para una versión particular de Word

El método [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/) permite optimizar el contenido del documento, así como el comportamiento Aspose.Words predeterminado para una versión particular de Microsoft Word. Puede utilizar este método para evitar que Microsoft Word muestre la cinta "Modo de compatibilidad" al cargar el documento. Tenga en cuenta que es posible que también deba establecer la propiedad `Compliance` en Iso29500_2008_Transitional o superior.

El siguiente ejemplo de código muestra cómo optimizar el contenido del documento para Microsoft Word 2016:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cs" >}}
