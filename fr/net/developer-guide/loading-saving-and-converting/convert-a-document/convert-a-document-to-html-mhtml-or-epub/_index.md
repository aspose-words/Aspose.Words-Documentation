---
title: Convertir un document en HTML, MHTML ou EPUB dans C#
second_title: Aspose.Words pour .NET
articleTitle: Convertir un document en HTML, MHTML ou EPUB
linktitle: Convertir un document en HTML, MHTML ou EPUB
description: "Convertissez un document de presque n'importe quel format au format HTML ou MHTML, ainsi qu'au format EPUB à l'aide de C#. Vous pouvez également spécifier des options d'enregistrement pour gérer le document de sortie."
type: docs
weight: 20
url: /fr/net/convert-a-document-to-html-mhtml-or-epub/
---

Les documents aux formats de présentation de flux HTML et MHTML sont également très populaires et peuvent être utilisés sur n'importe quelle plateforme Web. Pour cette raison, la conversion de documents en HTML et MHTML est une fonctionnalité importante de Aspose.Words.

EPUB (abréviation de "Electronic Publication") est un format HTML couramment utilisé pour la distribution de livres électroniques. Ce format est entièrement pris en charge dans Aspose.Words pour exporter des livres électroniques compatibles avec la plupart des appareils de lecture.

## Convertir un document

Pour une conversion simple en HTML, MHTML ou EPUB, l'une des surcharges de méthodes [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) est utilisée. Vous pouvez enregistrer le document dans un fichier ou un flux et définir explicitement le format d'enregistrement du document de sortie ou le définir à partir de l'extension du nom de fichier.

L'exemple suivant montre comment convertir DOCX en HTML en spécifiant un format de sauvegarde:

**.NET**

{{< highlight csharp >}}

// Load the document from disk.
Document doc = new Document(dataDir + "Test File.docx");

// Save the document into HTML.
doc.Save(dataDir + "Document", SaveFormat.Html);
{{< /highlight >}}

Pour convertir un document en MHTML ou EPUB, utilisez respectivement `SaveFormat.Mhtml` ou `SaveFormat.Epub`.

## Convertir un document avec des informations aller-retour

Le format HTML ne prend pas en charge de nombreuses fonctionnalités Microsoft Word, et si nous devons restaurer un modèle de document aussi proche que possible de l'original, nous devons enregistrer des informations supplémentaires dans le fichier HTML. Ces informations sont également appelées "informations aller-retour". À cette fin, Aspose.Words offre la possibilité d'exporter des informations aller-retour lors de l'enregistrement au format HTML, MHTML ou EPUB à l'aide de la propriété [ExportRoundtripInformation](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportroundtripinformation/). L'enregistrement des informations aller-retour permet de restaurer les propriétés du document telles que les onglets, les commentaires, les en-têtes et les pieds de page lors du chargement des documents des formats répertoriés dans un objet **Document**.

La valeur par défaut est **true** pour HTML et **false** pour MHTML et EPUB:

- Lorsque **true**, les informations aller-retour sont exportées sous forme de - aw - * Propriétés CSS des éléments HTML correspondants
- Lorsque **false**, il n'y a aucune information aller-retour à afficher dans les fichiers produits

L'exemple de code suivant montre comment exporter des informations aller-retour lors de la conversion d'un document DOCX en HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtmlWithRoundtrip-ConvertDocumentToHtmlWithRoundtrip.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Spécifier les options d'enregistrement lors de la conversion au format HTML

Aspose.Words permet de convertir un document Word en HTML en utilisant les options de sauvegarde par défaut ou personnalisées. Quelques exemples d’options de sauvegarde personnalisées sont décrits ci-dessous.

### Spécifier un dossier pour enregistrer les ressources

En utilisant Aspose.Words, nous pouvons spécifier un dossier physique dans lequel toutes les ressources, telles que les images, les polices et les CSS externes, sont enregistrées lorsqu'un document est converti en HTML. Par défaut, c'est une chaîne vide.

