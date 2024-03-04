---
title: Rendu des formes séparément du document
second_title: Aspose.Words pour .NET
articleTitle: Rendu des formes séparément d'un document
linktitle: Rendu des formes séparément d'un document
description: "Extrayez divers objets graphiques, tels que des images, des zones de texte contenant des paragraphes ou des formes de flèches, lors du traitement d'un document, et exportez-les vers un emplacement externe à l'aide de C#."
type: docs
weight: 40
url: /fr/net/rendering-shapes-separately-from-a-document/
---

Lors du traitement de documents, une tâche courante consiste à extraire toutes les images trouvées dans le document et à les exporter vers un emplacement externe. Cette tâche devient simple avec le Aspose.Words API, qui fournit déjà la fonctionnalité d'extraction et de sauvegarde des données d'image. Cependant, vous souhaiterez parfois extraire de la même manière d'autres types de contenu graphique représenté par un type différent d'objet de dessin, par exemple une zone de texte contenant des paragraphes, des formes de flèches et une petite image. Il n'existe pas de moyen simple de restituer cet objet puisqu'il s'agit d'une combinaison d'éléments de contenu individuels. Vous pouvez également rencontrer un cas où le contenu a été regroupé dans un objet qui ressemble à une seule image.

Aspose.Words fournit des fonctionnalités pour extraire ce type de contenu de la même manière que vous pouvez extraire une image simple d'une forme en tant que contenu rendu. Cet article décrit comment utiliser cette fonctionnalité pour restituer des formes indépendamment du document.

## Types de formes dans Aspose.Words

Tout le contenu d'une couche de dessin de document est représenté par le nœud [Shape](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shape/) ou [GroupShape](https://reference.aspose.com/words/fr/net/aspose.words.drawing/groupshape/) dans le module DOM (Aspose.Words Document Object Module). Ce contenu peut être des zones de texte, des images, des formes automatiques, des objets OLE, etc. Certains champs sont également importés sous forme de formes, par exemple le champ `INCLUDEPICTURE`.

