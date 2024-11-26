---
title: Convertir un document en HTML
second_title: Aspose.Words pour Python via .NET
articleTitle: Convertir un document en HTML, MHTML ou EPUB
linktitle: Convertir un document en HTML, MHTML ou EPUB
description: "Convertissez un document de presque n'importe quel format au format HTML ou MHTML, ainsi qu'au format EPUB à l'aide de Python. Vous pouvez également spécifier des options d'enregistrement pour gérer le document de sortie."
type: docs
weight: 20
url: /fr/python-net/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-01-27-14-07-04
---

Les documents aux formats de présentation de flux HTML et MHTML sont également très populaires et peuvent être utilisés sur n'importe quelle plateforme Web. Pour cette raison, la conversion de documents en HTML et MHTML est une fonctionnalité importante de Aspose.Words.

EPUB (abréviation de "Electronic Publication") est un format HTML couramment utilisé pour la distribution de livres électroniques. Ce format est entièrement pris en charge dans Aspose.Words pour exporter des livres électroniques compatibles avec la plupart des appareils de lecture.

## Convertir un document

Pour une conversion simple en HTML, MHTML ou EPUB, l'une des surcharges de méthodes [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) est utilisée. Vous pouvez enregistrer le document dans un fichier ou un flux et définir explicitement le format d'enregistrement du document de sortie ou le définir à partir de l'extension du nom de fichier.

L'exemple suivant montre comment convertir DOCX en HTML en spécifiant un format de sauvegarde:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(dataDir + "Test File.docx")

# Save the document into HTML.
doc.save(dataDir + "Document", aw.SaveFormat.HTML)
{{< /highlight >}}

Pour convertir un document en MHTML ou EPUB, utilisez respectivement [SaveFormat.MHTML](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#mhtml) ou [SaveFormat.EPUB](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#epub).

## Convertir un document avec des informations aller-retour

Le format HTML ne prend pas en charge de nombreuses fonctionnalités Microsoft Word, et si nous devons restaurer un modèle de document aussi proche que possible de l'original, nous devons enregistrer des informations supplémentaires dans le fichier HTML. Ces informations sont également appelées "informations aller-retour". À cette fin, Aspose.Words offre la possibilité d'exporter des informations aller-retour lors de l'enregistrement au format HTML, MHTML ou EPUB à l'aide de la propriété **export_roundtrip_information**. L'enregistrement des informations aller-retour permet de restaurer les propriétés du document telles que les onglets, les commentaires, les en-têtes et les pieds de page lors du chargement des documents des formats répertoriés dans un objet [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

La valeur par défaut est *True* pour HTML et *False* pour MHTML et EPUB:

- Lorsque *True*, les informations aller-retour sont exportées sous forme de - aw - * Propriétés CSS des éléments HTML correspondants
- Lorsque *False*, il n'y a aucune information aller-retour à afficher dans les fichiers produits

L'exemple de code suivant montre comment exporter des informations aller-retour lors de la conversion d'un document DOCX en HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Spécifier les options d'enregistrement lors de la conversion au format HTML

Aspose.Words permet de convertir un document Word en HTML en utilisant les options de sauvegarde par défaut ou personnalisées. Quelques exemples d’options de sauvegarde personnalisées sont décrits ci-dessous.

### Spécifier un dossier pour enregistrer les ressources

En utilisant Aspose.Words, nous pouvons spécifier un dossier physique dans lequel toutes les ressources, telles que les images, les polices et les CSS externes, sont enregistrées lorsqu'un document est converti en HTML. Par défaut, c'est une chaîne vide.

Spécifier la propriété [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) est le moyen le plus simple de définir le dossier dans lequel toutes les ressources doivent être écrites. Nous pouvons utiliser des propriétés individuelles, telles que [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) qui enregistre les polices dans le dossier spécifié et [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) qui enregistre les images dans un dossier spécifié. Lorsqu'un chemin relatif est spécifié, [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) et [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) font référence au dossier où se trouve l'assembly de code, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) et [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) font référence au dossier de sortie où se trouve le document HTML.

Dans cet exemple, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) spécifie le chemin relatif. Ce chemin fait référence au dossier de sortie dans lequel le document HTML est enregistré. La valeur de la propriété [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) est utilisée pour créer des URL pour toutes les ressources.

L'exemple de code suivant montre comment utiliser ces propriétés:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportResources.py" >}}

En utilisant la propriété [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/), nous pouvons également spécifier le nom du dossier utilisé pour construire les URI de toutes les ressources écrites dans un document HTML. Il s'agit du moyen le plus simple de spécifier comment les URI doivent être générés pour tous les fichiers de ressources. Les mêmes informations peuvent être spécifiées séparément pour les images et les polices via les propriétés [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) et [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/), respectivement.

Cependant, il n'existe pas de propriété individuelle pour CSS. Le comportement des propriétés [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) et [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) n'est pas modifié. Notez que la propriété [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) est utilisée à la fois pour spécifier le nom du dossier et le nom du fichier.

- [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) a une priorité inférieure aux dossiers spécifiés via [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) et [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/). Si le dossier spécifié dans le [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) n'existe pas, il sera créé automatiquement.
- [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) a une priorité inférieure à [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) et [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/). Si [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) est vide, la valeur de la propriété [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) sera utilisée pour créer les URI de ressources. Si [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) est défini sur "." (point), les URI de ressources contiendront uniquement des noms de fichiers sans spécifier de chemin.

### Exporter les ressources de polices d’encodage Base64

Aspose.Words offre la possibilité de spécifier si les ressources de polices doivent être intégrées au HTML dans les encodages Base64. Pour ce faire, utilisez la propriété [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) – il s'agit d'une extension de la propriété [export_font_resources](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_font_resources/). Par défaut, sa valeur est *False* et les polices sont écrites dans des fichiers distincts. Mais si cette option est définie sur *True*, les polices seront intégrées dans le CSS du document en encodage Base64. La propriété [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) affecte uniquement le format HTML et n'affecte pas EPUB et MHTML.

L'exemple de code suivant montre comment exporter des polices codées en base64 au format HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportFontsAsBase64.py" >}}

## Spécifier les options d'enregistrement lors de la conversion en EPUB

Aspose.Words permet de convertir un document Word au format EPUB en utilisant les options de sauvegarde par défaut ou personnalisées. Vous pouvez spécifier un certain nombre d'options en transmettant une instance de [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) à la méthode [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/).

L'exemple de code suivant montre comment convertir un document Word en EPUB en spécifiant certaines options d'enregistrement personnalisées:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir + "Rendering.docx")

# Create a new instance of HtmlSaveOptions. This object allows us to set options that control
# How the output document is saved.
saveOptions = aw.saving.HtmlSaveOptions()

# Specify the desired encoding.
saveOptions.encoding = "utf-8"

# Specify at what elements to split the internal HTML at. This creates a new HTML within the EPUB 
# which allows you to limit the size of each HTML part. This is useful for readers which cannot read 
# HTML files greater than a certain size e.g 300kb.
saveOptions.document_split_criteria = aw.saving.DocumentSplitCriteria.HEADING_PARAGRAPH

# Specify that we want to export document properties.
saveOptions.export_document_properties = True

# Specify that we want to save in EPUB format.
saveOptions.save_format = aw.SaveFormat.EPUB

# Export the document as an EPUB file.
doc.save(docs_base.artifacts_dir + "Document.EpubConversion_out.epub", saveOptions)
{{< /highlight >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

