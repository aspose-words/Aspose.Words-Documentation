---
title: Travailler avec des listes dans C#
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec des listes
linktitle: Travailler avec des listes
description: "Introduction à la fonctionnalité de formatage de la numérotation dans Aspose.Words pour .NET."
type: docs
weight: 200
url: /fr/net/working-with-lists/
---

Une liste dans un document Microsoft Word est un ensemble de propriétés de formatage de paragraphe. Les listes peuvent être utilisées dans les documents pour structurer, organiser et surligner du texte. Les listes sont un excellent moyen d’organiser les données dans des documents de manière à permettre aux lecteurs d’absorber et de comprendre facilement les points clés.

Chaque liste peut avoir jusqu'à 9 niveaux et les propriétés de formatage telles que le style de numéro, la valeur de départ, l'indentation, la position de tabulation et autres sont définies séparément pour chaque niveau.

Dans Aspose.Words, l'utilisation de listes est représentée par l'espace de noms [Lists](https://reference.aspose.com/words/net/aspose.words.lists/). Cependant, l'objet [List](https://reference.aspose.com/words/net/aspose.words.lists/list/) appartient toujours au [ListCollection](https://reference.aspose.com/words/net/aspose.words.lists/listcollection/).

Cet article décrit l'utilisation par programmation de listes à l'aide de Aspose.Words.

## Créer des listes en appliquant le formatage de liste

Aspose.Words permet de créer facilement des listes en appliquant un formatage de liste. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) fournit la propriété [ListFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/listformat/) qui renvoie un objet **ListFormat**. Cet objet dispose de plusieurs méthodes pour démarrer et terminer une liste et pour augmenter/diminuer le retrait. Il existe deux types généraux de listes en Microsoft Word: à puces et numérotées:

- Pour démarrer une liste à puces, appelez [ApplyBulletDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applybulletdefault/)
- Pour démarrer une liste numérotée, appelez [ApplyNumberDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applynumberdefault/)

La puce ou le numéro et le formatage sont ajoutés au paragraphe actuel et à tous les autres paragraphes créés à l'aide de **DocumentBuilder** jusqu'à ce que [RemoveNumbers](https://reference.aspose.com/words/net/aspose.words.lists/listformat/removenumbers/) soit appelé pour arrêter le formatage de la liste à puces.

Dans les documents Word, les listes peuvent comprendre jusqu'à neuf niveaux. Le formatage de la liste pour chaque niveau spécifie quelle puce ou quel numéro est utilisé, le retrait à gauche, l'espace entre la puce et le texte, etc. Les méthodes suivantes modifient le niveau de liste et appliquent les propriétés de formatage du nouveau niveau:

- Pour augmenter le niveau de liste du paragraphe actuel d'un niveau, appelez [ListIndent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listindent/)
- Pour diminuer le niveau de liste du paragraphe actuel d'un niveau, appelez [ListOutdent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listoutdent/)

Vous pouvez également utiliser la propriété [ListLevelNumber](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listlevelnumber/) pour obtenir ou définir le niveau de liste du paragraphe.

{{% alert color="primary" %}}

Les niveaux de liste sont numérotés de 0 à 8.

{{% /alert %}}

L'exemple de code suivant montre comment créer une liste à plusieurs niveaux:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cs" >}}

## Spécifier le formatage d'un niveau de liste

Les objets au niveau de la liste sont créés automatiquement lors de la création d'une liste. Utilisez les propriétés et méthodes de la classe [ListLevel](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/) pour contrôler le formatage des niveaux individuels d'une liste.

## Liste de redémarrage pour chaque section

Vous pouvez redémarrer une liste pour chaque section à l'aide de la propriété [IsRestartAtEachSection](https://reference.aspose.com/words/net/aspose.words.lists/list/isrestartateachsection/). Notez que cette option n'est prise en charge que dans les formats de document RTF, DOC et DOCX. Cette option sera écrite dans DOCX uniquement si OoxmlCompliance est supérieur à Ecma376.

L'exemple de code suivant montre comment créer une liste et la redémarrer pour chaque section:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cs" >}}
