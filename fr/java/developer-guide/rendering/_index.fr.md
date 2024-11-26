---
title: Rendu dans Java
second_title: Aspose.Words pour Java
articleTitle: Rendu
linktitle: Rendu
description: "Utilisez la fonction de rendu Aspose.Words pour Java pour formater un document de mise en page de flux en pages et convertir ce document ou les pages sélectionnées en un autre document (PDF, HTML, XPS, etc.) ou image (TIFF, PNG, SVG, etc.) formats pour la visualisation, les conversions ultérieures ou l'impression."
type: docs
weight: 30
url: /fr/java/rendering/
timestamp: 2024-01-27-14-07-04
---

Nous utilisons le terme "rendu" dans Aspose.Words pour décrire le processus de conversion d'un document en un format de fichier ou un support paginé ou ayant le concept de pages. Nous parlons du rendu d'un document en pages. Le diagramme suivant montre quel est le rendu dans Aspose.Words.

![rendering-aspose-words-java](/words/java/rendering/rendering-1.png)

Les fonctions de rendu de Aspose.Words vous permettent d'effectuer les opérations suivantes:

- Convertir un document ou des pages sélectionnées en PDF, XPS, HTML, XAML, PostScript, et PCL formats.
- Convertissez un document en un document TIFF de plusieurs pages ou convertissez n'importe quelle page en une image raster et enregistrez-la sous BMP, PNG ou JPEG.
- Convertissez une page de document en une image graphique vectorielle évolutive (SVG), ou convertissez-la en une image vectorielle et enregistrez-la sous EMF.
- Affichez (dessinez) une page de document à une taille ou une échelle spécifique sur l'objet `Graphics` pour créer des vignettes, des images en taille réelle ou à l'échelle des pages du document.
- Restituez un objet [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) séparément du document dans n'importe quel format d'image ou dans un objet `Graphics`.
- Afficher n'importe quelle page d'un document dans un composant Swing.
- Imprimez ou prévisualisez des pages de document à l'aide de l'infrastructure d'impression standard Java.

## Formats de document à mise en page fluide ou à mise en page fixe {#flow-layout-or-fixed-layout-document-formats}

La plupart des formats de document qui peuvent être chargés dans Aspose.Words sont connus sous le nom de formats de "mise en page de flux". Les formats de disposition de flux incluent DOC, OOXML, RTF, ODT, et HTML. Les documents dans ces formats sont constitués de divers éléments tels que des paragraphes, des tableaux, des en-têtes, des pieds de page, des images, des champs et leur mise en forme, par exemple, gras, italique, police, taille. Cependant, les formats de mise en page de flux ne contiennent pas d'informations sur la position où chaque paragraphe ou caractère particulier est affiché sur une page.

En revanche, les formats de" mise en page fixe "(également appelés" page fixe") tels que PDF et XPS contiennent des informations de positionnement exactes pour tous les éléments du document. Ces formats préservent l'aspect d'origine d'un document après sa mise en page, offrant une plus grande précision des informations affichées.

## Moteur de mise en page {#page-layout-engine}

Aspose.Words implémente son propre moteur de mise en page qui formate un document de mise en page de flux en pages. Aspose.Words implémente un certain nombre de moteurs de rendu qui produisent soit un document à mise en page fixe tel que PDF ou XPS, soit des pages de sortie sur un autre support tel que l'impression ou le dessin. Notez que l'exportation peut également être paginée pour HTML et XAML. Cela signifie qu'un document peut être enregistré en tant que HTML ou XAML standard (format de mise en page de flux), ou en tant que HTML et XAML "paginés" qui présentent des positions absolues d'éléments.

L'avantage le plus important de l'utilisation du moteur de mise en page Aspose.Words est qu'il imite le fonctionnement du moteur de mise en page Microsoft Word. Par conséquent, lorsque vous convertissez un document Microsoft Word en PDF, XPS ou que vous l'imprimez à l'aide de Aspose.Words, la sortie apparaîtra presque exactement comme si elle avait été effectuée par Microsoft Word. Notez que Aspose.Words n'utilise pas Microsoft Word.
