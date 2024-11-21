---
title: Travailler avec les listes Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec les listes
linktitle: Travailler avec les listes
description: "Introduction à la fonction de formatage de numérotation dans Aspose.Words pour Java."
type: docs
weight: 200
url: /fr/java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Une liste dans une Microsoft Word document est un ensemble de propriétés de formatage de liste. Des listes peuvent être utilisées dans vos documents pour formater, organiser et souligner le texte. Les listes sont un excellent moyen d'organiser les données dans les documents, et elles facilitent la compréhension des points clés par les lecteurs.

Chaque liste peut avoir jusqu'à 9 niveaux et les propriétés de formatage, tels que le style de nombre, la valeur de départ, le tiret, la position de l'onglet, et d'autres sont définis séparément pour chaque niveau.

Cet article décrit le travail programmatique avec les listes en utilisant Aspose.Words.

## Création de listes en appliquant le formatage de la liste

Aspose.Words permet la création facile de listes en appliquant le formatage de la liste. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) fournit les [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) un bien qui rend une **ListFormat** objet. Cet objet a plusieurs méthodes pour démarrer et terminer une liste et augmenter/diminuer le tiret. Il existe deux types généraux de listes Microsoft Word: balisé et numéroté:

- Pour lancer une liste, appelez [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- Pour démarrer une liste numérotée, appelez [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

La puce ou le nombre et le formatage sont ajoutés au paragraphe actuel et à tous les autres paragraphes créés en utilisant **DocumentBuilder** jusqu'à [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) est appelé pour arrêter le formatage des listes par puces.

Dans les documents Word, les listes peuvent comprendre jusqu'à neuf niveaux. Le formatage de la liste pour chaque niveau indique le point ou le nombre utilisé, le tiret gauche, l'espace entre le point et le texte, etc. Les méthodes suivantes changent le niveau de la liste et appliquent les propriétés de formatage du nouveau niveau:

- Oui. Pour augmenter le niveau de liste du paragraphe actuel d'un niveau, appeler [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- Oui. Pour réduire le niveau de liste du paragraphe actuel d'un niveau, appelez [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

Les méthodes changent le niveau de la liste et appliquent les propriétés de formatage du nouveau niveau.

{{% alert color="primary" %}}

Vous pouvez également utiliser le [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) propriété pour obtenir ou définir le niveau de liste pour le paragraphe. Les niveaux de la liste sont numérotés 0 à 8.

{{% /alert %}}

L'exemple de code suivant montre comment construire une liste à plusieurs niveaux:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## Spécifier le formatage pour un niveau de liste

Les objets list-level sont créés automatiquement lorsqu'une liste est créée. Utiliser les propriétés et les méthodes de [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) classe pour contrôler le formatage des niveaux individuels d'une liste.

## Redémarrer la liste pour chaque section

Vous pouvez redémarrer une liste pour chaque section en utilisant [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection) propriété. Notez que cette option n'est prise en charge que dans les formats RTF, DOC et DOCX. Cette option ne sera écrite à DOCX que si OoxmlCompliance est plus élevé alors Ecma376.

L'exemple de code suivant montre comment créer une liste et la redémarrer pour chaque section:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

