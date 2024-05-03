---
title: Convertir un document en PDF Java
second_title: Aspose.Words pour Java
articleTitle: Convertir un document en PDF
linktitle: Convertir un document en PDF
description: "Convertissez un document en Word ou dans tout autre format pris en charge en PDF, qui préserve l'apparence originale d'un document lors de son rendu sur différentes plateformes en utilisant Java."
type: docs
weight: 10
url: /fr/java/convert-a-document-to-pdf/
---

La possibilité de convertir facilement et de manière fiable les documents d'un format à un autre est une caractéristique clé de Aspose.Words. L'un des formats les plus populaires pour la conversion est PDF – un format de mise en page fixe, qui préserve l'apparence originale d'un document lors de son rendu sur différentes plateformes. Le terme "rendering" est utilisé dans Aspose.Words décrire le processus de conversion d'un document en un format de fichier paginé ou ayant le concept de pages.

## Convertir un document Word en PDF {#convert-a-word-document-to-pdf}

La conversion de Word en PDF est un processus assez complexe qui nécessite plusieurs étapes de calcul. Aspose.Words le moteur de mise en page imite la façon dont le Microsoft WordLe moteur de mise en page fonctionne, ce qui rend les documents de sortie PDF aussi proches que possible de ce que vous pouvez voir dans Microsoft Word.

Avec Aspose.Words vous pouvez convertir programmatiquement un document du format DOC ou DOCX en PDF sans utiliser Microsoft Bureau. Cet article explique comment effectuer cette conversion.

{{% alert color="primary" %}}

Notez que le nombre de pages d'un document affecte le temps de conversion.

{{% /alert %}}

### Convertir DOCX ou DOC en PDF {#converting-doc-or-docx-to-pdf}

Conversion du format DOC ou DOCX en format PDF Aspose.Words est très facile et peut être accompli avec seulement deux lignes de code qui:

1. Chargez votre document dans un [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) objet utilisant l'un de ses constructeurs en spécifiant le nom du document avec son extension de format.
1. Invoquer l'un des [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) méthodes sur le **Document** objet et spécifier le format de sortie souhaité en format PDF en entrant un nom de fichier avec l'extension.

L'exemple de code suivant montre comment convertir un document de DOCX en PDF `Save` méthode:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc).

{{% alert color="primary" %}}

Parfois, il est nécessaire de spécifier des options supplémentaires, qui peuvent affecter le résultat de la sauvegarde d'un document en format PDF. Ces options peuvent être spécifiées par l'utilisation de [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) classe, contenant des propriétés qui déterminent comment la sortie PDF sera affichée.

Notez qu'avec la même technique, vous pouvez convertir n'importe quel document format de distribution en format PDF.

{{% /alert %}}

### Convertir en différents PDF Normes {#converting-to-various-pdf-standards}

Aspose.Words fournit les [PdfCompliace](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)énumération pour soutenir la conversion du DOC ou DOCX en différents formats PDF (tels que PDF 1.7, PDF 1.5, etc.).

L'exemple de code suivant montre comment convertir un document en PDF 1.7 en utilisant [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) conformité au document PDF17:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## Convertir les images en PDF

La conversion en PDF n'est pas limitée par Microsoft Word les formats de documents. Tout format supporté par Aspose.Words, y compris programmatiquement créé, peut également être converti en PDF. Par exemple, nous pouvons convertir des images d'une seule page, comme JPEG, PNG, BMP, EMF ou WMF, ainsi que des images multi-pages, comme TIFF et GIF, en PDF.

L'exemple de code suivant montre comment convertir les images JPEG et TIFF en PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

Pour que ce code fonctionne, vous devez ajouter des références à Aspose.Words, Java.awt.image, et javax. packages de classe imageio pour votre projet.

## Réduire le format PDF Taille de sortie

Lors de l'enregistrement en PDF, vous pouvez spécifier si vous voulez optimiser la sortie. Pour ce faire, vous devez [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) drapeau true, puis redondantes toiles nichées et toiles vides seront enlevées, voisin glyphs avec le même formatage sera concaténé.

L'exemple de code suivant montre comment optimiser la sortie:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

Utilisation **OptimizeOutput** propriété peut affecter l'exactitude de l'affichage du contenu.

{{% /alert %}}

## Voir aussi

- L'article [Rendus](/words/fr/java/rendering/) pour plus d'informations sur les formats de page fixe et de diffusion
- L'article [Conversion en format de page fixe](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) pour plus d'informations sur la mise en page
- L'article [Spécifier les options de rendez-vous de la conversion en PDF](/words/fr/java/specify-rendering-options-when-converting-to-pdf/) pour plus d'informations sur l'utilisation `PdfSaveOptions` classe
