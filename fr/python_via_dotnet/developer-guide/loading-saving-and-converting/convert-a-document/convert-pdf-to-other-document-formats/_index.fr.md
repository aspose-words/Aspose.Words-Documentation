---
title: Convertir un PDF en d'autres formats de documents
second_title: Aspose.Words pour Python via .NET
articleTitle: Convertir un PDF en d'autres formats de documents
linktitle: Convertir un PDF en d'autres formats de documents
type: docs
description: "Convertissez des PDF en formats Word tels que DOCX, DOC, en formats d'image tels que JPG ou PNG, ou tout autre format pris en charge par Aspose à l'aide de `Python.Words`."
keywords: convert pdf to other formats python
weight: 45
url: /fr/python-net/convert-pdf-to-other-document-formats/
---

Aspose.Words peut charger même un format aussi complexe que PDF. Cela ouvre de nouvelles opportunités: il est possible de convertir des PDF en Word ou en d'autres formats, ce qui donne aux utilisateurs une longueur d'avance dans la résolution de nombreux problèmes appliqués.

## Convertir un PDF en d'autres formats {#convert-pdf-to-other-formats}

La conversion la plus populaire à partir de PDF est la conversion vers les formats Microsoft Word tels que DOCX, DOC, ainsi que vers les formats d'image tels que JPG ou PNG. Cela dit, la conversion d'un document d'un format à un autre s'effectue de manière familière.

L'exemple de code suivant montre comment convertir un document PDF en DOCX:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToDocx.py" >}}

## Spécifier les options de chargement lors de l'importation de PDF {#specify-load-options-when-importing-pdf}

Aspose.Words vous fournit la classe [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/), qui permet un contrôle plus précis sur la façon dont les documents PDF sont chargés.

La plupart des propriétés héritent ou surchargent les propriétés qui existent déjà dans la classe [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/). En plus d'eux, un certain nombre de propriétés sont spécifiées pour le format PDF. Par exemple, vous pouvez utiliser les propriétés [page_count](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_count/) et [page_index](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_index/) pour définir la plage de pages à charger à partir d'un document PDF, et les propriétés [skip_pdf_images](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/skip_pdf_images/) pour contrôler si les images doivent être ignorées lors du chargement du PDF. Un autre paramètre pris en charge est le [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/), qui doit être fourni pour les documents protégés par mot de passe.

## Contenu PDF pris en charge {#supported-pdf-content}

Le plugin PDF2Word prend actuellement en charge les types de données suivants:

* Paragraphes de texte
* Images
* Les tables
* Listes
* En-têtes et pieds de page
* Notes de bas de page
* Numéros de page
* Texte de droite à gauche (avec quelques limitations)
* PDF consultables (les images du recto seront supprimées au profit du texte d'arrière-plan)

## Fonctionnalités prévues {#planned-features}

Certaines fonctionnalités sont encore en début de développement ou incluses dans la feuille de route de développement:

* Table des matières
* OCR pour les PDF consultables et non consultables
* Rapport d'étape
* Texte multicolonne
* Formules mathématiques
* Plus de champs automatiques (en plus de `PAGE` et NUMPAGES)

## Exceptions de chargement de PDF

Lors d'une conversion de document PDF, l'une des exceptions suivantes peut se produire:

|  Exception |  Description |
|  --------------------------------  |  ------------------------------------------------------------  |
|   *FileLoadException*               |  Un fichier PDF ne peut pas être traité pour une raison quelconque.<br /> {{% alert color="primary" %}}Vous pouvez signaler le problème à l'équipe de développement pour une enquête détaillée à l'aide du fichier [Soutien technique](/words/fr/python-net/technical-support/).{{% /alert %}} |
|   *DrmProtectedFileException*       |  Un fichier PDF est protégé par Adobe DRM et ne peut pas être décodé par Pdf2Word |
|   *PasswordProtectedFileException*  |  Le mot de passe correct doit être fourni pour un PDF protégé par mot de passe |


