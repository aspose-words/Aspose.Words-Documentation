---
title: Rendu des formes Séparément d'un document
second_title: Aspose.Words pour C++
articleTitle: Rendu des formes Séparément d'un document
linktitle: Rendu des formes Séparément d'un document
description: "Extrayez divers objets graphiques, tels que des images, une zone de texte contenant des paragraphes ou des formes de flèche, lors du traitement d'un document, et exportez-les vers un emplacement externe."
type: docs
weight: 40
url: /fr/cpp/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

Lors du traitement des documents, une tâche courante consiste à extraire toutes les images trouvées dans le document et à les exporter vers un emplacement externe. Cette tâche devient simple avec l'API Aspose.Words, qui fournit déjà la fonctionnalité d'extraction et d'enregistrement des données d'image. Cependant, vous souhaiterez parfois extraire de la même manière d'autres types de contenu graphique représentés par un autre type d'objet de dessin, par exemple une zone de texte contenant des paragraphes, des formes de flèche et une petite image. Il n'y a pas de moyen simple de rendre cet objet car il s'agit d'une combinaison d'éléments de contenu individuels. Vous pouvez également rencontrer un cas où le contenu a été regroupé dans l'objet qui ressemble à une seule image.

Aspose.Words fournit des fonctionnalités pour extraire ce type de contenu de la même manière que vous pouvez extraire une image simple de la forme en tant que contenu rendu. Cet article décrit comment utiliser cette fonctionnalité pour rendre des formes indépendamment du document.

## Types de formes dans Aspose.Words

Tout le contenu d'une couche de dessin de document est représenté par le nœud [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) ou [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) dans le module d'objet de document Aspose.Words (DOM). Ces contenus peuvent être des zones de texte, des images, AutoShapes, des objets OLE,etc. Certains champs sont également importés en tant que formes, par exemple le champ `INCLUDEPICTURE`.

Une image simple est représentée par un **Shape** nœud de [ShapeType.Image](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/). Ce nœud de forme n'a pas de nœuds enfants mais les données d'image contenues dans ce nœud de forme sont accessibles par la propriété [Shape.ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/). D'autre part, une forme peut également être composée de nombreux nœuds enfants. Par exemple, une forme de zone de texte, qui est représentée par la propriété [ShapeType.TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/), peut être composée de nombreux nœuds, tels que [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) et [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/). La plupart des formes peuvent inclure les nœuds de niveau bloc **Paragraph** et **Table**. Ce sont les mêmes nœuds que ceux apparaissant dans le corps principal. Les formes sont toujours des parties d'un paragraphe, soit incluses directement en ligne, soit ancrées au **Paragraph,** mais "flottantes" n'importe où dans la page du document.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-1](rendering-shapes-separately-from-a-document-1.png)

Un document peut également contenir des formes regroupées. Le regroupement peut être activé dans Microsoft Word en sélectionnant plusieurs objets et en cliquant sur "Grouper" dans le menu contextuel.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-2](rendering-shapes-separately-from-a-document-2.png)

Dans Aspose.Words, ces groupes de formes sont représentés par le nœud `GroupShape`. Ceux-ci peuvent également être invoqués de la même manière pour rendre l'ensemble du groupe à l'image.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-3](rendering-shapes-separately-from-a-document-3.png)

Le format DOCX peut contenir des types spéciaux d'images, tels que des diagrammes ou des graphiques. Ces formes sont également représentées par le nœud **Shape** dans Aspose.Words, qui fournit également une méthode similaire pour les rendre sous forme d'images. De par sa conception, une forme ne peut pas contenir une autre forme en tant qu'enfant, sauf si cette forme est une image (**ShapeType.Image**). Par exemple, Microsoft Word ne vous permet pas d'insérer une zone de texte dans une autre zone de texte.

Les types de formes décrits ci-dessus fournissent une méthode spéciale pour rendre les formes à travers la classe [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/). Une instance de la classe **ShapeRenderer** est récupérée pour un **Shape** ou **GroupShape** via la méthode **GetShapeRenderer** ou en passant le **Shape** au constructeur de la classe **ShapeRenderer**. Cette classe donne accès aux membres, qui permettent de rendre une forme aux éléments suivants:

- Fichier sur le disque à l'aide de la surcharge de la méthode [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/)
- Flux utilisant la surcharge de la méthode [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/)
- L'objet `Graphics` en utilisant les méthodes [RenderToSize](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/) et [RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/)

{{% alert color="primary" %}}

Lors du rendu d'un **Shape**, il doit faire partie de la hiérarchie du document. Si le **Shape** ne fait pas partie de l'arborescence du document, la sortie rendue sera vide après l'appel des méthodes **ShapeRenderer**.

{{% /alert %}}

## Rendu dans un fichier ou un flux

