---
title: Convertir un document en HTML, MHTML ou EPUB
second_title: Aspose.Words pour Java
articleTitle: Convertir un document en HTML, MHTML ou EPUB
linktitle: Convertir un document en HTML, MHTML ou EPUB
description: "Utilisation Aspose.Words pour Java pour convertir des documents de Word ou de tout autre format pris en charge en HTML, MHTML ou EPUB."
type: docs
weight: 20
url: /fr/java/convert-a-document-to-html-mhtml-or-epub/
---

Les documents en format HTML et MHTML sont également très populaires et peuvent être utilisés sur n'importe quelle plateforme Web. Pour cette raison, la conversion des documents en HTML et en MHTML est une caractéristique importante de Aspose.Words.

EPUB est un format HTML utilisé couramment pour la distribution électronique des livres. Ce format est entièrement pris en charge dans Aspose.Words pour l'exportation de livres électroniques compatibles avec la plupart des appareils de lecture.

## Convertir un document

Pour une conversion simple en HTML, MHTML ou EPUB, l'un des [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) les surcharges de méthodes sont utilisées. Vous pouvez enregistrer le document dans un fichier ou un flux et définir explicitement le format de sauvegarde du document de sortie ou le définir à partir de l'extension de nom de fichier.

L'exemple suivant montre comment convertir DOCX en HTML en précisant un format de sauvegarde:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

Pour convertir un document en MHTML ou EPUB, utilisez `SaveFormat.MHTML` ou `SaveFormat.EPUB` respectivement.

## Convertir un document avec des informations de voyage aller-retour

Le format HTML ne supporte pas beaucoup Microsoft Word fonctionnalités, et si nous devons restaurer un modèle de document aussi proche que possible de l'original, nous devons enregistrer quelques informations supplémentaires dans le fichier HTML. Ces informations sont également appelées "informations de voyage aller-retour". À cette fin, Aspose.Words offre une capacité d'exporter des informations aller-retour lors de l'enregistrement sur HTML, MHTML, ou EPUB en utilisant [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation) propriété. L'enregistrement des informations aller-retour permet de restaurer les propriétés des documents tels que les onglets, les commentaires, les en-têtes et les bas de page pendant le chargement des documents des formats listés **Document** objet.

La valeur par défaut est **true** pour HTML et **false** pour MHTML et EPUB:

- Quand **true**, l'information aller-retour est exportée comme - aw - * propriétés CSS des éléments HTML correspondants
- Quand **false**, il n'y a pas d'information aller-retour à produire dans les fichiers produits

L'exemple de code suivant montre comment exporter des informations aller-retour lors de la conversion d'un document DOCX en HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Spécifier les options de sauvegarde lors de la conversion en HTML

Aspose.Words permet de convertir un document Word en HTML en utilisant des options de sauvegarde par défaut ou personnalisées. Quelques exemples d'options de sauvegarde personnalisées sont décrits ci-dessous.

### Spécifier un dossier pour sauver des ressources

Utilisation Aspose.Words nous pouvons spécifier un dossier physique où toutes les ressources, comme les images, les polices et les CSS externes, sont sauvegardées lorsqu'un document est converti en HTML. Par défaut, c'est une chaîne vide.

Préciser [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) propriété est la façon la plus simple de définir le dossier où toutes les ressources doivent être écrites. Nous pouvons utiliser des propriétés individuelles, comme [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder) qui enregistre les polices dans le dossier spécifié et [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder) qui enregistre les images dans un dossier spécifié. Lorsqu'un chemin relatif est spécifié, **FontsFolder** et **ImagesFolder** se référer au dossier où se trouve l'ensemble de code, **ResourceFolder** et [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) se référer au dossier de sortie où se trouve le document HTML.

Dans cet exemple, **ResourceFolder** spécifie le chemin relatif. Ce chemin se réfère au dossier de sortie où le document HTML est enregistré. La valeur **ResourceFolderAlias** propriété est utilisé pour créer des URL pour toutes les ressources.

L'exemple de code suivant montre comment travailler avec ces propriétés:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

Utilisation [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias) propriété, nous pouvons également spécifier le nom du dossier utilisé pour construire URIs de toutes les ressources écrites dans un document HTML. C'est la manière la plus simple de spécifier comment les URI devraient être générés pour tous les fichiers de ressources. Les mêmes informations peuvent être spécifiées séparément pour les images et les polices via [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) et [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias) propriétés, respectivement.

Cependant, il n'y a pas de propriété individuelle pour CSS. Le comportement des **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** et **CssStyleSheetFileName** Les propriétés ne sont pas modifiées. Noter que **CssStyleSheetFileName** la propriété est utilisée à la fois pour spécifier le nom du dossier et le nom du fichier.

- Oui. **ResourceFolder** a moins de priorité que les dossiers spécifiés via **FontsFolder**, **ImagesFolder**, et **CssStyleSheetFileName**. Si le dossier spécifié dans le **ResourceFolder** n'existe pas, il sera créé automatiquement.
- Oui. **ResourceFolderAlias** a une priorité inférieure à **FontsFolderAlias** et **ImagesFolderAlias**. Si **ResourceFolderAlias** est vide, la valeur de **ResourceFolder** la propriété sera utilisée pour créer des URI ressources. Si **ResourceFolderAlias** est défini à "." (dot), ressources URIs ne contiendra que des noms de fichiers sans spécifier un chemin.

### Exportation Base64 Encodage des polices Ressources

Aspose.Words fournit la possibilité de spécifier si les ressources de police doivent être intégrées au HTML dans les encodages Base64. Pour effectuer cela, utilisez le [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) propriété – c'est une extension de la [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources) propriété. Par défaut, sa valeur est **false**, et les polices sont écrites dans des fichiers séparés. Mais si cette option est définie à **true**, Les polices seront intégrées dans le CSS du document dans l'encodage Base64. Les **ExporterFontsAsBase64** propriété n'affecte que le format HTML et n'affecte pas EPUB et MHTML.

L'exemple de code suivant montre comment exporter les polices encodées Base64 vers HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## Spécifier les options de sauvegarde lors de la conversion en EPUB

Aspose.Words permet de convertir un document Word en format EPUB en utilisant des options de sauvegarde par défaut ou personnalisées. Vous pouvez spécifier un certain nombre d'options en passant une instance de [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) aux [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions) méthode.

L'exemple de code suivant montre comment convertir un document Word en EPUB en spécifiant certaines options de sauvegarde personnalisées:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc).

{{% /alert %}}

## Voir aussi

- [Commentaire exportateur des informations aller-retour lors de l'enregistrement en HTML](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
