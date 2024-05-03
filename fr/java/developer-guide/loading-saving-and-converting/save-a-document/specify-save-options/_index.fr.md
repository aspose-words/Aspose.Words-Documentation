---
title: Spécifier les options de sauvegarde dans Java
second_title: Aspose.Words pour Java
articleTitle: Spécifier les options de sauvegarde
linktitle: Spécifier les options de sauvegarde
description: "Définir les propriétés avancées lors de l'enregistrement d'un document en utilisant Java fournir un contrôle plus précis sur le processus."
type: docs
weight: 20
url: /fr/java/specify-save-options/
---

Lors de l'enregistrement d'un document, vous pouvez définir des propriétés avancées. Aspose.Words vous fournit le [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/) classe, qui permet un contrôle plus précis du processus de sauvegarde. Il y a des surcharges de la **Save** méthode qui accepte une **SaveOptions** objet – il devrait être un objet d'une classe dérivé de **SaveOptions** En cours. Chaque format de sauvegarde a une classe correspondante qui détient des options de sauvegarde pour ce format de sauvegarde, par exemple, il y a [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) pour enregistrer au format PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) pour l'épargne Markdown modèle, ou [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) pour enregistrer sur une image. Cet article fournit des exemples de travail avec certaines classes d'options dérivées de **SaveOptions**.

L'exemple de code suivant montre comment définir les options de sauvegarde avant de sauvegarder le document en HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

L'article décrit quelques propriétés que vous pouvez contrôler lors de la sauvegarde d'un document.

## Chiffrer un document Avec un mot de passe

Utiliser **Password** propriété pour obtenir ou définir un mot de passe pour un document chiffré. Utiliser **Password** propriété de la classe correspondante pour travailler avec le format de document sélectionné.

Par exemple, lors de la sauvegarde d'un document au DOC ou DOT format, utiliser le [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) propriété des [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) En cours.

L'exemple de code suivant montre comment définir un mot de passe pour chiffrer un document en utilisant la méthode de chiffrement RC4:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

Lorsque vous enregistrez un document au format ODT, utilisez le [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) propriété des [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) En cours.

L'exemple de code suivant montre comment charger et enregistrer OpenDocument chiffré avec un mot de passe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

Tous les formats ne supportent pas le cryptage et l'utilisation de **Password** propriété.

## Afficher les notifications d'enregistrement de documents

Aspose.Words offre la possibilité d'utiliser [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) propriété pour obtenir des notifications sur la progression de l'économie de document.

Il est maintenant disponible lors de l'enregistrement sur DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack ou formats TXT.

## Mettre à jour l'heure de création du document

Aspose.Words permet d'utiliser les [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) propriété pour obtenir ou définir la date de création du document en UTC. Vous pouvez également mettre à jour cette valeur avant d'enregistrer [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty) option.

L'exemple de code suivant montre comment mettre à jour le temps de création du document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## Mettre à jour la dernière propriété enregistrée

Aspose.Words permet d'utiliser les [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) biens à obtenir ou à fixer une valeur [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) la propriété est mise à jour avant l'épargne.

L'exemple de code suivant montre comment définir cette propriété et enregistrer le document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## Enregistrer l'image noir et blanc avec un bit par Pixel format

Pour contrôler les options de sauvegarde d'images, **ImageSaveOptions** La classe est utilisée. Par exemple, vous pouvez utiliser le [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) propriété pour définir le format pixel pour les images générées. Veuillez noter que le format pixel de l'image de sortie peut différer de la valeur définie en raison du travail de GDI+.

L'exemple de code suivant montre comment enregistrer une image en noir et blanc avec un bit par pixel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
