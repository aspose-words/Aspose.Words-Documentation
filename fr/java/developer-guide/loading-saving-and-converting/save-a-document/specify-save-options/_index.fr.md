---
title: Spécifiez les options d'enregistrement dans Java
second_title: Aspose.Words pour Java
articleTitle: Spécifier Les Options D'Enregistrement
linktitle: Spécifier Les Options D'Enregistrement
description: "Définissez des propriétés avancées lors de l'enregistrement d'un document à l'aide de Java pour fournir un contrôle plus précis sur le processus."
type: docs
weight: 20
url: /fr/java/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Lors de l'enregistrement d'un document, vous pouvez définir certaines propriétés avancées. Aspose.Words vous fournit la classe [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), qui permet un contrôle plus précis du processus de sauvegarde. Il y a des surcharges de la méthode **Save** qui acceptent un objet **SaveOptions** – il doit s'agir d'un objet d'une classe dérivée de la classe **SaveOptions**. Chaque format de sauvegarde a une classe correspondante qui contient des options de sauvegarde pour ce format de sauvegarde, par exemple, il y a [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) pour enregistrer au format PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) pour enregistrer au format Markdown ou [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) pour enregistrer dans une image. Cet article fournit des exemples d'utilisation de certaines classes d'options dérivées de **SaveOptions**.

L'exemple de code suivant montre comment définir les options d'enregistrement avant d'enregistrer le document dans HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

L'article décrit quelques propriétés que vous pouvez contrôler lors de l'enregistrement d'un document.

## Chiffrer un Document avec un mot de passe

Utilisez la propriété **Password** pour obtenir ou définir un mot de passe pour un document chiffré. Utilisez la propriété **Password** de la classe correspondante pour travailler avec le format de document sélectionné.

Par exemple, lors de l'enregistrement d'un document au format DOC ou DOT, utilisez la propriété [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) de la classe [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/).

L'exemple de code suivant montre comment définir un mot de passe pour chiffrer un document à l'aide de la méthode de chiffrement RC4:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

Lors de l'enregistrement d'un document au format ODT, utilisez la propriété [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) de la classe [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/).

L'exemple de code suivant montre comment charger et enregistrer OpenDocument crypté avec un mot de passe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

Tous les formats ne prennent pas en charge le cryptage et l'utilisation de la propriété **Password**.

## Afficher les Notifications De Progression de l'Enregistrement du Document

Aspose.Words permet d'utiliser la propriété [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) pour recevoir des notifications sur la progression de l'enregistrement du document.

Il est maintenant disponible lors de l'enregistrement dans DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, ou TXT formats.

## Mettre à jour l'heure de création du Document

Aspose.Words permet d'utiliser la propriété [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) pour obtenir ou définir la date de création du document dans UTC. Vous pouvez également mettre à jour cette valeur avant d'enregistrer en utilisant l'option [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty).

L'exemple de code suivant montre comment mettre à jour l'heure de création du document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## Mettre À Jour La Dernière Propriété Enregistrée

Aspose.Words permet d'utiliser la propriété [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) pour obtenir ou définir une valeur déterminant si la propriété [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) est mise à jour avant l'enregistrement.

L'exemple de code suivant montre comment définir cette propriété et enregistrer le document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## Enregistrez l'image en Noir et Blanc avec Un Bit Par Format de Pixel

Pour contrôler les options d'enregistrement d'image, la classe **ImageSaveOptions** est utilisée. Par exemple, vous pouvez utiliser la propriété [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) pour définir le format de pixel des images générées. Veuillez noter que le format de pixel de l'image de sortie peut différer de la valeur définie en raison du travail de GDI+.

L'exemple de code suivant montre comment enregistrer une image en noir et blanc avec un bit par format de pixel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
