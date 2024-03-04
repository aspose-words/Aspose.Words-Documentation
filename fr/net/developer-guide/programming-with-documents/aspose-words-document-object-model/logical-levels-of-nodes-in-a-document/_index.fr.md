---
title: Niveaux logiques des nœuds dans un document dans C#
second_title: Aspose.Words pour .NET
articleTitle: Niveaux logiques des nœuds dans un document
linktitle: Niveaux logiques des nœuds dans un document
type: docs
description: "Dans la documentation Aspose.Words pour .NET, les niveaux logiques de nœuds sont mentionnés: niveau bloc, niveau en ligne ou niveau ligne en utilisant C#. Le niveau de nœud est utilisé pour décrire l'emplacement dans l'arborescence du document où se trouve généralement le nœud."
weight: 10
url: /fr/net/logical-levels-of-nodes-in-a-document/
---

Cette documentation fait parfois référence à un groupe de classes de nœuds comme appartenant à un "niveau" dans un document, tel que les nœuds "niveau bloc", "niveau en ligne" (également appelé "en ligne") ou "niveau ligne".. Ces niveaux dans un document sont différenciés de manière purement logique et ne sont pas explicitement exprimés par héritage ou par d'autres moyens Aspose.Words DOM. Le niveau nœud est utilisé pour décrire l'endroit dans l'arborescence du document où le nœud apparaîtrait généralement.

Dans l'article précédent, nous avons déjà parlé de la relation entre les nœuds et du fait que tous les nœuds ne sont pas autorisés à être les enfants de n'importe quel nœud. Par exemple, Cell ne peut être qu’un enfant Row, et Row ne peut être qu’un enfant Table, et ainsi de suite. Ces relations sont également applicables pour la division logique des nœuds en niveaux dans le document.

Les sections suivantes décrivent les niveaux logiques des nœuds dans Aspose.Words et les classes qui appartiennent à chaque niveau.

## Niveau logique du document et de la section

Un document Word se compose d'une ou plusieurs sections, représentées par la classe [Section](https://reference.aspose.com/words/fr/net/aspose.words/section/) et séparées par des sauts de section. Une section peut définir sa propre taille de page, ses marges, son orientation, son nombre de colonnes de texte ainsi que ses en-têtes et pieds de page.

