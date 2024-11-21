---
title: Niveaux logiques des nœuds dans un document Java
second_title: Aspose.Words pour Java
articleTitle: Niveaux logiques des nœuds dans un document
linktitle: Niveaux logiques des nœuds dans un document
type: docs
description: "En Aspose.Words pour Java documentation mentionnait des niveaux logiques de nœuds – niveau bloc, niveau en ligne, ou niveau ligne. Le niveau du noeud est utilisé pour décrire l'emplacement dans l'arborescence du document où le noeud se trouve habituellement."
weight: 10
url: /fr/java/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Cette documentation fait parfois référence à un groupe de classes de nœuds comme appartenant à un "niveau" dans un document, comme les nœuds "block-level", "inline-level" (aussi appelé "inline") ou "row-level". Ces niveaux dans un document sont purement logiquement différenciés et ne sont pas explicitement exprimés par héritage ou autre Aspose.Words DOM signifie. Le niveau de nœud est utilisé pour décrire l'endroit dans l'arbre de documents où le noeud se produirait habituellement.

Dans l'article précédent, nous avons déjà parlé de la relation entre les nœuds et du fait que tous les nœuds ne sont pas autorisés à être un enfant de tous les nœuds. Par exemple, Cell ne peut être qu'un enfant de rang, et une rangée ne peut être qu'un enfant de table, etc. Ces relations sont également applicables pour la division logique des nœuds en niveaux dans le document.

Les sections suivantes décrivent les niveaux logiques des nœuds dans Aspose.Words et les classes qui appartiennent à chaque niveau.

## Niveau logique du document et de la section

A Le document Word se compose d'une ou de plusieurs sections, représentées par [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) classe et séparée par des ruptures de section. Une section peut définir sa propre taille de page, les marges, l'orientation, le nombre de colonnes de texte, et les en-têtes et les pied de page.

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/) et [Chapitre](https://www.aspose.com/api/words/java/com.aspose.words/section) les noeuds de niveau ont la structure comme indiqué dans le diagramme suivant.

<img src="/words/java/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words-java" style="width:700px"/>

Une section contient le texte principal, ainsi que les en-têtes et les pied de page pour la première, même, et les pages impaires. Ces différents flux de texte sont appelés *stories*.

En Aspose.Words, des **Section** le noeud contient le [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) et [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) Des nœuds d'histoire. Les **Body** objet stocke le texte principal. Les **HeaderFooter** les objets stockent le texte pour chaque en-tête et pied de page. Le texte de n'importe quelle histoire se compose de paragraphes et de tableaux, représentés respectivement par le **Paragraph** et **Table** objets du niveau Block.

En outre, chaque Le document Word peut contenir un glossaire, qui est représenté par [GlossaryDocument](https://reference.aspose.com/words/java/com.aspose.words/glossarydocument/) noeud en Aspose.Words. Un glossaire contient [BuildingBlocks](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/), [AutoText](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-TEXT), et [AutoCorrect](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-CORRECT) entrées.

**GlossaryDocument** comprend [BuildingBlock](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/) noeuds représentant différents types d'entrées de documents glossaire. Chaque **BuildingBlock** contient des sections qui peuvent être insérées, supprimées et copiées dans des documents.

## Bloc Niveau logique

Les nœuds de niveau bloc représentent des conteneurs pour les contrôles de contenu et de contenu, et peuvent se produire dans l'arborescence de documents des nœuds enfants dans les nœuds suivants:

- Corps
- En-tête
- Pied de page
- Note de bas de page
- Commentaire
- Forme
- Oui. GroupForme
- Cellule
- Document structuréTag

Les nœuds au niveau du bloc sont représentés par les classes suivantes:

- Oui. [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/) et [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), qui sont les nœuds de niveau de bloc les plus importants
- Signet, qui se produit à la fois au niveau des blocs et au niveau des lignes
- Oui. [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/), qui représentent un balisage personnalisé et peuvent contenir des contrôles de contenu et de contenu

Le diagramme suivant montre les éléments au niveau du bloc.

<img src="/words/java/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words-java" style="width:550px"/>

## Niveau logique en ligne

Les nœuds de niveau inline représentent le contenu réel du document et peuvent être contenus dans les conteneurs suivants:

- Paragraphe – le conteneur le plus commun
- [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)
- Document structuréTag

Les éléments de niveau inline sont représentés par les classes suivantes:

- Oui. [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) – séries de texte formatées différemment
- Oui. [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) et [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) représenter les signets
- Oui. [CommentRangeStart]https://reference.aspose.com/words/java/com.aspose.words/comment/RangeStart), [CommentaireRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) et [Footnote](https://reference.aspose.com/words/java/com.aspose.words/footnote/) représentent les annotations
- Oui. [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) et [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) qui représentent les caractères de champ, et [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) représenter Champs Word
- Oui. [SpecialChar](https://reference.aspose.com/words/java/com.aspose.words/specialchar/) représente des caractères spéciaux dans le document
- Oui. [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) et [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) représenter les formes, dessins, images, etc.
- SmartTag et document structuré L'étiquette représente un marquage personnalisé

Le diagramme suivant montre la structure des nœuds de niveau inline.

<img src="/words/java/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words-java" style="width:785px"/>

{{% alert color="primary" %}}

Formes en Microsoft Word inclure Office Art AutoShapes, les boîtes de texte, les images, les objets OLE et les commandes ActiveX, qui sont tous représentés à l'aide de la `Shape` En cours. Certaines formes peuvent également contenir du texte, de sorte que les nœuds de forme dans Aspose.Words peut contenir des nœuds de niveau bloc.

Les formes peuvent être groupées entre elles en utilisant GroupDes nœuds de forme.

{{% /alert %}}

{{% alert color="primary" %}}

Les notes de bas de page et les commentaires peuvent contenir du texte. Aspose.Words peut contenir des nœuds de niveau bloc.

{{% /alert %}}

## Tableau, rangée et niveau du nœud cellulaire

La table se compose de nœuds de lignes et de cellules. Les éléments du tableau sont représentés par les classes suivantes:

- Oui. [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) représente une ligne de tableau
- Oui. [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) représente une cellule de table
- Document structuré L'étiquette représente un marquage personnalisé

Le diagramme suivant montre les structures des nœuds des niveaux de la table, de la ligne et de la cellule.

<img src="/words/java/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words-java" style="width:910px"/>
