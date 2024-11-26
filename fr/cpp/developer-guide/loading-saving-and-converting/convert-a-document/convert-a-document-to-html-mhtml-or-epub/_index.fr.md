---
title: Convertir un document en HTML, MHTML ou EPUB
second_title: Aspose.Words pour C++
articleTitle: Convertir un document en HTML, MHTML ou EPUB
linktitle: Convertir un document en HTML, MHTML ou EPUB
description: "Convertissez un document de presque n'importe quel format en HTML ou MHTML, ainsi qu'au format EPUB en utilisant C++. Vous pouvez également spécifier des options d'enregistrement pour gérer le document de sortie."
type: docs
weight: 20
url: /fr/cpp/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-10-21-08-52-03
---

Les documents aux formats de mise en page de flux HTML et MHTML sont également très populaires et peuvent être utilisés sur n'importe quelle plate-forme Web. Pour cette raison, la conversion de documents en HTML et MHTML est une fonctionnalité importante de Aspose.Words.

EPUB (abréviation de "Publication électronique") est un format HTML couramment utilisé pour la distribution de livres électroniques. Ce format est entièrement pris en charge dans Aspose.Words pour l'exportation de livres électroniques compatibles avec la plupart des appareils de lecture.

## Convertir un Document

Pour une conversion simple en HTML, MHTML ou EPUB, l'une des surcharges de méthode [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) est utilisée. Vous pouvez enregistrer le document dans un fichier ou un flux et définir explicitement le format d'enregistrement du document de sortie ou le définir à partir de l'extension de nom de fichier.

L'exemple suivant montre comment convertir DOCX en HTML en spécifiant un format de sauvegarde:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocxToHtml.cpp" >}}

Pour convertir un document au format MHTML ou EPUB, utilisez respectivement `SaveFormat.Mhtml` ou `SaveFormat.Epub`.

## Convertir un Document avec des Informations aller-retour

Le format HTML ne prend pas en charge de nombreuses fonctionnalités de Microsoft Word, et si nous devons restaurer un modèle de document aussi proche que possible de l'original, nous devons enregistrer des informations supplémentaires dans le fichier HTML. Ces informations sont également appelées "informations aller-retour". À cette fin, Aspose.Words permet d'exporter des informations aller-retour lors de l'enregistrement au format HTML, MHTML ou EPUB à l'aide de la propriété [ExportRoundtripInformation](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportroundtripinformation/). L'enregistrement des informations aller-retour permet de restaurer les propriétés du document telles que les onglets, les commentaires, les en-têtes et les pieds de page lors du chargement des documents des formats répertoriés dans un objet **Document**.

La valeur par défaut est **true** pour HTML et **false** pour MHTML et EPUB:

- Lorsque **true**, les informations aller-retour sont exportées sous forme de propriétés CSS - aw - * des éléments HTML correspondants
- Lorsque **false**, il n'y a aucune information aller-retour à afficher dans les fichiers produits

L'exemple de code suivant montre comment exporter des informations aller-retour lors de la conversion d'un document de DOCX en HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocumentToHtmlWithRoundtrip.cpp" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Spécifiez les options d'enregistrement lors de la conversion en HTML

Aspose.Words permet de convertir un document Word en HTML à l'aide des options d'enregistrement par défaut ou personnalisées. Quelques exemples d'options d'enregistrement personnalisées sont décrits ci-dessous.

### Spécifiez un dossier pour enregistrer les ressources

En utilisant Aspose.Words, nous pouvons spécifier un dossier physique dans lequel toutes les ressources, telles que les images, les polices et les CSS externes, sont enregistrées lorsqu'un document est converti en HTML. Par défaut, il s'agit d'une chaîne vide.

Spécifier la propriété [ResourceFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolder/) est le moyen le plus simple de définir le dossier dans lequel toutes les ressources doivent être écrites. Nous pouvons utiliser des propriétés individuelles, telles que [FontsFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolder/) qui enregistre les polices dans le dossier spécifié et [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolder/) qui enregistre les images dans un dossier spécifié. Lorsqu'un chemin relatif est spécifié, **FontsFolder** et **ImagesFolder** font référence au dossier dans lequel se trouve l'assembly de code, **ResourceFolder** et [CssStyleSheetFileName](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_cssstylesheetfilename/) font référence au dossier de sortie dans lequel se trouve le document HTML.

Dans cet exemple, **ResourceFolder** spécifie le chemin relatif. Ce chemin fait référence au dossier de sortie dans lequel le document HTML est enregistré. La valeur de la propriété **ResourceFolderAlias** est utilisée pour créer URLs pour toutes les ressources.

L'exemple de code suivant montre comment utiliser ces propriétés:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportResourcesUsingHtmlSaveOptions.cpp" >}}

En utilisant la propriété [ResourceFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolderalias/), nous pouvons également spécifier le nom du dossier utilisé pour construire URIs de toutes les ressources écrites dans un document HTML. C'est le moyen le plus simple de spécifier comment URIs doit être généré pour tous les fichiers de ressources. Les mêmes informations peuvent être spécifiées séparément pour les images et les polices via les propriétés [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolderalias/) et [FontsFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolderalias/), respectivement.

Cependant, il n'y a pas de propriété individuelle pour CSS. Le comportement du **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** et les propriétés **CssStyleSheetFileName** ne sont pas modifiées. Notez que la propriété **CssStyleSheetFileName** est utilisée à la fois pour spécifier le nom du dossier et le nom du fichier.

- **ResourceFolder** a une priorité inférieure à celle des dossiers spécifiés via **FontsFolder**, **ImagesFolder** et **CssStyleSheetFileName**. Si le dossier spécifié dans le **ResourceFolder** n'existe pas, il sera créé automatiquement.
- **ResourceFolderAlias** a une priorité inférieure à **FontsFolderAlias** et **ImagesFolderAlias**. Si **ResourceFolderAlias** est vide, la valeur de la propriété **ResourceFolder** sera utilisée pour créer la ressource URIs. Si **ResourceFolderAlias** est défini sur "." (point), la ressource URIs ne contiendra que des noms de fichiers sans spécifier de chemin.

### Exporter Des Ressources De Polices D'Encodage Base64

Aspose.Words permet de spécifier si les ressources de polices doivent être incorporées dans HTML dans les encodages Base64. Pour ce faire, utilisez la propriété [ExportFontsAsBase64](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontsasbase64/) – il s'agit d'une extension de la propriété [ExportFontResources](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontresources/). Par défaut, sa valeur est **false** et les polices sont écrites dans des fichiers séparés. Mais si cette option est définie sur **true**, les polices seront intégrées dans le CSS du document en encodage Base64. La propriété **ExportFontsAsBase64** affecte uniquement le format HTML et n'affecte pas EPUB et MHTML.

L'exemple de code suivant montre comment exporter des polices encodées en Base64 vers HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportFontsAsBase64.cpp" >}}

## Spécifiez les options d'enregistrement lors de la conversion en EPUB

Aspose.Words permet de convertir un document Word au format EPUB en utilisant les options d'enregistrement par défaut ou personnalisées. Vous pouvez spécifier un certain nombre d'options en passant une instance de [HtmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/) à la méthode `Save`.

L'exemple de code suivant montre comment convertir un document Word en EPUB en spécifiant certaines options d'enregistrement personnalisées:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cpp" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