Spécifier la propriété [ResourceFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolder/) est le moyen le plus simple de définir le dossier dans lequel toutes les ressources doivent être écrites. Nous pouvons utiliser des propriétés individuelles, telles que [FontsFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolder/) qui enregistre les polices dans le dossier spécifié et [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolder/) qui enregistre les images dans un dossier spécifié. Lorsqu'un chemin relatif est spécifié, **FontsFolder** et **ImagesFolder** font référence au dossier où se trouve l'assembly de code, **ResourceFolder** et [CssStyleSheetFileName](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/cssstylesheetfilename/) font référence au dossier de sortie où se trouve le document HTML.

Dans cet exemple, **ResourceFolder** spécifie le chemin relatif. Ce chemin fait référence au dossier de sortie dans lequel le document HTML est enregistré. La valeur de la propriété **ResourceFolderAlias** est utilisée pour créer des URL pour toutes les ressources.

L'exemple de code suivant montre comment utiliser ces propriétés:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportResourcesUsingHtmlSaveOptions-ExportResourcesUsingHtmlSaveOptions.cs" >}}

En utilisant la propriété [ResourceFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolderalias/), nous pouvons également spécifier le nom du dossier utilisé pour construire les URI de toutes les ressources écrites dans un document HTML. Il s'agit du moyen le plus simple de spécifier comment les URI doivent être générés pour tous les fichiers de ressources. Les mêmes informations peuvent être spécifiées séparément pour les images et les polices via les propriétés [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolderalias/) et [FontsFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolderalias/), respectivement.

Cependant, il n'existe pas de propriété individuelle pour CSS. Le comportement des propriétés **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** et **CssStyleSheetFileName** n'est pas modifié. Notez que la propriété **CssStyleSheetFileName** est utilisée à la fois pour spécifier le nom du dossier et le nom du fichier.

- **ResourceFolder** a une priorité inférieure aux dossiers spécifiés via **FontsFolder**, **ImagesFolder** et **CssStyleSheetFileName**. Si le dossier spécifié dans le **ResourceFolder** n'existe pas, il sera créé automatiquement.
- **ResourceFolderAlias** a une priorité inférieure à **FontsFolderAlias** et **ImagesFolderAlias**. Si **ResourceFolderAlias** est vide, la valeur de la propriété **ResourceFolder** sera utilisée pour créer les URI de ressources. Si **ResourceFolderAlias** est défini sur "." (point), les URI de ressources contiendront uniquement des noms de fichiers sans spécifier de chemin.

### Exporter les ressources de polices d’encodage Base64

Aspose.Words offre la possibilité de spécifier si les ressources de polices doivent être intégrées au HTML dans les encodages Base64. Pour ce faire, utilisez la propriété [ExportFontsAsBase64](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontsasbase64/) – il s'agit d'une extension de la propriété [ExportFontResources](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontresources/). Par défaut, sa valeur est **false** et les polices sont écrites dans des fichiers distincts. Mais si cette option est définie sur **true**, les polices seront intégrées dans le CSS du document en encodage Base64. La propriété **Exporter les polices en tant que base64** affecte uniquement le format HTML et n'affecte pas EPUB et MHTML.

L'exemple de code suivant montre comment exporter des polices codées en base64 au format HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportFontsAsBase64-ExportFontsAsBase64.cs" >}}

## Spécifier les options d'enregistrement lors de la conversion en EPUB

Aspose.Words permet de convertir un document Word au format EPUB en utilisant les options de sauvegarde par défaut ou personnalisées. Vous pouvez spécifier un certain nombre d'options en transmettant une instance de [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) à la méthode [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/).

L'exemple de code suivant montre comment convertir un document Word en EPUB en spécifiant certaines options d'enregistrement personnalisées:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Voir également

- [Comment exporter des informations aller-retour lors de l'enregistrement au format HTML](/words/net/custom-styles-used-for-proper-aspose-words-html-aspose-words-roundtrip/)
