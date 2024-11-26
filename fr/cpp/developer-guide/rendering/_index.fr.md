---
title: Rendu en C++
second_title: Aspose.Words pour C++
articleTitle: Rendu
linktitle: Rendu
description: "Utilisation Aspose.Words pour C++ fonction de rendu pour formater un document de mise en page de flux en pages et convertir un tel document ou des pages sélectionnées en d'autres documents (PDF, HTML, XPS, etc.) ou des images (TIFF, PNG, SVG, etc.) formats pour la visualisation, les conversions ultérieures ou l'impression."
type: docs
weight: 20
url: /fr/cpp/rendering/
timestamp: 2024-01-30-16-22-34
---

Nous utilisons le terme "rendu" dans Aspose.Words pour décrire le processus de conversion d'un document en un format de fichier ou un support paginé ou ayant le concept de pages. Nous parlons du rendu d'un document en pages. Le diagramme suivant montre quel est le rendu dans Aspose.Words.

![rendering-aspose-words-cpp](rendering-1.png)

Les fonctions de rendu de Aspose.Words vous permettent d'effectuer les opérations suivantes:

- Convertissez un document ou des pages sélectionnées aux formats PDF, XPS, HTML, XAML, PostScript et PCL.
- Convertissez un document en un document TIFF de plusieurs pages ou convertissez n'importe quelle page en une image raster et enregistrez-la au format BMP, PNG ou JPEG.
- Convertissez une page de document en une image graphique vectorielle évolutive (SVG), ou convertissez-la en une image vectorielle et enregistrez - la au format EMF.
- Affichez (dessinez) une page de document à une taille ou une échelle spécifique sur l'objet `Graphics` pour créer des vignettes, des images en taille réelle ou à l'échelle des pages du document.
- Restituez un objet [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) séparément du document dans n'importe quel format d'image ou dans un objet `Graphics`.
- Afficher n'importe quelle page d'un document sous une forme Windows.

## Formats de document à mise en page fluide ou à mise en page fixe {#flow-layout-or-fixed-layout-document-formats}

La plupart des formats de document qui peuvent être chargés dans Aspose.Words sont connus sous le nom de formats de "mise en page de flux". Les formats de mise en page de flux incluent DOC, OOXML, RTF, ODT et HTML. Les documents dans ces formats sont constitués de divers éléments tels que des paragraphes, des tableaux, des en-têtes, des pieds de page, des images, des champs et leur mise en forme, par exemple, gras, italique, police, taille. Cependant, les formats de mise en page de flux ne contiennent pas d'informations sur la position où chaque paragraphe ou caractère particulier est affiché sur une page.

En revanche, les formats de" mise en page fixe "(également appelés" page fixe") tels que PDF et XPS contiennent des informations de positionnement exactes pour tous les éléments du document. Ces formats préservent l'aspect d'origine d'un document après sa mise en page, offrant une plus grande précision des informations affichées.

## Moteur de mise en page {#page-layout-engine}

Aspose.Words implémente son propre moteur de mise en page qui formate un document de mise en page de flux en pages. Aspose.Words implémente un certain nombre de moteurs de rendu qui produisent soit un document à mise en page fixe tel que PDF ou XPS, soit des pages de sortie sur un autre support tel que l'impression ou le dessin. Notez que l'exportation peut également être paginée pour HTML et XAML. Cela signifie qu'un document peut être enregistré en HTML ou XAML standard (format de mise en page de flux), ou en HTML et XAML "paginés" qui présentent des positions absolues des éléments.

L'avantage le plus important de l'utilisation du moteur de mise en page Aspose.Words est qu'il imite le fonctionnement du moteur de mise en page de Microsoft Word. Par conséquent, lorsque vous convertissez un document Microsoft Word en PDF, XPS ou que vous l'imprimez à l'aide de Aspose.Words, la sortie apparaîtra presque exactement comme si elle avait été effectuée par Microsoft Word. Notez que Aspose.Words n'utilise pas Microsoft Word.
