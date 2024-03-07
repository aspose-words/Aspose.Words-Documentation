---
title: Spécifier les options d'enregistrement dans C#
second_title: Aspose.Words pour .NET
articleTitle: Spécifier les options d'enregistrement
linktitle: Spécifier les options d'enregistrement
description: "Contrôlez plus précisément le processus de sauvegarde à l'aide de C#."
type: docs
weight: 10
url: /fr/net/specify-save-options/
---

Lors de l'enregistrement d'un document, vous pouvez définir certaines propriétés avancées. Aspose.Words vous fournit la classe [SaveOptions](https://reference.aspose.com/words/fr/net/aspose.words.saving/saveoptions/), qui permet un contrôle plus précis du processus de sauvegarde. Il existe des surcharges de la méthode **Save** qui acceptent un objet **SaveOptions** – il doit s'agir d'un objet d'une classe dérivée de la classe **SaveOptions**. Chaque format de sauvegarde a une classe correspondante qui contient les options de sauvegarde pour ce format de sauvegarde, par exemple, il existe [PdfSaveOptions](https://reference.aspose.com/words/fr/net/aspose.words.saving/pdfsaveoptions/) pour enregistrer au format PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/fr/net/aspose.words.saving/markdownsaveoptions/) pour enregistrer au format Markdown ou [ImageSaveOptions](https://reference.aspose.com/words/fr/net/aspose.words.saving/imagesaveoptions/) pour enregistrer dans une image. Cet article fournit des exemples d'utilisation de certaines classes d'options dérivées de **SaveOptions**.

L'exemple de code suivant montre comment définir les options d'enregistrement avant d'enregistrer le document au format HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

L'article décrit quelques propriétés que vous pouvez contrôler lors de l'enregistrement d'un document.

## Chiffrer un document avec un mot de passe

Utilisez la propriété **Password** pour obtenir ou définir un mot de passe pour un document chiffré. Utilisez la propriété **Password** de la classe correspondante pour travailler avec le format de document sélectionné.

Par exemple, lors de l'enregistrement d'un document au format DOC ou DOT, utilisez la propriété [Password](https://reference.aspose.com/words/fr/net/aspose.words.saving/docsaveoptions/password/) de la classe [DocSaveOptions](https://reference.aspose.com/words/fr/net/aspose.words.saving/docsaveoptions/).

L'exemple de code suivant montre comment définir un mot de passe pour chiffrer un document à l'aide de la méthode de chiffrement RC4:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cs" >}}

Lors de l'enregistrement d'un document au format Odt, utilisez la propriété [Password](https://reference.aspose.com/words/fr/net/aspose.words.saving/odtsaveoptions/password/) de la classe [OdtSaveOptions](https://reference.aspose.com/words/fr/net/aspose.words.saving/odtsaveoptions/).

L'exemple de code suivant montre comment charger et enregistrer OpenDocument chiffré avec un mot de passe:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cs" >}}

Tous les formats ne prennent pas en charge le cryptage et l'utilisation de la propriété **Password**.

## Afficher les notifications de progression de l'enregistrement des documents

Aspose.Words offre la possibilité d'utiliser la propriété [ProgressCallback](https://reference.aspose.com/words/fr/net/aspose.words.saving/saveoptions/progresscallback/) pour recevoir des notifications sur la progression de l'enregistrement du document.

Il est désormais disponible lors de l'enregistrement aux formats DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack ou TXT.

## Mettre à jour l'heure de création du document

Aspose.Words offre la possibilité d'utiliser la propriété [CreatedTime](https://reference.aspose.com/words/fr/net/aspose.words.properties/builtindocumentproperties/createdtime/) pour obtenir ou définir la date de création du document en UTC. Vous pouvez également mettre à jour cette valeur avant d'enregistrer à l'aide de l'option [UpdateCreatedTimeProperty](https://reference.aspose.com/words/fr/net/aspose.words.saving/saveoptions/updatecreatedtimeproperty/).

L'exemple de code suivant montre comment mettre à jour l'heure de création du document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-UpdateIfLastPrinted.cs" >}}

## Mettre à jour la dernière propriété enregistrée

Aspose.Words offre la possibilité d'utiliser la propriété [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/fr/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) pour obtenir ou définir une valeur déterminant si la propriété [LastSavedTime](https://reference.aspose.com/words/fr/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) est mise à jour avant l'enregistrement.

L'exemple de code suivant montre comment définir cette propriété et enregistrer le document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cs" >}}

## Contrôler les ressources externes lors de l'enregistrement d'un document au format HTML ou SVG

Pour convertir HTML ou SVG en PDF, invoquez simplement la méthode [Save](https://reference.aspose.com/words/fr/net/aspose.words/document/save/#save/) et spécifiez un nom de fichier avec l'extension ".PDF". Si vous souhaitez charger des images, CSS, etc. à partir de sources externes, vous pouvez utiliser [IResourceSavingCallback](https://reference.aspose.com/words/fr/net/aspose.words.saving/iresourcesavingcallback/).

L'exemple de code suivant montre comment convertir du HTML en PDF et charger des images à partir de sources externes:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ImageLoadingWithCredentialsHandler-ImageLoadingWithCredentialsHandler.cs" >}}

## Enregistrer une image en noir et blanc avec le format un bit par pixel

Pour contrôler les options d'enregistrement des images, la classe **ImageSaveOptions** est utilisée. Par exemple, vous pouvez utiliser la propriété [PixelFormat](https://reference.aspose.com/words/fr/net/aspose.words.saving/imagesaveoptions/pixelformat/) pour définir le format de pixel des images générées. Veuillez noter que le format de pixel de l'image de sortie peut différer de la valeur définie en raison du travail de GDI+.

L'exemple de code suivant montre comment enregistrer une image en noir et blanc au format un bit par pixel:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cs" >}}
