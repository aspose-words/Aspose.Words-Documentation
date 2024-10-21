---
title: Convertir un document en PDF en C++
second_title: Aspose.Words pour C++
articleTitle: Convertir un document en PDF
linktitle: Convertir un document en PDF
description: "Convertissez un document en PDF en utilisant C++. Différents formats d'entrée sont pris en charge, notamment les formats Word, OpenOffice, Image et eBook."
type: docs
weight: 10
url: /fr/cpp/convert-a-document-to-pdf/
---

La possibilité de convertir facilement et de manière fiable des documents d'un format à un autre est une caractéristique clé de Aspose.Words. L'un des formats les plus populaires pour la conversion est PDF – un format à mise en page fixe, qui préserve l'apparence d'origine d'un document lors de son rendu sur diverses plates-formes. Le terme" rendu " est utilisé dans Aspose.Words pour décrire le processus de conversion d'un document en un format de fichier paginé ou ayant le concept de pages.

## Convertir un document Word en PDF {#convert-a-word-document-to-pdf}

La conversion de Word en PDF est un processus assez complexe qui nécessite plusieurs étapes de calcul. le moteur de mise en page Aspose.Words imite le fonctionnement du moteur de mise en page de Microsoft Word, ce qui rend les documents de sortie PDF aussi proches que possible de ce que vous pouvez voir dans Microsoft Word.

Avec Aspose.Words, vous pouvez convertir par programme un document du format DOC ou DOCX en PDF sans utiliser Microsoft Office. Cet article explique comment effectuer cette conversion.

{{% alert color="primary" %}}

Notez que le nombre de pages d'un document affecte le temps de conversion.

{{% /alert %}}

### Conversion de DOCX ou DOC en PDF {#converting-doc-or-docx-to-pdf}

La conversion du format de document DOC ou DOCX au format PDF en Aspose.Words est très simple et peut être réalisée avec seulement deux lignes de code qui:

1. Chargez votre document dans un objet [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) en utilisant l'un de ses constructeurs en spécifiant le nom du document avec son extension de format.
1. Appelez l'une des méthodes [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) sur l'objet **Document** et spécifiez le format de sortie souhaité comme PDF en entrant un nom de fichier avec le ".PDF" extension.

L'exemple de code suivant montre comment convertir un document de DOCX en PDF à l'aide de la méthode `Save`:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "docx-to-pdf.h" >}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% alert color="primary" %}}

Parfois, il est nécessaire de spécifier des options supplémentaires, ce qui peut affecter le résultat de l'enregistrement d'un document en tant que PDF. Ces options peuvent être spécifiées en utilisant la classe [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/), contenant des propriétés qui déterminent comment la sortie PDF sera affichée.

Notez qu'avec la même technique, vous pouvez convertir n'importe quel document au format de mise en page de flux au format PDF.

{{% /alert %}}

### Convertir en différentes normes PDF {#converting-to-various-pdf-standards}

Aspose.Words fournit l'énumération [PdfCompliace](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/) pour prendre en charge la conversion de DOC ou DOCX en diverses normes de format PDF (telles que PDF 1.7, PDF 1.5, etc.).

L'exemple de code suivant montre comment convertir un document en PDF 1.7 en utilisant [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) avec la conformité à PDF 17:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "conversion-to-pdf17.h" >}}

## Convertir des images en PDF {#convert-an-image-to-pdf}

La conversion en PDF n'est pas limitée par les formats de document Microsoft Word. Tout format pris en charge par Aspose.Words, y compris créé par programmation, peut également être converti en PDF. Par exemple, nous pouvons convertir des images d'une seule page, telles que JPEG, PNG, BMP, EMF ou WMF, ainsi que des images de plusieurs pages, telles que TIFF et GIF, en PDF.

L'exemple de code suivant montre comment convertir des images JPEG et TIFF en PDF:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "image-to-pdf.h" >}}

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "convert-image-to-pdf.h" >}}

Pour que ce code fonctionne, vous devez ajouter des références à Aspose.Words et `System.Drawing` à votre projet.

## Voir Aussi

- L'article [Rendu](/words/cpp/rendering/) pour plus d'informations sur les formats de page fixe et de mise en page de flux
- L'article [Conversion au format de page fixe](/words/cpp/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) pour plus d'informations sur la mise en page
- L'article [Spécifiez les options de rendu Lors de la conversion en PDF](/words/cpp/specify-rendering-options-when-converting-to-pdf/) pour plus d'informations sur l'utilisation de la classe `PdfSaveOptions`
