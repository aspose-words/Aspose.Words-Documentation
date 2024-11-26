---
title: Opciones y Apariencia de Documentos de Word
second_title: Aspose.Words por Java
articleTitle: Trabajar con Opciones y Apariencia de Documentos de Word
linktitle: Trabajar con Opciones y Apariencia de Documentos de Word
description: "Controle la apariencia de los documentos de Word teniendo en cuenta la diferencia entre varias versiones Microsoft Word usando Java."
type: docs
weight: 40
url: /es/java/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

A veces, es posible que deba cambiar la apariencia de un documento, por ejemplo, establecer preferencias de idioma o el número de líneas por página.Aspose.Words proporciona la capacidad de controlar cómo se mostrará el documento, así como algunas opciones adicionales. Este artículo describe tales posibilidades.

## Establecer Opciones de Visualización de Documentos

Puede controlar cómo se mostrará un documento en Microsoft Word utilizando la clase [ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/). Por ejemplo, puede establecer un valor de zoom de documento utilizando la propiedad [ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent), o el modo de visualización utilizando la propiedad [ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType).

El siguiente ejemplo de código muestra cómo asegurarse de que un documento se muestre al 50% cuando se abre en Microsoft Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla para este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 no escribe ningún factor de zoom en un documento y ya no establece el zoom predeterminado a partir del valor escrito en el documento, sino que parece usar el factor de zoom del último documento abierto.

{{% /alert %}}

## Establecer Opciones de Visualización de Página

Si desea establecer el número de caracteres por línea, utilice la propiedad [CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine). También puede establecer el número de líneas por página para un documento de Word; use la propiedad [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage) para obtener o establecer el número de líneas por página en la cuadrícula del documento.

{{% alert color="primary" %}}

En Microsoft Word, puede establecer los mismos parámetros utilizando la pestaña "Cuadrícula de documentos" en el cuadro de diálogo "Configurar página" solo cuando esté instalado el soporte de idioma asiático.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo establecer el número de caracteres por línea y el número de líneas por página para un documento Microsoft Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## Establecer Preferencias de Idioma

Mostrar un documento en Microsoft Word depende de los idiomas predeterminados para este documento. Si no se establecen idiomas en los valores predeterminados, Microsoft Word toma información del cuadro de diálogo" Establecer preferencias de idioma de Office", que, por ejemplo, se puede encontrar en "Archivo → Opciones → Idioma" en Microsoft Word 2019.

Con Aspose.Words, también puede configurar las preferencias de idioma utilizando la clase [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/). También tenga en cuenta que para la visualización correcta de su documento es necesario establecer la versión Microsoft Word que debe coincidir con el proceso de carga del documento; esto se puede hacer usando la propiedad [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion).

{{% alert color="primary" %}}

Si el documento generado Aspose.Words no tiene el aspecto esperado, verifique los valores **LanguagePreferences** y **MswVersion** y ajústelos si es necesario para que coincidan con la configuración de su versión Microsoft Word.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar japonés a los idiomas de edición:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

El siguiente ejemplo de código muestra cómo configurar el ruso como idioma de edición predeterminado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## Optimizar un Documento para una versión de Word en Particular

El método [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) permite optimizar el contenido del documento, así como el comportamiento predeterminado de Aspose.Words para una versión particular de Microsoft Word. Puede utilizar este método para evitar que Microsoft Word muestre la cinta de opciones "Modo de compatibilidad" al cargar el documento. Tenga en cuenta que es posible que también deba establecer la propiedad `Compliance` en Iso29500_2008_Transitional o superior.

El siguiente ejemplo de código muestra cómo optimizar el contenido del documento para Microsoft Word 2016:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
