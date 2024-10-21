---
title: Conversion au format de page fixe en C++
second_title: Aspose.Words pour C++
articleTitle: Conversion au format de page fixe
linktitle: Conversion au format de page fixe
description: "Enregistrez les documents aux formats PDF, XPS, HTML, XAML, PostScript et PCL."
type: docs
weight: 10
url: /fr/cpp/converting-to-fixed-page-format/
---

Aspose.Words implémente son propre moteur de mise en page. Avant de se plonger dans ses spécifications, il vaut la peine de discuter d'abord du document à un niveau élevé.

## Qu'est-ce qu'un Document?

Lorsqu'ils pensent à un document, les utilisateurs imaginent généralement un certain nombre de feuilles de papier contenant des mots, des images, des tableaux et des graphiques. Les documents peuvent être de différents types, tels que du texte, des feuilles de calcul, des diapositives, des dessins CAO, des organigrammes et, par conséquent, peuvent avoir des mises en page essentiellement différentes. La plupart des applications permettent d'envoyer des documents à une imprimante; c'est à ce moment qu'un utilisateur peut réellement voir l'apparence finale prévue du document.

## Affichage d'un Document dans diverses Applications

Diverses applications de visualisation ou de publication de documents permettent aux utilisateurs d'ouvrir (Adobe Acrobat, XPS Viewer) et parfois d'éditer (Adobe InDesign) des documents de formats spécifiques. Ces applications produisent généralement des documents au format "page fixe". Un tel format de document décrit précisément où le contenu d'un document est placé sur chaque page. En interne, le format PDF ou XPS contient une description de chaque page, ainsi que des instructions de dessin, spécifiant la disposition du contenu sur la page. Ceci est similaire aux formats d'image, décrivant où le contenu est affiché sous forme raster ou vectorielle.

En revanche, certaines applications d'édition de texte ne prennent pas en charge l'affichage des pages d'un document. Par exemple, le Bloc-notes Microsoft prend en charge très peu de fonctions autres que simplement l'affichage, l'édition et l'impression de texte. L'observation importante ici est que de telles applications ne peuvent ni afficher les pages du document ni indiquer à un utilisateur combien d'entre elles seraient imprimées, permettant uniquement de visualiser le contenu du document. Le document peut être enregistré au format texte brut et peut être ouvert par de nombreuses autres applications. En utilisant une application qui permet de visualiser le contenu binaire d'un fichier arbitraire, on peut voir ce qui est stocké dans le fichier document – ce n'est que du texte brut, il n'y a rien d'autre dedans.

Des applications d'édition de texte légèrement plus sophistiquées, telles que Microsoft WordPad, enregistrent le document au format RTF (Rich Text Format), qui prend en charge davantage de fonctions de formatage, telles que l'insertion d'images, la mise en forme des caractères, les marges des paragraphes et l'espacement. Cependant, le format RTF ne contient également que le contenu du document, sans aucune information sur les pages.

Microsoft Word est l'application d'édition de texte la plus avancée de Windows aujourd'hui. Il formate les fichiers au format DOCX, qui décrit le contenu du document de manière flexible et détaillée, permettant aux utilisateurs de spécifier la taille de la page, l'orientation d'une section de document et, étant une application WYSIWYG, d'afficher même les pages du document à l'écran. Néanmoins, il n'y a toujours aucune information sur la façon dont le contenu du document est affiché sur les pages disponibles dans le fichier de document. Le fichier de document décrit uniquement le contenu lui-même et la relation entre les objets du document, ainsi que certaines contraintes géométriques. Par conséquent, avant d'afficher un document, Microsoft Word calcule lui-même ces informations. C'est là qu'une mise en page entre en jeu.

## Voir Aussi

* [Qu'est-ce qu'une Mise en Page](/words/cpp/what-is-a-page-layout/)
* [Création d'une mise en page](/words/cpp/creating-a-page-layout/)
* [Enregistrement d'un document au format de page fixe](/words/cpp/saving-a-document-to-fixed-page-format/)
* [Spécifier Les Options De Mise En Page](/words/cpp/specify-layout-options/)