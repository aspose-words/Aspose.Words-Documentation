---
title: Insérer des champs dans C#
second_title: Aspose.Words pour .NET
articleTitle: Insérer des champs
linktitle: Insérer des champs
description: "Comment insérer des champs dans un document à l'aide de C# – découvrez différentes manières avec des exemples de code."
type: docs
weight: 20
url: /fr/net/inserting-fields/
---

Il existe plusieurs manières d'insérer des champs dans un document:

* en utilisant [DocumentBuilder](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/)
* en utilisant [FieldBuilder](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldbuilder/)
* en utilisant [Aspose.Words Document Object Model (DOM)](/words/fr/net/aspose-words-document-object-model/)

Dans cet article, nous examinerons chaque méthode plus en détail et analyserons comment insérer certains champs à l'aide de ces options.

## Insertion de champs dans un document à l'aide de DocumentBuilder

Dans Aspose.Words, la méthode [InsertField](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/insertfield/) est utilisée pour insérer de nouveaux champs dans un document. Le premier paramètre accepte le code de champ complet du champ à insérer. Le deuxième paramètre est facultatif et permet de définir manuellement le résultat du champ. Si celui-ci n'est pas renseigné, le champ est mis à jour automatiquement. Vous pouvez passer null ou vide à ce paramètre pour insérer un champ avec une valeur de champ vide. Si vous n'êtes pas sûr de la syntaxe particulière du code de champ, créez d'abord le champ en Microsoft Word et basculez pour voir son code de champ.

{{% alert color="primary" %}}

Si votre code de champ comporte un paramètre contenant un espace, il doit être entouré de marques vocales. Sinon, le champ dans Microsoft Word et Aspose.Words risque de ne pas fonctionner comme prévu car le paramètre est traité par les deux comme étant tronqué.

{{% /alert %}}

L'exemple de code suivant montre comment insérer un champ de fusion dans un document à l'aide de **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertField-InsertField.cs" >}}

La même technique est utilisée pour insérer des champs imbriqués dans d’autres champs.

L'exemple de code suivant montre comment insérer des champs imbriqués dans un autre champ à l'aide de **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cs" >}}

### Spécifier les paramètres régionaux au niveau du champ

Un identifiant de langue est une abréviation numérique internationale standard pour la langue d'un pays ou d'une région géographique. Avec Aspose.Words, vous pouvez spécifier les paramètres régionaux au niveau du champ à l'aide de la propriété [LocaleId](https://reference.aspose.com/words/fr/net/aspose.words.fields/field/localeid/), qui obtient ou définit l'ID de paramètres régionaux du champ.

L'exemple de code suivant montre comment utiliser cette option:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cs" >}}

### Insérer un champ non typé/vide

Si vous souhaitez insérer des champs non typés/vides ({}) comme le permet Microsoft Word, vous pouvez utiliser la méthode [InsertField](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/insertfield/) avec le paramètre [FieldType.FieldNone](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldtype/). Pour insérer un champ dans un document Word, vous pouvez appuyer sur la combinaison de touches "Ctrl + F9".

L'exemple de code suivant montre comment insérer un champ vide dans le document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cs" >}}

## Insertion de champs dans un document à l'aide de FieldBuilder
L'autre façon d'insérer des champs dans Aspose.Words est la classe [FieldBuilder](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldbuilder/). Il fournit une interface fluide pour spécifier les commutateurs de champs et les valeurs d'arguments sous forme de texte, de nœuds ou même de champs imbriqués.

L'exemple de code suivant montre comment insérer un champ dans un document à l'aide de **FieldBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder.cs" >}}

## Insertion de champs à l'aide de DOM

Vous pouvez également insérer différents types de champs à l'aide de [Aspose.Words Document Object Model (DOM)](/words/fr/net/aspose-words-document-object-model/). Dans cette section, nous examinerons quelques exemples.

### Insertion d'un champ de fusion dans un document à l'aide de DOM

Le champ `MERGEFIELD` dans un document Word peut être représenté par la classe [FieldMergeField](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldmergefield/). Vous pouvez utiliser la classe **FieldMergeField** pour effectuer les opérations suivantes:

- préciser le nom du champ de fusion
- spécifier le formatage du champ de fusion
- spécifiez le texte qui se trouve entre le séparateur de champ et la fin du champ de fusion
- préciser le texte à insérer après le champ de fusion si le champ n'est pas vide
- préciser le texte à insérer avant le champ de fusion si le champ n'est pas vide

{{% alert color="primary" %}}

Pour plus de détails, consultez la classe [FieldMergeField](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldmergefield/) API.

{{% /alert %}}

L'exemple de code suivant montre comment ajouter le champ `MERGE` à l'aide de DOM à un paragraphe d'un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cs" >}}

### Insertion du champ Mail Merge `ADDRESSBLOCK` dans un document à l'aide de DOM

Le champ `ADDRESSBLOCK` est utilisé pour insérer un bloc d'adresse mail merge dans un document Word. Le champ `ADDRESSBLOCK` dans un document Word peut être représenté par la classe [FieldAddressBlock](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldaddressblock/). Vous pouvez utiliser la classe **FieldAddressBlock** pour effectuer les opérations suivantes:

