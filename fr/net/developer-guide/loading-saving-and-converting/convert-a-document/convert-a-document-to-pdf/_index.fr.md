---
title: Convertir Word en PDF dans C#
second_title: Aspose.Words pour .NET
articleTitle: Convertir un document en PDF
linktitle: Convertir un document en PDF
description: "Convertissez un document en PDF à l'aide de C#. Convertissez DOCX en PDF C#. Différents formats d'entrée sont pris en charge, notamment les formats Word, OpenOffice, Image et eBook."
type: docs
weight: 10
url: /fr/net/convert-a-document-to-pdf/
---

La possibilité de convertir facilement et de manière fiable des documents d'un format à un autre est une fonctionnalité clé de Aspose.Words. L'un des formats de conversion les plus populaires est le PDF, un format à mise en page fixe qui préserve l'apparence originale d'un document lors de son rendu sur diverses plates-formes. Le terme "rendu" est utilisé dans Aspose.Words pour décrire le processus de conversion d'un document dans un format de fichier paginé ou ayant le concept de pages.

## Convertir un document Word en PDF

La conversion de Word en PDF est un processus assez complexe qui nécessite plusieurs étapes de calcul. Le moteur de mise en page Aspose.Words imite le fonctionnement du moteur de mise en page de Microsoft Word, ce qui rend les documents de sortie PDF aussi proches que possible de ce que vous pouvez voir dans Microsoft Word.

Avec Aspose.Words, vous pouvez convertir par programmation un document à partir de formats Word, tels que DOC ou DOCX, en PDF sans utiliser Microsoft Office. Cet article explique comment effectuer cette conversion.

{{% alert color="primary" %}}

Notez que le nombre de pages dans un document affecte le temps de conversion.

{{% /alert %}}

### Convertir DOCX ou DOC en PDF

La conversion du format de document DOC ou DOCX au format PDF en Aspose.Words est très simple et peut être réalisée avec seulement deux lignes de code qui:

1. Chargez votre document dans un objet [Document](https://reference.aspose.com/words/fr/net/aspose.words/document/) en utilisant l'un de ses constructeurs en spécifiant le nom du document avec son extension de format.
1. Invoquez l'une des méthodes [Document.Save](https://reference.aspose.com/words/fr/net/aspose.words/document/save/#save/) sur l'objet **Document** et spécifiez le format de sortie souhaité au format PDF en saisissant un nom de fichier avec l'extension ".PDF".

L'exemple de code suivant montre comment convertir un document DOCX en PDF à l'aide de la méthode [Save](https://reference.aspose.com/words/fr/net/aspose.words/document/save/):

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

Vous pouvez télécharger le fichier modèle de cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Parfois, il est nécessaire de spécifier des options supplémentaires, ce qui peut affecter le résultat de l'enregistrement d'un document au format PDF. Ces options peuvent être spécifiées à l'aide de la classe [PdfSaveOptions](https://reference.aspose.com/words/fr/net/aspose.words.saving/pdfsaveoptions/), contenant des propriétés qui déterminent la manière dont la sortie PDF sera affichée.

Notez qu'avec la même technique, vous pouvez convertir n'importe quel document au format de mise en page de flux au format PDF.

{{% /alert %}}

### Convertir vers différentes normes PDF

Aspose.Words fournit l'énumération [PdfCompliace](https://reference.aspose.com/words/fr/net/aspose.words.saving/pdfcompliance/) pour prendre en charge la conversion de DOC ou DOCX en divers standards de format PDF (tels que PDF 1.7, PDF 1.5, etc.).

L'exemple de code suivant montre comment convertir un document au format PDF 1.7 à l'aide de [PdfSaveOptions](https://reference.aspose.com/words/fr/net/aspose.words.saving/pdfsaveoptions/) conformément à PDF17:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "conversion-to-pdf17.cs" >}}

## Convertir des images en PDF

La conversion au format PDF n'est pas limitée par les formats de document Microsoft Word. Tout format pris en charge par Aspose.Words, y compris créé par programme, peut également être converti en PDF. Par exemple, nous pouvons convertir des images d'une seule page, telles que JPEG, PNG, BMP, EMF ou WMF, ainsi que des images de plusieurs pages, telles que TIFF et GIF, en PDF.

L'exemple de code suivant montre comment convertir des images JPEG et TIFF en PDF:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "image-to-pdf.cs" >}}

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "convert-image-to-pdf.cs" >}}

Pour que ce code fonctionne, vous devez ajouter des références à Aspose.Words et `System.Drawing` à votre projet.

## Réduire la taille de sortie du PDF

Lors de l'enregistrement au format PDF, vous pouvez spécifier si vous souhaitez optimiser la sortie. Pour ce faire, vous devez définir l'indicateur [OptimizeOutput](https://reference.aspose.com/words/fr/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) sur true, puis les canevas imbriqués redondants et les canevas vides seront supprimés, les glyph voisins avec le même formatage seront concaténés.

L'exemple de code suivant montre comment optimiser la sortie:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "optimize-output.cs" >}}

{{% alert color="primary" %}}

L'utilisation de la propriété **OptimizeOutput** peut affecter la précision de l'affichage du contenu.

{{% /alert %}}

## Voir également

- L'article [Le rendu](/words/fr/net/rendering/) pour plus d'informations sur les formats de page fixe et de flow-layout
- L'article [Conversion au format de page fixe](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) pour plus d'informations sur la mise en page
- L'article [Spécifier les options de rendu lors de la conversion au format PDF](/words/fr/net/specify-rendering-options-when-converting-to-pdf/) pour plus d'informations sur l'utilisation de la classe `PdfSaveOptions`
- L'article [Découvrez les fonctionnalités de conversion en PDF/A et PDF/UA](/words/fr/net/learn-features-of-conversion-to-pdf-a-pdf-ua/) décrivant quelle norme PDF et le ISO correspondant pour les normes PDF prennent en charge Aspose.Words
- L'article [Quelle norme PDF est préférable de choisir](/words/fr/net/which-pdf-standard-is-better-to-choose/) pour déterminer quelles normes PDF ont du sens dans quels cas

- L'article [Travailler avec PDF/A ou PDF/UA](/words/fr/net/working-with-pdfa-or-pdfua/) décrit les exigences relatives au contenu du document aux formats PDF/A et PDF/UA – principalement les exigences relatives à la structure et aux polices

- L'article [Avertissements relatifs aux problèmes d'accessibilité lors de l'enregistrement au format PDF/A et PDF/UA](/words/fr/net/warnings-when-saving-to-pdfa-and-pdfua/) décrit les exigences d'accessibilité du contenu imposées par PDF/A et PDF/UA
