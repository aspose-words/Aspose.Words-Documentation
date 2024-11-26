---
title: Niveaux logiques des nœuds dans un document en C++
second_title: Aspose.Words pour C++
articleTitle: Niveaux logiques des nœuds dans un document
linktitle: Niveaux logiques des nœuds dans un document
type: docs
description: "Dans Aspose.Words pour C++ la documentation mentionnait les niveaux logiques des nœuds-niveau bloc, niveau en ligne ou niveau ligne. Le niveau du nœud est utilisé pour décrire l'emplacement dans l'arborescence du document où se trouve généralement le nœud."
weight: 10
url: /fr/cpp/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Cette documentation fait parfois référence à un groupe de classes de nœuds comme appartenant à un "niveau" dans un document, tel que des nœuds de "niveau bloc", de "niveau en ligne" (également appelés "en ligne") ou de "niveau ligne". Ces niveaux dans un document sont différenciés de manière purement logique et ne sont pas explicitement exprimés par héritage ou d'autres moyens Aspose.Words DOM. Le niveau du nœud est utilisé pour décrire l'endroit dans l'arborescence du document où le nœud se produirait généralement.

Dans l'article précédent, nous avons déjà parlé de la relation entre les nœuds et du fait que tous les nœuds ne sont pas autorisés à être des enfants de nœuds. Par exemple, Cell ne peut être qu'un enfant de ligne, et une Ligne ne peut être qu'un enfant de table, et ainsi de suite. Ces relations sont également applicables pour la division logique des nœuds en niveaux dans le document.

Les sections suivantes décrivent les niveaux logiques des nœuds dans Aspose.Words et les classes qui appartiennent à chaque niveau.

## Niveau logique du Document et de la Section

Un document Word se compose d'une ou plusieurs sections, représentées par la classe [Section](https://reference.aspose.com/words/cpp/aspose.words/section) et séparées par des sauts de section. Une section peut définir sa propre taille de page, ses marges, son orientation, le nombre de colonnes de texte et ses en-têtes et pieds de page.

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/) et [Rubrique](https://www.aspose.com/api/words/cpp/aspose.words/section/) les nœuds de niveau ont la structure illustrée dans le diagramme suivant.

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words-cpp" style="width:700px"/>

Une section contient le texte principal, ainsi que des en-têtes et des pieds de page pour les premières pages paires et impaires. Ces différents "flux" de texte sont appelés *stories*.

Dans Aspose.Words, le nœud **Section** contient les nœuds d'histoire [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) et [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/). L'objet **Body** stocke le texte principal. Les objets **HeaderFooter** stockent le texte de chaque en-tête et pied de page. Le texte de toute histoire se compose de paragraphes et de tableaux, respectivement représentés par les objets **Paragraph** et **Table** du niveau Bloc.

De plus, chaque document Word peut contenir un glossaire, qui est représenté par le nœud [GlossaryDocument](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/) dans Aspose.Words. Un document glossaire contient des entrées [BuildingBlocks](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/get_buildingblocks/), [AutoText](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/) et [AutoCorrect](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/).

**GlossaryDocument**

## Niveau Logique de Bloc

Les nœuds de niveau bloc représentent des conteneurs pour le contenu et les contrôles de contenu, et peuvent apparaître dans les nœuds enfants de l'arborescence de documents dans les nœuds suivants:

- Corps
- En-tête
- Pied de Page
- Note de Bas de Page
- Commentaire
- Forme
- GroupShape
- Cellule
- StructuredDocumentTag

Les nœuds de niveau bloc sont représentés par les classes suivantes:

- [Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) et [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), qui sont les nœuds les plus importants au niveau du bloc
- Les signets, qui se produisent à la fois au niveau du bloc et au niveau en ligne
- [StructuredDocumentTag](https://reference.aspose.com/words/cpp/aspose.words.markup/structureddocumenttag/), qui représentent un balisage personnalisé et peuvent contenir à la fois du contenu et des contrôles de contenu

Le diagramme suivant montre les éléments au niveau du bloc.

<img src="block-level.png" alt="block-level-aspose-words-cpp" style="width:550px"/>

## Niveau Logique en Ligne

Les nœuds de niveau en ligne représentent le contenu réel du document et peuvent être contenus dans les conteneurs suivants:

- Paragraphe-le conteneur le plus courant
- [SmartTag](https://reference.aspose.com/words/cpp/aspose.words.markup/smarttag/)
- StructuredDocumentTag

Les éléments de niveau en ligne sont représentés par les classes suivantes:

- [Run](https://reference.aspose.com/words/cpp/aspose.words/run/) - suites de texte formatées différemment
- [BookmarkStart](https://reference.aspose.com/words/cpp/aspose.words/bookmarkstart/) et [BookmarkEnd](https://reference.aspose.com/words/cpp/aspose.words/bookmarkend) représentent des signets
- [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) et [Footnote](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/) représentent des annotations
- [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldseparator/) et [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldend/) qui représentent des caractères de champ, et [FormField](https://reference.aspose.com/words/cpp/aspose.words.fields/formfield/) représentent des champs de mots
- [SpecialChar](https://reference.aspose.com/words/cpp/aspose.words/specialchar/) représente les caractères spéciaux dans le document
- [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) et [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) représentent des formes, des dessins, des images, etc.
- SmartTag et StructuredDocumentTag représentent un balisage personnalisé

Le diagramme suivant montre la structure des nœuds de niveau en ligne.

<img src="inline-level.png" alt="inline-level-aspose-words-cpp" style="width:785px"/>

{{% alert color="primary" %}}

Les formes dans Microsoft Word incluent Office Art AutoShapes, des zones de texte, des images, des objets OLE et des contrôles ActiveX, qui sont tous représentés à l'aide de la classe `Shape`. Certaines formes peuvent également contenir du texte, de sorte que les nœuds de forme dans Aspose.Words peuvent contenir des nœuds de niveau bloc.

Les formes peuvent être regroupées les unes à l'intérieur des autres à l'aide de nœuds GroupShape.

{{% /alert %}}

{{% alert color="primary" %}}

Les notes de bas de page et les commentaires peuvent contenir du texte, par conséquent, les nœuds de note de bas de page et de commentaire dans Aspose.Words peuvent contenir des nœuds de niveau bloc.

{{% /alert %}}

## Niveau des nœuds de Table, de ligne et de cellule

Le tableau se compose de nœuds de lignes et de cellules. Les éléments de tableau sont représentés par les classes suivantes:

- [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) représente une ligne de tableau
- [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) représente une cellule de tableau
- StructuredDocumentTag représente un balisage personnalisé

Le diagramme suivant montre les structures des nœuds des niveaux Table, Ligne et cellule.

<img src="table-row-cell.png" alt="table-row-cell-aspose-words-cpp" style="width:910px"/>
