---
title: Utilisation de listes dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec des Listes
linktitle: Travailler avec des Listes
description: "Introduction à la fonction de mise en forme de la numérotation dans Aspose.Words pour Java."
type: docs
weight: 200
url: /fr/java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Une liste dans un document Microsoft Word est un ensemble de propriétés de formatage de liste. Les listes peuvent être utilisées dans vos documents pour formater, organiser et mettre en valeur le texte. Les listes sont un excellent moyen d'organiser les données dans les documents et permettent aux lecteurs de mieux comprendre les points clés.

Chaque liste peut avoir jusqu'à 9 niveaux et les propriétés de formatage, telles que le style numérique, la valeur de départ, le retrait, la position de tabulation et d'autres sont définies séparément pour chaque niveau.

Cet article décrit le travail de programmation avec des listes utilisant Aspose.Words.

## Création de Listes en Appliquant une Mise en Forme de Liste

Aspose.Words permet de créer facilement des listes en appliquant un formatage de liste. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) fournit la propriété [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) qui renvoie un objet **ListFormat**. Cet objet a plusieurs méthodes pour commencer et terminer une liste et pour augmenter / diminuer le retrait. Il existe deux types généraux de listes dans Microsoft Word: à puces et numérotées:

- Pour démarrer une liste à puces, appelez [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- Pour démarrer une liste numérotée, appelez [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

La puce ou le numéro et la mise en forme sont ajoutés au paragraphe actuel et à tous les autres paragraphes créés à l'aide de **DocumentBuilder** jusqu'à ce que [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) soit appelé pour arrêter la mise en forme de la liste à puces.

Dans les documents Word, les listes peuvent comporter jusqu'à neuf niveaux. La mise en forme de la liste pour chaque niveau spécifie quelle puce ou quel numéro est utilisé, le retrait à gauche,l'espace entre la puce et le texte, etc. Les méthodes suivantes modifient le niveau de la liste et appliquent les propriétés de mise en forme du nouveau niveau:

- Pour augmenter le niveau de liste du paragraphe actuel d'un niveau, appelez [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- Pour diminuer le niveau de liste du paragraphe actuel d'un niveau, appelez [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

Les méthodes modifient le niveau de la liste et appliquent les propriétés de mise en forme du nouveau niveau.

{{% alert color="primary" %}}

Vous pouvez également utiliser la propriété [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) pour obtenir ou définir le niveau de liste du paragraphe. Les niveaux de liste sont numérotés de 0 à 8.

{{% /alert %}}

L'exemple de code suivant montre comment créer une liste à plusieurs niveaux:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## Spécifier le formatage pour un niveau de liste

Les objets au niveau de la liste sont créés automatiquement lorsqu'une liste est créée. Utilisez les propriétés et les méthodes de la classe [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) pour contrôler la mise en forme des niveaux individuels d'une liste.

## Liste de redémarrage pour chaque section

Vous pouvez redémarrer une liste pour chaque section à l'aide de la propriété [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection). Notez que cette option n'est prise en charge que dans les formats de document RTF, DOC et DOCX. Cette option sera écrite dans DOCX uniquement si OoxmlCompliance est supérieur à Ecma376.

L'exemple de code suivant montre comment créer une liste et la redémarrer pour chaque section:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

