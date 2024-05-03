---
title: Formes de rendu Séparément d'un document
second_title: Aspose.Words pour Java
articleTitle: Formes de rendu Séparément d'un document
linktitle: Formes de rendu Séparément d'un document
description: "Extraire divers objets graphiques, tels que des images, une boîte de texte contenant des paragraphes ou des formes de flèches, lors du traitement d'un document, et les exporter vers un emplacement externe en utilisant Java."
type: docs
weight: 40
url: /fr/java/rendering-shapes-separately-from-a-document/
---

Lors du traitement des documents, une tâche courante consiste à extraire toutes les images trouvées dans le document et à les exporter vers un emplacement externe. Cette tâche devient simple avec la Aspose.Words API, qui fournit déjà la fonctionnalité pour extraire et enregistrer des données d'image. Cependant, parfois, vous pouvez vouloir extraire de la même façon d'autres types de contenu graphique qui sont représentés par un autre type d'objet de dessin, par exemple, une boîte de texte contenant des paragraphes, des formes de flèche et une petite image. Il n'y a pas de façon simple de rendre cet objet puisqu'il s'agit d'une combinaison d'éléments de contenu individuels. Vous pouvez également rencontrer un cas lorsque le contenu a été groupé dans l'objet qui ressemble à une seule image.

Aspose.Words fournit des fonctionnalités pour extraire ce type de contenu de la même manière que vous pouvez extraire une image simple de forme comme contenu rendu. Cet article décrit comment utiliser cette fonctionnalité pour rendre les formes indépendamment du document.

## Types de formes Aspose.Words

Tout le contenu d'une couche de dessin de document est représenté par la [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) ou [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) le noeud dans le Aspose.Words Module d'objet de document (DOM). Ces contenus peuvent être des boîtes de texte, des images, des AutoShapes, des objets OLE, etc. Certains champs sont également importés comme formes, par exemple, le `INCLUDEPICTURE` sur le terrain.

Une image simple est représentée par **Shape** noeud de [ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE). Ce noeud de forme n'a pas de nœuds d'enfant mais les données d'image contenues dans ce noeud de forme peuvent être accédées par le [Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) propriété. D'autre part, une forme peut également être composée de nombreux nœuds d'enfants. Par exemple, une forme de boîte de texte, qui est représentée par la [ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX) propriété, peut être constitué de nombreux noeuds, comme [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) et [Table](https://reference.aspose.com/words/java/com.aspose.words/table/). La plupart des formes peuvent inclure **Paragraph** et **Table** noeuds de niveau bloc. Ce sont les mêmes nœuds que ceux apparaissant dans le corps principal. Les formes sont toujours des parties de certains paragraphes, soit incluses directement en ligne, soit ancrées au **Paragraphe** mais "flottant" n'importe où dans la page du document.

