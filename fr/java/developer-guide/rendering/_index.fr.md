---
title: Mise en service Java
second_title: Aspose.Words pour Java
articleTitle: Rendus
linktitle: Rendus
description: "Utilisation Aspose.Words pour Java fonction de rendu pour formater un document de diffusion en pages et convertir un tel document ou des pages sélectionnées en un autre document (PDF, HTML, XPS, ou des formats d'image (TIFF, PNG, SVG, etc.) pour visionner, convertir ou imprimer."
type: docs
weight: 30
url: /fr/java/rendering/
timestamp: 2024-01-27-14-07-04
---

Nous utilisons le terme "rendering" dans Aspose.Words décrire le processus de conversion d'un document en format de fichier ou en support paginé ou ayant le concept de pages. Nous parlons de rendre un document en pages. Le diagramme suivant montre le rendu dans Aspose.Words.

![rendering-aspose-words-java](/words/java/rendering/rendering-1.png)

Les caractéristiques de rendu de Aspose.Words vous permet d'effectuer les opérations suivantes:

- Convertir un document ou des pages sélectionnées en PDF, XPS, Formats HTML, XAML, PostScript et PCL.
- Convertissez un document en document TIFF multi-pages, ou convertissez une page en image raster et enregistrez-le sous BMP, PNG ou JPEG.
- Convertissez une page de document en image vectorielle évolutive (SVG), ou convertissez-la en image vectorielle et enregistrez-la en EMF.
- Rendre (draw) une page de document à une taille ou une échelle spécifique sur le `Graphics` objet pour créer des vignettes, des images grandeur nature ou à l'échelle des pages de document.
- Renvoyez [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) objet séparé du document à tout format d'image ou à un `Graphics` objet.
- Affichez toute page d'un document dans un élément Swing.
- Imprimer ou prévisualiser les pages du document en utilisant la norme Java infrastructure d'impression.

## Étalonnage ou montage fixe Formats des documents {#flow-layout-or-fixed-layout-document-formats}

La plupart des formats de documents qui peuvent être chargés dans Aspose.Words sont connus sous le nom de formats de diffusion de flux. Les formats de distribution de flux comprennent DOC, OOXML, RTF, ODT et HTML. Les documents dans ces formats se composent de divers éléments tels que les paragraphes, les tables, les en-têtes, les pied de page, les images, les champs et leur formatage, par exemple, bold, italic, font, size. Cependant, les formats de distribution de flux ne contiennent pas d'informations sur la position où chaque paragraphe ou caractère est affiché sur une page.

À l'opposé, les formats "fixed-layout" (également appelé "page fixe") tels que PDF et XPS contenir des informations de positionnement exactes pour tous les éléments du document. Ces formats préservent l'apparence originale d'un document après qu'il ait été présenté en pages, ce qui permet d'obtenir une plus grande précision de l'information affichée.

## Moteur de mise en page {#page-layout-engine}

Aspose.Words implémente son propre moteur de mise en page qui formate un document de mise en page en pages. Aspose.Words met en œuvre un certain nombre de rendeurs qui produisent un document de mise en page fixe tel que PDF ou XPS, ou des pages de sortie dans un autre support comme l'impression ou le dessin. Notez que l'exportation peut également être paginée pour HTML et XAML. Cela signifie qu'un document peut être enregistré sous forme de HTML ou XAML (format de distribution de flux), ou sous forme de HTML et de XAML "paginés" qui présentent des positions absolues d'éléments.

L'avantage le plus important d'utiliser Aspose.Words le moteur de mise en page est qu'il imite la façon Microsoft WordLe moteur de mise en page fonctionne. Par conséquent, lorsque vous convertissez une Microsoft Word documenter en PDF, XPS, ou l'imprimer en utilisant Aspose.Words, la sortie apparaîtra presque exactement comme si elle avait été faite par Microsoft Word. Notez que Aspose.Words n'utilise pas Microsoft Word.