- préciser s'il faut inclure le nom du pays/de la région dans le champ
- préciser s'il faut formater l'adresse en fonction du pays/région du destinataire tel que défini par POST*CODE (Union postale universelle 2006)
- précisez le nom du pays/de la région exclu
- préciser le format du nom et de l'adresse
- spécifier l'ID de langue utilisé pour formater l'adresse

{{% alert color="primary" %}}

Pour plus de détails, consultez la classe [FieldAddressBlock](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldaddressblock/) API.

{{% /alert %}}

L'exemple de code suivant montre comment ajouter le champ `ADDRESSBLOCK` Mail Merge à l'aide de DOM à un paragraphe d'un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cs" >}}

### Insertion d'un champ `ADVANCE` dans un document sans utiliser DocumentBuilder

Le champ `ADVANCE` est utilisé pour décaler le texte suivant dans une ligne vers la gauche, la droite, le haut ou le bas. Le champ `ADVANCE` dans un document Word peut être représenté par la classe [FieldAdvance](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldadvance/). Vous pouvez utiliser la classe **FieldAdvance** pour effectuer les opérations suivantes:

- préciser le nombre de points dont le texte qui suit le champ doit être déplacé verticalement à partir du bord supérieur de la page
- spécifiez le nombre de points dont le texte qui suit le champ doit être déplacé horizontalement depuis le bord gauche de la colonne, du cadre ou de la zone de texte
- préciser le nombre de points dont le texte qui suit le champ doit être déplacé vers la gauche, la droite, le haut ou le bas

{{% alert color="primary" %}}

Pour plus de détails, consultez la classe [FieldAdvance](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldadvance/) API.

{{% /alert %}}

L'exemple de code suivant montre comment ajouter le champ `ADVANCE` à l'aide de DOM à un paragraphe d'un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAdvanceFieldWithOutDocumentBuilder-InsertAdvanceFieldWithOutDocumentBuilder.cs" >}}

### Insertion d'un champ `ASK` dans un document sans utiliser DocumentBuilder

Le champ `ASK` est utilisé pour demander à l'utilisateur le texte à attribuer à un signet dans un document Word. Le champ `ASK` dans un document Word peut être représenté par la classe [FieldAsk](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldask/). Vous pouvez utiliser la classe **FieldAsk** pour effectuer les opérations suivantes:

- préciser le nom du signet
- spécifier la réponse utilisateur par défaut (valeur initiale contenue dans la fenêtre d'invite)
- spécifier si la réponse de l'utilisateur doit être reçue une fois par opération mail merge
- spécifiez le texte de l'invite (le titre de la fenêtre d'invite)

{{% alert color="primary" %}}

Pour plus de détails, consultez la classe [FieldAsk](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldask/) API.

{{% /alert %}}

L'exemple de code suivant montre comment ajouter le champ `ASK` à l'aide de DOM à un paragraphe d'un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertASKFieldWithOutDocumentBuilder-InsertASKFieldWithOutDocumentBuilder.cs" >}}

### Insertion d'un champ `AUTHOR` dans un document sans utiliser DocumentBuilder

Le champ `AUTHOR` permet de préciser le nom de l'auteur du document à partir des propriétés `Document`. Le champ `AUTHOR` dans un document Word peut être représenté par la classe [FieldAuthor](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldauthor/). Vous pouvez utiliser la classe **FieldAuthor** pour effectuer les opérations suivantes:

- préciser le nom de l'auteur du document

{{% alert color="primary" %}}

Pour plus de détails, consultez la classe [FieldAuthor](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldauthor/) API.

{{% /alert %}}

L'exemple de code suivant montre comment ajouter le champ `AUTHOR` à l'aide de DOM à un paragraphe d'un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cs" >}}

### Insertion d'un champ `INCLUDETEXT` dans un document sans utiliser DocumentBuilder

Le champ `INCLUDETEXT` insère le texte et les graphiques contenus dans le document nommé dans le code du champ. Vous pouvez insérer l'intégralité du document ou une partie du document référencé par un signet. Ce champ dans le document Word est représenté par INCLUDETEXT. Vous pouvez utiliser la classe [FieldIncludeText](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldincludetext/) pour effectuer les opérations suivantes:

- précisez le nom du signet du document inclus
- préciser l'emplacement du document

{{% alert color="primary" %}}

Pour plus de détails, consultez la classe [FieldIncludeText](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldincludetext/) API.

{{% /alert %}}

L'exemple de code suivant montre comment ajouter le champ `INCLUDETEXT` à l'aide de DOM à un paragraphe d'un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertIncludeFieldWithoutDocumentBuilder-InsertFieldIncludeTextWithoutDocumentBuilder.cs" >}}

### Insertion d'un champ `TOA` dans un document sans utiliser DocumentBuilder

Le champ `TOA` (*Table of Authorities*) construit et insère une table d'autorités. Le champ `TOA` collecte les entrées marquées par les champs `TA` (*Table of Authorities Entry*). Microsoft Office Word insère le champ `TOA` lorsque vous cliquez sur *Insérer une table d'autorités* dans le groupe **Tableau des autorités** de l'onglet **References**. Lorsque vous affichez le champ `TOA` dans votre document, la syntaxe ressemble à ceci:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Pour plus de détails, consultez la classe [FieldToa](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldtoa/) API.

{{% /alert %}}

L'exemple de code suivant montre comment ajouter le champ `TOA` à l'aide de DOM à un paragraphe d'un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cs" >}}