Une image simple est représentée par un nœud **Shape** de [ShapeType.Image](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shapetype/). Ce nœud de forme n'a pas de nœuds enfants mais les données d'image contenues dans ce nœud de forme sont accessibles via la propriété [Shape.ImageData](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shape/imagedata/). D’un autre côté, une forme peut également être composée de nombreux nœuds enfants. Par exemple, une forme de zone de texte, représentée par la propriété [ShapeType.TextBox](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shapetype/), peut être composée de nombreux nœuds, tels que [Paragraph](https://reference.aspose.com/words/fr/net/aspose.words/paragraph/) et [Table](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/). La plupart des formes peuvent inclure les nœuds au niveau du bloc **Paragraph** et **Table**. Ce sont les mêmes nœuds que ceux apparaissant dans le corps principal. Les formes font toujours partie d'un paragraphe, soit incluses directement en ligne, soit ancrées au **Paragraphe,** mais "flottantes" n'importe où dans la page du document.

![rendering-shapes-separately-from-a-document_1](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Un document peut également contenir des formes regroupées. Grouping peut être activé dans Microsoft Word en sélectionnant plusieurs objets et en cliquant sur "Group" dans le menu contextuel.

![rendering-shapes-separately-from-a-document_2](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

Dans Aspose.Words, ces groupes de formes sont représentés par le nœud [GroupShape](https://reference.aspose.com/words/fr/net/aspose.words.drawing/groupshape/). Ceux-ci peuvent également être invoqués de la même manière pour restituer l’ensemble du groupe en image.

![rendering-shapes-separately-from-a-document_3](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Le format DOCX peut contenir des types spéciaux d'images, tels que des diagrammes ou des graphiques. Ces formes sont également représentées via le nœud **Shape** en Aspose.Words, qui fournit également une méthode similaire pour les restituer sous forme d'images. De par sa conception, une forme ne peut pas contenir une autre forme en tant qu'enfant, sauf si cette forme est une image (**ShapeType.Image**). Par exemple, Microsoft Word ne vous permet pas d'insérer une zone de texte dans une autre zone de texte.

Les types de formes décrits ci-dessus fournissent une méthode spéciale pour restituer les formes via la classe [ShapeRenderer](https://reference.aspose.com/words/fr/net/aspose.words.rendering/shaperenderer/). Une instance de la classe **ShapeRenderer** est récupérée pour un **Shape** ou un **GroupShape** via la méthode **GetShapeRenderer** ou en passant le **Shape** au constructeur de la classe **ShapeRenderer**. Cette classe donne accès aux membres, qui permettent de restituer une forme aux éléments suivants:

- Fichier sur le disque en utilisant la méthode [Save](https://reference.aspose.com/words/fr/net/aspose.words.rendering/noderendererbase/save/) surchargée
- Stream utilisant la surcharge de la méthode [Save](https://reference.aspose.com/words/fr/net/aspose.words.rendering/noderendererbase/save/)
- Objet graphique .NET en utilisant les méthodes [RenderToSize](https://reference.aspose.com/words/fr/net/aspose.words.rendering/noderendererbase/rendertosize/) et [RenderToScale](https://reference.aspose.com/words/fr/net/aspose.words.rendering/noderendererbase/rendertoscale/)

{{% alert color="primary" %}}

Lors du rendu d'un **Shape**, il doit faire partie de la hiérarchie du document. Si le **Shape** ne fait pas partie de l'arborescence du document, la sortie rendue sera vide après l'appel des méthodes **ShapeRenderer**.

{{% /alert %}}

## Rendu dans un fichier ou un flux

La méthode [Save](https://reference.aspose.com/words/fr/net/aspose.words.rendering/noderendererbase/save/) fournit des surcharges qui restituent une forme directement dans un fichier ou un flux. Les deux surcharges acceptent une instance de la classe [ImageSaveOptions](https://reference.aspose.com/words/fr/net/aspose.words.saving/imagesaveoptions/), qui permet de définir des options de rendu de la forme. Cela fonctionne de la même manière que la méthode [Document.Save](https://reference.aspose.com/words/fr/net/aspose.words/document/save/#save). Même si ce paramètre est obligatoire, vous pouvez transmettre une valeur nulle, spécifiant qu'il n'existe aucune option personnalisée.

La forme peut être exportée dans n'importe quel format d'image spécifié dans l'énumération [SaveFormat](https://reference.aspose.com/words/fr/net/aspose.words/saveformat/). Par exemple, l'image peut être rendue sous forme d'image raster, telle que JPEG en spécifiant l'énumération [SaveFormat.Jpeg](https://reference.aspose.com/words/fr/net/aspose.words/saveformat/), ou sous forme d'image vectorielle, telle que EMF en spécifiant [SaveFormat.Emf](https://reference.aspose.com/words/fr/net/aspose.words/saveformat/).

L'exemple de code ci-dessous illustre le rendu d'une forme sur une image EMF séparément du document et son enregistrement sur le disque:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToDisk.cs" >}}

L'exemple de code ci-dessous illustre le rendu d'une forme sur une image JPEG séparément du document et son enregistrement dans un flux:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToStream.cs" >}}

La classe **ImageSaveOptions** vous permet de spécifier une variété d'options qui contrôlent la manière dont l'image est rendue. La fonctionnalité décrite ci-dessus peut être appliquée de la même manière aux nœuds **GroupShape** et **Shape**.

## Rendu vers un objet graphique .NET

Le rendu directement vers un objet **Graphics** vous permet de définir vos propres paramètres et l'état de l'objet **Graphics**. Un scénario courant implique le rendu d'une forme directement dans un objet **Graphics** récupéré à partir d'un formulaire Windows ou d'un Bitmap. Lorsque le nœud **Shape** est rendu, les paramètres affecteront l'apparence de la forme. Par exemple, vous pouvez faire pivoter ou mettre à l'échelle la forme à l'aide des méthodes **RotateTransform** ou **ScaleTransform** pour l'objet **Graphics**.

L'exemple ci-dessous montre comment restituer une forme sur un objet .**NET Graphics** séparément du document et appliquer une rotation à l'image rendue:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cs" >}}

De la même manière que la méthode [RenderToSize](https://reference.aspose.com/words/fr/net/aspose.words/document/rendertosize/), la méthode [Rendu vers taille](https://reference.aspose.com/words/fr/net/aspose.words.rendering/noderendererbase/rendertosize/) héritée du [NodeRendererBase](https://reference.aspose.com/words/fr/net/aspose.words.rendering/noderendererbase/) est utile pour créer des vignettes du contenu d'un document. La taille de la forme est spécifiée via le constructeur. La méthode **RenderToSize** accepte l'objet **Graphics**, les coordonnées X et Y de la position de l'image et la taille de l'image (largeur et hauteur) qui sera dessinée sur l'objet **Graphics**.

Le **Shape** peut être rendu à une certaine échelle en utilisant la méthode [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/fr/net/aspose.words.rendering/noderendererbase/rendertoscale/) héritée de la classe [NodeRendererBase](https://reference.aspose.com/words/fr/net/aspose.words.rendering/noderendererbase/). Ceci est similaire à la méthode [Document.RenderToScale](https://reference.aspose.com/words/fr/net/aspose.words/document/rendertoscale/) qui accepte les mêmes paramètres principaux. La différence entre ces deux méthodes est qu'avec la méthode **ShapeRenderer.RenderToScale**, au lieu d'une taille littérale, vous choisissez une valeur flottante qui met à l'échelle la forme lors de son rendu. Si la valeur float est égale à 1,0, la forme sera rendue à 100 % de sa taille d'origine. Une valeur flottante de 0,5 réduira la taille de l'image de moitié.

## Rendu d'une image de forme

La classe [Shape](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shape/) représente les objets du calque de dessin, tels qu'une forme automatique, une zone de texte, une forme libre, un objet OLE, un contrôle ActiveX ou une image. À l'aide de la classe **Shape**, vous pouvez créer ou modifier des formes dans un document Microsoft Word. Une propriété importante d'une forme est son [ShapeType](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shape/base/properties/shapetype). Les formes de différents types peuvent avoir différentes fonctionnalités dans un document Word. Par exemple, seules les images et les formes OLE peuvent contenir des images, tandis que la plupart des formes ne peuvent contenir que du texte.

L'exemple suivant montre comment restituer une image Shape en image JPEG séparément du document et l'enregistrer sur le disque:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeImage.cs" >}}

## Récupération d'une taille de forme

La classe [ShapeRenderer](https://reference.aspose.com/words/fr/net/aspose.words.rendering/shaperenderer/) fournit également des fonctionnalités permettant de récupérer la taille de la forme en pixels via la méthode [GetSizeInPixels](https://reference.aspose.com/words/fr/net/aspose.words.rendering/noderendererbase/getsizeinpixels/). Cette méthode accepte deux paramètres flottants (simples): l'échelle et le DPI, qui sont utilisés dans le calcul de la taille de la forme lors du rendu de la forme. La méthode renvoie l'objet [Size](https://reference.aspose.com/words/fr/net/aspose.words.rendering/noderendererbase/getsizeinpixels/), qui contient la largeur et la hauteur de la taille calculée. Ceci est utile lorsqu'il est nécessaire de connaître à l'avance la taille de la forme rendue, par exemple lors de la création d'un nouveau Bitmap à partir de la sortie rendue.

L'exemple ci-dessous montre comment créer un nouvel objet Bitmap et Graphics avec la largeur et la hauteur de la forme à restituer:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-FindShapeSizes.cs" >}}

Lors de l'utilisation des méthodes **RenderToSize** ou **RenderToScale**, la taille de l'image rendue est également renvoyée dans l'objet [SizeF](https://reference.aspose.com/words/fr/net/aspose.words.rendering/noderendererbase/rendertoscale/). Celui-ci peut être affecté à une variable et utilisé si nécessaire.

La propriété **SizeInPoints** renvoie la taille de la forme mesurée en points (voir [ShapeRenderer](https://reference.aspose.com/words/fr/net/aspose.words.rendering/shaperenderer/). Le résultat est un objet `SizeF` contenant la largeur et la hauteur.
