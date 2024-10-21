---
title: Création d'une mise en page en C++
second_title: Aspose.Words pour C++
articleTitle: Création d'une mise en page
linktitle: Création d'une mise en page
description: "La création d'une mise en page peut être une procédure coûteuse. Aspose.Words créera une mise en page uniquement lorsque cela est nécessaire: pour afficher les pages du document, pour obtenir une valeur de champ, pour exporter un document au format HTML, etc."
type: docs
weight: 10
url: /fr/cpp/creating-a-page-layout/
---

La création d'une mise en page peut être une procédure coûteuse, à la fois en termes de vitesse et de mémoire. Cela est dû à plusieurs raisons:

- Le document peut contenir une grande quantité de contenu, qui peut devoir être affiché sur des milliers de pages. La géométrie de chaque objet sur chaque page aurait besoin d'être décrite, consommant des ressources mémoire.
- Le document peut avoir de nombreuses règles, imposant des contraintes à la géométrie. Un temps de calcul considérable peut être consacré, garantissant que chaque contrainte est satisfaite.
- Certaines fonctionnalités du document, par exemple le champ `NUMPAGES`, créent des dépendances récursives pour les valeurs de propriété futures, qui ne sont pas disponibles au moment du calcul. Cela conduit à des calculs répétitifs et s'ajoute au temps de calcul.

Pour les raisons susmentionnées, Aspose.Words créera une mise en page uniquement lorsque cela est nécessaire. Une raison typique à cela serait une demande de rendu des pages de document ou d'obtention d'une valeur de champ qui dépend des informations disponibles dans la mise en page. Une raison moins évidente pourrait être l'exportation d'un document au format HTML. Même si HTML n'est pas un format de page fixe et qu'il ne décrit pas la géométrie des objets de contenu, il prend toujours en charge les images. Ces images peuvent se présenter sous la forme de formes créées dans Microsoft Word avec un texte à l'intérieur. Par exemple, un graphique avec des étiquettes d'axe peut être exporté en HTML sous forme d'image, mais avant que cela puisse être fait, Aspose.Words doit rendre cette image et doit donc savoir où afficher l'étiquette. Voir l'exemple de graphique ci-dessous:

![converting-to-fixed-page-format-aspose-words-cpp-1](converting-to-fixed-page-format-1.png)

## Propriétés Non Géométriques

En plus de gérer les informations géométriques, une mise en page est également responsable du calcul des couleurs et des styles de bordure. Dans Microsoft Word, la couleur du texte peut être spécifiée comme automatique, ce qui implique que la sélection des couleurs doit être basée sur la couleur d'ombrage de la cellule ou du paragraphe, ou sur la couleur de la page, où le texte apparaît.

La mise en page calcule où le texte apparaîtra et quel contenu sera rendu derrière, ce qui permet le calcul des couleurs. Il y a d'autres calculs spécifiques effectués par la mise en page. Par exemple, une bordure horizontale dans un tableau dépend si une ligne de tableau est la dernière dans une colonne de texte et si elle est divisée en colonnes. Si une ligne est rendue en dernier dans une colonne, la bordure inférieure est utilisée à la place de l'horizontale.

![converting-to-fixed-page-format-aspose-words-cpp-2](converting-to-fixed-page-format-2.png)

Dans Aspose.Words, un utilisateur peut demander s'il souhaite créer une nouvelle mise en page ou mettre à jour une mise en page existante. Ces deux opérations peuvent être effectuées par la méthode [UpdatePageLayout](https://reference.aspose.com/words/cpp/aspose.words/document/updatepagelayout/), fournie par la classe [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Si une mise en page n'existe pas, mais qu'elle est nécessaire (par exemple, lorsque le document est exporté vers un format de page fixe), Aspose.Words appellera automatiquement cette méthode. Cependant, si une mise en page existe déjà, Aspose.Words utilisera celle existante, afin d'éviter de consommer les ressources nécessaires à sa mise à jour. Dans ce cas, l'utilisateur doit appeler la méthode `UpdatePageLayout`, afin de s'assurer que la mise en page est à jour avec le modèle de document.

## Structure Dynamique

Le processus de création de la mise en page comprend les étapes suivantes:

- *Conversion* - énumération du contenu du modèle de document et préparation des objets de mise en page correspondants.
- *Build* – organisation des objets de mise en page pour représenter le contenu du document sur les pages.
- *Reflow* - mise à jour de la disposition des objets pour satisfaire les contraintes géométriques.
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content* - une étape requise si le document contient des formes avec un contenu de texte imbriqué.

Notez que la mise en page est une structure dynamique, qui peut être partiellement reconstruite. Ceci est particulièrement nécessaire lorsqu'il est impossible de calculer les valeurs des champs sans reconstruire la structure de mise en page du document. Le champ peut référencer l'emplacement d'un objet sur une page, et en même temps, la valeur du champ elle-même est également rendue sur la page, affectant l'emplacement de l'objet référencé. Une mise en page ne peut pas être créée en une seule fois, car les valeurs de champ peuvent ne pas encore être disponibles au moment du positionnement sur une page.

Considérez le scénario typique lorsque le champ `NUMPAGES` apparaît dans le pied de page de la première page du document. La valeur de ce champ est le nombre total de pages. Pour positionner le champ sur une page, sa valeur doit être connue. Si seule la première page est en cours de construction, le nombre total de pages n'est pas encore connu. Dans ce cas, la mise en page doit utiliser la valeur par défaut, puis revenir à ce champ et modifier sa valeur en fonction des calculs réels. Cependant, la modification de la valeur du champ peut affecter d'autres contenus de document sur une page et, en fin de compte, entraîner l'ajout d'une nouvelle page ou la suppression d'une page existante, rendant ainsi la valeur calculée obsolète. Ce problème peut être résolu en permettant de mettre à jour la mise en page existante.

Lors de la création d'une mise en page, il est également possible de définir des propriétés [LayoutOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/) qui affectent la sortie du document sur les pages.