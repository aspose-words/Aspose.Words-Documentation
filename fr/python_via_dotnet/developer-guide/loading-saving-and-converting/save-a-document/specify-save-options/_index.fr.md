---
title: Spécifier les options d'enregistrement dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Spécifier les options d'enregistrement
linktitle: Spécifier les options d'enregistrement
description: "Contrôlez plus précisément le processus de sauvegarde à l'aide de Python."
type: docs
weight: 10
url: /fr/python-net/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Lors de l'enregistrement d'un document, vous pouvez définir certaines propriétés avancées. Aspose.Words vous fournit la classe [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/), qui permet un contrôle plus précis du processus de sauvegarde. Il existe des surcharges de la méthode [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) qui acceptent un objet [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) – il doit s'agir d'un objet d'une classe dérivée de la classe [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/). Chaque format de sauvegarde a une classe correspondante qui contient les options de sauvegarde pour ce format de sauvegarde, par exemple, il existe [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) pour enregistrer au format PDF ou [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) pour enregistrer dans une image. Cet article fournit des exemples d'utilisation de certaines classes d'options dérivées de [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/).

L'exemple de code suivant montre comment définir les options d'enregistrement avant d'enregistrer le document au format HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

L'article décrit quelques propriétés que vous pouvez contrôler lors de l'enregistrement d'un document.

## Chiffrer un document avec un mot de passe

Utilisez la propriété **mot de passe** pour obtenir ou définir un mot de passe pour un document chiffré. Utilisez la propriété **mot de passe** de la classe correspondante pour travailler avec le format de document sélectionné.

Par exemple, lors de l'enregistrement d'un document au format DOC ou DOT, utilisez la propriété [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) de la classe [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/).

L'exemple de code suivant montre comment définir un mot de passe pour chiffrer un document à l'aide de la méthode de chiffrement RC4:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_doc_save_options-EncryptDocumentWithPassword.py" >}}

Lors de l'enregistrement d'un document au format [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/), utilisez la propriété [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) de la classe [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/).

L'exemple de code suivant montre comment charger et enregistrer Docx chiffré avec un mot de passe:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-EncryptDocxWithPassword.py" >}}

Tous les formats ne prennent pas en charge le cryptage et l'utilisation de la propriété **mot de passe**.

## Mettre à jour l'heure de création du document

Aspose.Words offre la possibilité d'utiliser la propriété [created_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/created_time/) pour obtenir ou définir la date de création du document en UTC. Vous pouvez également mettre à jour cette valeur avant d'enregistrer à l'aide de l'option [update_created_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_created_time_property/).

L'exemple de code suivant montre comment mettre à jour l'heure de création du document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-UpdateIfLastPrinted.py" >}}

## Mettre à jour la dernière propriété enregistrée

Aspose.Words offre la possibilité d'utiliser la propriété [update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) pour obtenir ou définir une valeur déterminant si la propriété [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) est mise à jour avant l'enregistrement.

L'exemple de code suivant montre comment définir cette propriété et enregistrer le document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

## Enregistrer une image en noir et blanc avec le format un bit par pixel

Pour contrôler les options d'enregistrement des images, la classe [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) est utilisée. Par exemple, vous pouvez utiliser la propriété [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) pour définir le format de pixel des images générées. Veuillez noter que le format de pixel de l'image de sortie peut différer de la valeur définie en raison du travail de skia.

L'exemple de code suivant montre comment enregistrer une image en noir et blanc au format un bit par pixel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-Format1BppIndexed.py" >}}