![rendering-shapes-separately-from-a-document-aspose-words-java-1](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Un document peut aussi contenir des formes regroupées. Grouping peut être activé en Microsoft Word en sélectionnant plusieurs objets et en cliquant surGroupDans le menu clic droit.

![rendering-shapes-separately-from-a-document-aspose-words-java-2](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

En Aspose.Words, ces groupes de formes sont représentés par [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) noeud. Ceux-ci peuvent également être invoqués de la même manière pour rendre le groupe entier à l'image.

![rendering-shapes-separately-from-a-document-aspose-words-java-3](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Le format DOCX peut contenir des types spéciaux d'images, comme des diagrammes ou des graphiques. Ces formes sont également représentées à travers le **Shape** noeud en Aspose.Words, qui fournit également une méthode similaire pour les rendre comme des images. Par conception, une forme ne peut contenir une autre forme en tant qu'enfant, sauf si cette forme est une image (**ShapeType.Image**). Par exemple, Microsoft Word ne vous permet pas d'insérer une zone de texte dans une autre zone de texte.

Les types de formes décrits ci-dessus fournissent une méthode spéciale pour rendre les formes à travers la [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) En cours. Un exemple de **ShapeRenderer** classe est récupérée pour un **Shape** ou **GroupShape** à travers les **GetShapeRenderer** ou en passant **Shape** au constructeur du **ShapeRenderer** En cours. Cette classe donne accès aux membres, ce qui permet de rendre une forme à ce qui suit:

- Fichier sur le disque en utilisant [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) surcharge de la méthode
- Flux utilisant la [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions) surcharge de la méthode
- Graphiques Objet en utilisant [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float) et [RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) méthodes

{{% alert color="primary" %}}

Lorsque vous produisez une <span notrans="<span notrans=" **Shape**"=""></span>""> il doit faire partie de la hiérarchie des documents. Si **Shape** n'est pas une partie de l'arborescence de document alors la sortie rendue sera vide après avoir invoqué **ShapeRenderer** méthodes.

{{% /alert %}}

## Rendu au fichier ou au flux

Les [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) méthode fournit des surcharges qui rendent une forme directement à un fichier ou un flux. Les deux surcharges acceptent un exemple de [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) classe, qui permet de définir des options pour rendre la forme. Cela fonctionne de la même manière que le [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) méthode. Même si ce paramètre est requis, vous pouvez passer une valeur null, en spécifiant qu'il n'y a pas d'options personnalisées.

La forme peut être exportée dans n'importe quel format d'image spécifié dans le [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) Énumération. Par exemple, l'image peut être rendue comme image raster, comme JPEG en spécifiant [SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG) énumération, ou en tant qu'image vectorielle, comme EMF en spécifiant [SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF).

L'exemple de code ci-dessous illustre le rendu d'une forme à une image EMF séparément du document, et l'enregistrement sur disque:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

L'exemple de code ci-dessous illustre la forme d'une image JPEG séparément du document et l'enregistrement dans un flux:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

Les **ImageSaveOptions** classe vous permet de spécifier une variété d'options qui contrôlent la façon dont l'image est rendue. La fonctionnalité décrite ci-dessus peut être appliquée de la même manière à **GroupShape** et **Shape** les noeuds.

## La soumission à une `Graphics` Objet

Rendu directement à une **Graphics** objet vous permet de définir vos propres paramètres et l'état **Graphics** objet. Un scénario commun implique de transformer une forme directement en un **Graphics** objet récupéré d'un Windows Forme ou Bitmap. Lorsque **Shape** noeud est rendu, les paramètres affecteront l'apparence de la forme. Par exemple, vous pouvez faire tourner ou à l'échelle la forme en utilisant la **RotateTransform** ou **ScaleTransform** méthodes pour **Graphics** objet.

L'exemple ci-dessous montre comment rendre une forme à une **Graphics** objet séparé du document et appliquer la rotation à l'image rendue:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

De même, [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float) méthode, [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)méthode héritée de la [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) est utile pour créer des vignettes de contenu de document. La taille de la forme est spécifiée par le constructeur. Les **RenderToSize** méthode accepte la **Graphics** objet, les coordonnées X et Y de la position de l'image, et la taille de l'image (largeur et hauteur) qui sera tracée sur le **Graphics** objet.

Les **Shape** peut être rendu à une certaine échelle en utilisant [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) méthode héritée de la [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) En cours. Cela est similaire à la [Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) méthode qui accepte les mêmes paramètres majeurs. La différence entre ces deux méthodes est que **ShapeRenderer.RenderToScale** méthode, au lieu d'une taille littérale, vous choisissez une valeur flottante qui échelle la forme pendant son rendu. Si la valeur du flotteur est égale à 1,0, la forme est rendue à 100 % de sa taille originale. Une valeur de flotteur de 0,5 réduit de moitié la taille de l'image.

## Rendu d'une image de forme

Les [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) classe représente des objets dans le calque de dessin, comme une AutoShape, une boîte de texte, freeform, un objet OLE, un contrôle ActiveX ou une image. Utilisation **Shape** classe, vous pouvez créer ou modifier des formes dans un Microsoft Word document. Une propriété importante d'une forme est [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Les formes de différents types peuvent avoir des capacités différentes dans un document Word. Par exemple, seules les images et les formes OLE peuvent avoir des images à l'intérieur alors que la plupart des formes ne peuvent avoir que du texte.

L'exemple suivant montre comment rendre une image en forme à une image JPEG séparément du document et la sauvegarder sur le disque:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## Récupération d'une taille de forme

Les [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) classe fournit également des fonctionnalités pour récupérer la taille de la forme en pixels [GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) méthode. Cette méthode accepte deux paramètres de flotteur (Single) – l'échelle et le DPI, qui sont utilisés dans le calcul de la taille de la forme lorsque la forme est rendue. La méthode renvoie la [Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) objet, qui contient la largeur et la hauteur de la taille calculée. Ceci est utile lorsqu'il est nécessaire de connaître la taille de la forme rendue à l'avance, par exemple lors de la création d'un nouveau Bitmap à partir de la sortie rendue.

L'exemple ci-dessous montre comment créer un nouvel objet Bitmap et Graphics avec la largeur et la hauteur de la forme à rendre:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

Lorsque vous utilisez **RenderToSize** ou **RenderToScale** méthodes, la taille d'image rendue est également retournée dans le [SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float) objet. Ceci peut être attribué à une variable et utilisé si nécessaire.

Les **SizeInPoints** la propriété retourne la taille de la forme mesurée en points (voir [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)). Le résultat est `SizeF` objet contenant la largeur et la hauteur.
