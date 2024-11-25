---
title: Convertir un document en PDF dans Java
second_title: Aspose.Words pour Java
articleTitle: Convertir un document en PDF
linktitle: Convertir un document en PDF
description: "Convertissez un document dans Word ou tout autre format pris en charge en PDF, ce qui préserve l'apparence d'origine d'un document lors de son rendu sur diverses plates-formes à l'aide de Java."
type: docs
weight: 10
url: /fr/java/convert-a-document-to-pdf/
timestamp: 2024-01-31-14-23-37
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

1. Chargez votre document dans un objet [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) en utilisant l'un de ses constructeurs en spécifiant le nom du document avec son extension de format.
1. Appelez l'une des méthodes [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) sur l'objet **Document** et spécifiez le format de sortie souhaité comme PDF en entrant un nom de fichier avec le ".PDF" extension.

L'exemple de code suivant montre comment convertir un document de DOCX en PDF à l'aide de la méthode `Save`:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc).

{{% alert color="primary" %}}

Parfois, il est nécessaire de spécifier des options supplémentaires, ce qui peut affecter le résultat de l'enregistrement d'un document en tant que PDF. Ces options peuvent être spécifiées en utilisant la classe [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/), contenant des propriétés qui déterminent comment la sortie PDF sera affichée.

Notez qu'avec la même technique, vous pouvez convertir n'importe quel document au format de mise en page de flux au format PDF.

{{% /alert %}}

### Convertir en différentes normes PDF {#converting-to-various-pdf-standards}

Aspose.Words fournit l'énumération [PdfCompliace](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)pour prendre en charge la conversion de DOC ou DOCX en diverses normes de format PDF (telles que PDF 1.7, PDF 1.5, etc.).

L'exemple de code suivant montre comment convertir un document en PDF 1.7 en utilisant [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) avec la conformité à PDF17:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## Convertir des images en PDF

La conversion en PDF n'est pas limitée par les formats de document Microsoft Word. Tout format pris en charge par Aspose.Words, y compris créé par programmation, peut également être converti en PDF. Par exemple, nous pouvons convertir des images d'une seule page, telles que JPEG, PNG, BMP, EMF, ou WMF, ainsi que des images de plusieurs pages, telles que TIFF et GIF, à PDF.

L'exemple de code suivant montre comment convertir des images JPEG et TIFF en PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

Pour que ce code fonctionne, vous devez ajouter des références à Aspose.Words, Java.tta.image et javax.packages de classe imageio pour votre projet.

## Réduire la Taille de sortie PDF

Lors de l'enregistrement dans PDF, vous pouvez spécifier si vous souhaitez optimiser la sortie. Pour ce faire, vous devez définir l'indicateur [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) sur true, puis les toiles imbriquées redondantes et les toiles vides seront supprimées, les glyphes voisins avec la même mise en forme seront concaténés.

L'exemple de code suivant montre comment optimiser la sortie:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

L'utilisation de la propriété **OptimizeOutput** peut affecter la précision de l'affichage du contenu.

{{% /alert %}}

## Voir Aussi

- L'article [Rendu](/words/java/rendering/) pour plus d'informations sur les formats de page fixe et de mise en page de flux
- L'article [Conversion au format de page fixe](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) pour plus d'informations sur la mise en page
- L'article [Spécifiez les options de rendu Lors de la conversion en PDF](/words/java/specify-rendering-options-when-converting-to-pdf/) pour plus d'informations sur l'utilisation de la classe `PdfSaveOptions`
