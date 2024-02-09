---
title: Travailler avec des listes dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Travailler avec des listes
linktitle: Travailler avec des listes
description: "Créez, spécifiez le formatage et redémarrez des listes dans un document à l'aide de Python."
type: docs
weight: 200
url: /fr/python-net/working-with-lists/
---

Une liste dans un document Microsoft Word est un ensemble de propriétés de formatage de liste. Les listes peuvent être utilisées dans vos documents pour formater, organiser et mettre en valeur le texte. Les listes sont un excellent moyen d’organiser les données dans des documents et permettent aux lecteurs de comprendre plus facilement les points clés

Chaque liste peut avoir jusqu'à 9 niveaux et les propriétés de formatage, telles que le style des nombres, la valeur de départ, le retrait, la position de la tabulation, etc. sont définies séparément pour chaque niveau.

Dans Aspose.Words, le travail avec des listes est représenté par le module [Lists](https://reference.aspose.com/words/python-net/aspose.words.lists/). Toutefois, l'objet [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) appartient toujours à la collection [ListCollection](https://reference.aspose.com/words/python-net/aspose.words.lists/listcollection/).

Cette rubrique décrit comment travailler par programmation avec des listes à l'aide de Aspose.Words

## Création de listes en appliquant le formatage de liste

Aspose.Words permet de créer facilement des listes en appliquant un formatage de liste. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) fournit la propriété [DocumentBuilder.list_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/list_format/) qui renvoie un objet [ListFormat](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/). Cet objet dispose de plusieurs méthodes pour démarrer et terminer une liste et pour augmenter/diminuer le retrait. Il existe deux types généraux de listes dans Microsoft Word: à puces et numérotées.

- Pour démarrer une liste à puces, appelez [ListFormat.apply_bullet_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/).
- Pour démarrer une liste numérotée, appelez [ListFormat.apply_number_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/).

La puce ou le numéro et le formatage sont ajoutés au paragraphe actuel et à tous les autres paragraphes créés à l'aide de [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) jusqu'à ce que [ListFormat.remove_numbers](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/remove_numbers/) soit appelé pour arrêter le formatage de la liste à puces.

Dans les documents Word, les listes peuvent comprendre jusqu'à neuf niveaux. Le formatage de la liste pour chaque niveau spécifie quelle puce ou quel numéro est utilisé, le retrait à gauche, l'espace entre la puce et le texte, etc. Les méthodes suivantes modifient le niveau de liste et appliquent les propriétés de formatage du nouveau niveau:

- Pour augmenter le niveau de liste du paragraphe actuel d'un niveau, appelez [ListFormat.list_indent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_indent/)
- Pour diminuer le niveau de liste du paragraphe actuel d'un niveau, appelez [ListFormat.list_outdent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_outdent/)

Les méthodes modifient le niveau de liste et appliquent les propriétés de formatage du nouveau niveau.

{{% alert color="primary" %}}

Vous pouvez également utiliser la propriété [ListFormat.list_level_number](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_level_number/) pour obtenir ou définir le niveau de liste du paragraphe. Les niveaux de liste sont numérotés de 0 à 8.

{{% /alert %}}

L'exemple ci-dessous montre comment créer une liste à plusieurs niveaux.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-MultilevelListFormatting.py" >}}

## Spécifier le formatage d'un niveau de liste

Les objets au niveau de la liste sont créés automatiquement lors de la création d'une liste. Utilisez les propriétés et méthodes de la classe [ListLevel](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/) pour contrôler le formatage des niveaux individuels d'une liste.

## Liste de redémarrage pour chaque section

Vous pouvez redémarrer une liste pour chaque section à l'aide de la propriété [Propriété is_restart_at_each_section](https://reference.aspose.com/words/python-net/aspose.words.lists/list/is_restart_at_each_section/). Notez que cette option n'est prise en charge que dans les formats de document RTF, DOC et DOCX. Cette option sera écrite dans DOCX uniquement si OoxmlCompliance est supérieur à Ecma376.

L'exemple de code suivant montre comment créer une liste et la redémarrer pour chaque section:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_list-RestartListAtEachSection.py" >}}
