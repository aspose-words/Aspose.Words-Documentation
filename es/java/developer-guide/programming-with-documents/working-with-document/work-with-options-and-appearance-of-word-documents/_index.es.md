---
title: Opciones y apariencia de documentos de palabras
second_title: Aspose.Words para Java
articleTitle: Trabajar con Opciones y aparición de documentos de palabras
linktitle: Trabajar con Opciones y aparición de documentos de palabras
description: "Controlar la apariencia de documentos de Word teniendo en cuenta la diferencia entre varios Microsoft Word versiones usando Java."
type: docs
weight: 40
url: /es/java/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

A veces es posible que necesite cambiar la apariencia de un documento, por ejemplo, establecer preferencias de idioma o el número de líneas por página.Aspose.Words proporciona la capacidad de controlar cómo se mostrará el documento, así como algunas opciones adicionales. Este artículo describe tales posibilidades.

## Configurar opciones de visualización de documentos

Puede controlar cómo se mostrará un documento en Microsoft Word usando el [ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/) clase. Por ejemplo, puede establecer un valor de zoom de documento utilizando el [ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent) propiedad, o el modo de vista usando el [ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType) propiedad.

El siguiente ejemplo de código muestra cómo asegurar que un documento se muestre en un 50% cuando se abra en Microsoft Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla para este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 no escribe ningún factor de zoom a un documento y ya no establece el zoom predeterminado del valor escrito al documento, en cambio, parece utilizar el factor de zoom del último documento abierto.

{{% /alert %}}

## Opciones de visualización de páginas

Si desea establecer el número de caracteres por línea, utilice el [CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine) propiedad. También puede establecer el número de líneas por página para un documento de Word – utilizar el [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage) propiedad para obtener o establecer el número de líneas por página en la red de documentos.

{{% alert color="primary" %}}

In Microsoft Word, puede configurar los mismos parámetros utilizando la pestaña "Document Grid" en el cuadro de diálogo "Page Setup" sólo cuando se instala el soporte de idioma asiático.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo establecer el número de caracteres por línea y el número de líneas por página para un Microsoft Word documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## Establecer preferencias lingüísticas

Mostrando un documento Microsoft Word depende de qué idiomas se establecen como predeterminados para este documento. Si no se establecen idiomas por defecto, Microsoft Word toma información del cuadro de diálogo "Set Office Language Preferences", que, por ejemplo, se puede encontrar en "File → Opciones → Idioma" en Microsoft Word 2019.

Con Aspose.Words, también puede configurar las preferencias del lenguaje usando el [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/) clase. También tenga en cuenta que para la correcta visualización de su documento es necesario establecer el Microsoft Word versión que el proceso de carga de documentos debe coincidir – esto se puede hacer utilizando [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) propiedad.

{{% alert color="primary" %}}

Si tu Aspose.Words documento generado no parece esperado, comprobar el **LanguagePreferences** y **MswVersion** valores y ajustarlos si es necesario para que coincida con la configuración de su Microsoft Word versión.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar japonés a los idiomas de edición:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

El siguiente ejemplo de código muestra cómo establecer ruso como el idioma de edición predeterminado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## Optimize a Document for a Particular Versión de Word

El [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) método permite optimizar el contenido del documento, así como por defecto Aspose.Words comportamiento para una versión particular Microsoft Word. Puede utilizar este método para prevenir Microsoft Word de mostrar la cinta "Modo de compatibilidad" sobre la carga de documentos. Tenga en cuenta que también puede necesitar establecer el `Compliance` propiedad a Iso29500_2008_Transicional o superior.

El siguiente ejemplo de código muestra cómo optimizar el contenido de documento Microsoft Word 2016:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