La méthode [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) fournit des surcharges qui rendent une forme directement dans un fichier ou un flux. Les deux surcharges acceptent une instance de la classe [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), ce qui permet de définir des options pour le rendu de la forme. Cela fonctionne de la même manière que la méthode [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Même si ce paramètre est obligatoire, vous pouvez transmettre une valeur null, en spécifiant qu'il n'y a pas d'options personnalisées.

La forme peut être exportée dans n'importe quel format d'image spécifié dans l'énumération [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/). Par exemple, l'image peut être rendue en tant qu'image raster, telle que JPEG en spécifiant l'énumération `SaveFormat.Jpeg`, ou en tant qu'image vectorielle, telle que EMF en spécifiant `SaveFormat.Emf`.

L'exemple de code ci-dessous illustre le rendu d'une forme sur une image EMF séparément du document et l'enregistrement sur le disque:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToDisk.cpp" >}}

L'exemple de code ci-dessous illustre le rendu d'une forme sur une image JPEG séparément du document et l'enregistrement dans un flux:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToStream.cpp" >}}

La classe **ImageSaveOptions** vous permet de spécifier une variété d'options qui contrôlent le rendu de l'image. La fonctionnalité décrite ci-dessus peut être appliquée de la même manière aux nœuds **GroupShape** et **Shape**.

## Rendu vers un objet graphique .NET

Le rendu directement sur un objet **Graphics** vous permet de définir vos propres paramètres et l'état de l'objet **Graphics**. Un scénario courant implique le rendu d'une forme directement dans un objet **Graphics** récupéré à partir d'une forme Windows ou d'un Bitmap. Lorsque le nœud **Shape** est rendu, les paramètres affecteront l'apparence de la forme. Par exemple, vous pouvez faire pivoter ou mettre à l'échelle la forme en utilisant les méthodes **RotateTransform** ou **ScaleTransform** pour l'objet **Graphics**.

L'exemple ci-dessous montre comment rendre une forme en a.**NET Graphics** objet séparément du document et appliquer une rotation à l'image rendue:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cpp" >}}

De même, à la méthode [RenderToSize](https://reference.aspose.com/words/cpp/aspose.words/document/rendertosize/), la méthode [RenderToSize ](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/) héritée de la [NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/) est utile pour créer des vignettes du contenu du document. La taille de la forme est spécifiée via le constructeur. La méthode **RenderToSize** accepte l'objet **Graphics**, les coordonnées X et Y de la position de l'image et la taille de l'image (largeur et hauteur) qui sera dessinée sur l'objet **Graphics**.

Le **Shape** peut être rendu à une certaine échelle en utilisant la méthode [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/) héritée de la classe [NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/). Ceci est similaire à la méthode [Document.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words/document/rendertoscale/) qui accepte les mêmes paramètres majeurs. La différence entre ces deux méthodes est qu'avec la méthode **ShapeRenderer.RenderToScale**, au lieu d'une taille littérale, vous choisissez une valeur flottante qui met à l'échelle la forme lors de son rendu. Si la valeur flottante est égale à 1.0 provoque le rendu de la forme à 100% de sa taille d'origine. Une valeur flottante de 0.5 réduira la taille de l'image de moitié.

## Rendu d'une Image de Forme

La classe [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) représente des objets dans le calque de dessin, tels qu'un AutoShape, une zone de texte, une forme libre, un objet OLE, un contrôle ActiveX ou une image. À l'aide de la classe **Shape**, vous pouvez créer ou modifier des formes dans un document Microsoft Word. Une propriété importante d'une forme est son [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/). Des formes de différents types peuvent avoir des capacités différentes dans un document Word. Par exemple, seules les images et les formes OLE peuvent contenir des images, tandis que la plupart des formes ne peuvent contenir que du texte.

L'exemple suivant montre comment convertir une image de forme en image JPEG séparément du document et l'enregistrer sur le disque:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeImage.cpp" >}}

## Récupération d'une taille de Forme

La classe [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/) fournit également des fonctionnalités pour récupérer la taille de la forme en pixels via la méthode [GetSizeInPixels](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/getsizeinpixels/). Cette méthode accepte deux paramètres de type flottant – simples) - l'échelle et le DPI, qui sont utilisés dans le calcul de la taille de la forme lors du rendu de la forme. La méthode renvoie l'objet `Size`, qui contient la largeur et la hauteur de la taille calculée. Ceci est utile lorsqu'il est nécessaire de connaître la taille de la forme rendue à l'avance, par exemple lors de la création d'un nouveau Bitmap à partir de la sortie rendue.

L'exemple ci-dessous montre comment créer un nouvel objet Bitmap et graphique avec la largeur et la hauteur de la forme à rendre:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-FindShapeSizes.cpp" >}}

Lors de l'utilisation des méthodes **RenderToSize** ou **RenderToScale**, la taille de l'image rendue est également renvoyée dans l'objet [SizeF](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/). Cela peut être affecté à une variable et utilisé si nécessaire.

La propriété **SizeInPoints** renvoie la taille de la forme mesurée en points (voir [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/). Un résultat est un objet `SizeF` contenant la largeur et la hauteur.