Les nœuds de niveau [Document](https://reference.aspose.com/words/fr/net/aspose.words/document/) et [Section](https://reference.aspose.com/words/fr/net/aspose.words/section/) ont la structure indiquée dans le diagramme suivant.

<img src="/words/net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="aspose-words au niveau du document et de la section" style="width:700px"/>

Une section contient le texte principal, ainsi que les en-têtes et pieds de page des premières pages paires et impaires. Ces différents "flux" de texte sont appelés *stories*.

Dans Aspose.Words, le nœud **Section** contient les nœuds d'histoire [Body](https://reference.aspose.com/words/fr/net/aspose.words/body/) et [HeaderFooter](https://reference.aspose.com/words/fr/net/aspose.words/headerfooter/). L'objet **Body** stocke le texte principal. Les objets **HeaderFooter** stockent le texte de chaque en-tête et pied de page. Le texte de toute histoire est constitué de paragraphes et de tableaux, représentés respectivement par les objets **Paragraph** et **Table** du niveau Bloc.

De plus, chaque document Word peut contenir un glossaire, représenté par le nœud [GlossaryDocument](https://reference.aspose.com/words/fr/net/aspose.words.buildingblocks/glossarydocument/) dans Aspose.Words. Un document glossaire contient des entrées [BuildingBlocks](https://reference.aspose.com/words/fr/net/aspose.words.buildingblocks/glossarydocument/buildingblocks/), [AutoText](https://reference.aspose.com/words/fr/net/aspose.words.buildingblocks/buildingblocktype/) et [AutoCorrect](https://reference.aspose.com/words/fr/net/aspose.words.buildingblocks/buildingblocktype/).

**GlossaryDocument** comprend des nœuds [BuildingBlock](https://reference.aspose.com/words/fr/net/aspose.words.buildingblocks/buildingblock/) représentant différents types d'entrées de documents de glossaire. Chaque **BuildingBlock** contient des sections qui peuvent être insérées, supprimées et copiées dans des documents.

## Bloquer le niveau logique

Les nœuds de niveau bloc représentent des conteneurs pour le contenu et les contrôles de contenu, et peuvent apparaître dans les nœuds enfants de l'arborescence du document dans les nœuds suivants:

- Corps
- Entête
- Bas de page
- Note de bas de page
- Commentaire
- Forme
- GroupForme
- Cellule
- Balise de document structuré

Les nœuds au niveau bloc sont représentés par les classes suivantes:

- [Tables](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/) et [Paragraphs](https://reference.aspose.com/words/fr/net/aspose.words/paragraph/), qui sont les nœuds au niveau bloc les plus importants
- Les signets, qui apparaissent à la fois au niveau du bloc et au niveau en ligne
- [StructuredDocumentTag](https://reference.aspose.com/words/fr/net/aspose.words.markup/structureddocumenttag/), qui représente un balisage personnalisé et peut contenir à la fois du contenu et des contrôles de contenu

Le diagramme suivant montre les éléments au niveau du bloc.

<img src="/words/net/logical-levels-of-nodes-in-a-document/block-level.png" alt="mots-aspose-au niveau du bloc" style="width:550px"/>

## Niveau logique en ligne

Les nœuds de niveau en ligne représentent le contenu réel du document et peuvent être contenus dans les conteneurs suivants:

- Paragraphe – le conteneur le plus courant
- [SmartTag](https://reference.aspose.com/words/fr/net/aspose.words.markup/smarttag/)
- Balise de document structuré

Les éléments de niveau en ligne sont représentés par les classes suivantes:

- [Run](https://reference.aspose.com/words/fr/net/aspose.words/run/) – séquences de texte formatées différemment
- [BookmarkStart](https://reference.aspose.com/words/fr/net/aspose.words/bookmarkstart/) et [BookmarkEnd](https://reference.aspose.com/words/fr/net/aspose.words/bookmarkend/) représentent des signets
- [CommentRangeStart](https://reference.aspose.com/words/fr/net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/fr/net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/fr/net/aspose.words/comment/) et [Footnote](https://reference.aspose.com/words/fr/net/aspose.words.notes/footnote/) représentent des annotations
- [FieldStart](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldseparator/) et [FieldEnd](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldend/) qui représentent les caractères des champs, et [FormField](https://reference.aspose.com/words/fr/net/aspose.words.fields/formfield/) représentent les champs Word
- [SpecialChar](https://reference.aspose.com/words/fr/net/aspose.words/specialchar/) représente des caractères spéciaux dans le document
- [Shape](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shape/) et [GroupShape](https://reference.aspose.com/words/fr/net/aspose.words.drawing/groupshape/) représentent des formes, des dessins, des images, etc.
- SmartTag et StructuredDocumentTag représentent un balisage personnalisé

Le diagramme suivant montre la structure des nœuds de niveau en ligne.

<img src="/words/net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="mots-aspose-au-niveau-en-ligne" style="width:785px"/>

{{% alert color="primary" %}}

Les formes dans Microsoft Word incluent les formes automatiques Office Art, les zones de texte, les images, les objets OLE et les contrôles ActiveX, qui sont tous représentés à l'aide de la classe `Shape`. Certaines formes peuvent également contenir du texte, de sorte que les nœuds de forme en Aspose.Words peuvent contenir des nœuds au niveau du bloc.

Les formes peuvent être regroupées les unes dans les autres à l'aide des nœuds GroupShape.

{{% /alert %}}

{{% alert color="primary" %}}

Les notes de bas de page et les commentaires peuvent contenir du texte, par conséquent les nœuds Note de bas de page et Commentaire dans Aspose.Words peuvent contenir des nœuds au niveau du bloc.

{{% /alert %}}

## Niveau de nœud de table, de ligne et de cellule

Le tableau est constitué de nœuds de lignes et de cellules. Les éléments du tableau sont représentés par les classes suivantes:

- [Row](https://reference.aspose.com/words/fr/net/aspose.words.tables/row/) représente une ligne de tableau
- [Cell](https://reference.aspose.com/words/fr/net/aspose.words.tables/cell/) représente une cellule de tableau
- StructuredDocumentTag représente un balisage personnalisé

Le diagramme suivant montre les structures de nœuds des niveaux Table, Ligne et Cellule.

<img src="/words/net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="tableau-ligne-cellule-aspose-mots" style="width:910px"/>
