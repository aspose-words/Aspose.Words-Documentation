---
title: Insérer des champs en C++
second_title: Aspose.Words pour C++
articleTitle: Insérer des Champs
linktitle: Insérer des Champs
description: "Différentes façons d'insérer des champs dans votre document en utilisant C++."
type: docs
weight: 20
url: /fr/cpp/inserting-fields/
timestamp: 2024-01-27-14-07-04
---

Il existe plusieurs façons d'insérer des champs dans un document:

- en utilisant [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)
- en utilisant [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/)
- en utilisant [Aspose.Words Modèle d'objet de document (DOM)](/words/cpp/aspose-words-document-object-model/)

Dans cet article, nous examinerons chaque méthode plus en détail et analyserons comment insérer certains champs à l'aide de ces options.

## Insertion de champs dans un document à l'aide de DocumentBuilder

Dans Aspose.Words, la méthode [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) est utilisée pour insérer de nouveaux champs dans un document. Le premier paramètre accepte le code de champ complet du champ à insérer. Le deuxième paramètre est facultatif et permet de définir manuellement le résultat du champ. Si ce n'est pas le cas, le champ est mis à jour automatiquement. Vous pouvez passer null ou empty à ce paramètre pour insérer un champ avec une valeur de champ vide. Si vous n'êtes pas sûr de la syntaxe du code de champ particulier, créez d'abord le champ dans Microsoft Word et basculez pour voir son code de champ.

{{% alert color="primary" %}}

Si votre code de champ a un paramètre contenant un espace, il doit être entouré de marques vocales. Sinon, le champ dans Microsoft Word et Aspose.Words peut ne pas fonctionner comme prévu car le paramètre est traité par les deux comme tronqué

{{% /alert %}}

L'exemple de code suivant montre comment insérer un champ de fusion dans un document à l'aide de **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertField.h" >}}

La même technique est utilisée pour insérer des champs imbriqués dans d'autres champs.

L'exemple de code suivant montre comment insérer des champs imbriqués dans un autre champ à l'aide de **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cpp" >}}

### Spécifiez les paramètres régionaux au niveau du champ

Un identifiant de langue est une abréviation numérique internationale standard pour la langue d'un pays ou d'une région géographique. Avec Aspose.Words, vous pouvez spécifier les paramètres régionaux au niveau du champ à l'aide de la propriété [LocaleId](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_localeid/), qui obtient ou définit l'ID de paramètres régionaux du champ.

L'exemple de code suivant montre comment utiliser cette option:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

### Insérer un Champ Non Typé / Vide

Si vous souhaitez insérer des champs non typés/vides ({}) comme Microsoft Word le permet, vous pouvez utiliser la méthode [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield) avec le paramètre [FieldType.FieldNone](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/). Pour insérer un champ dans un document Word, vous pouvez appuyer sur la combinaison de touches" Ctrl + F9".

L'exemple de code suivant montre comment insérer un champ vide dans le document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cpp" >}}

## Insertion de champs dans un document à l'aide de FieldBuilder

L'autre façon d'insérer des champs dans Aspose.Words est la classe [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/). Il fournit une interface fluide pour spécifier les commutateurs de champ et les valeurs d'argument sous forme de texte, de nœuds ou même de champs imbriqués.

L'exemple de code suivant montre comment insérer un champ dans un document à l'aide de **FieldBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder-InsertFieldUsingFieldBuilder.cpp" >}}

## Insertion de champs à l'aide de DOM

Vous pouvez également insérer différents types de champs en utilisant [Aspose.Words Modèle d'objet de document (DOM)](/words/cpp/aspose-words-document-object-model/). Dans cette section, nous examinerons quelques exemples.

### Insertion d'un champ de fusion dans un document à l'aide de DOM

Le champ `MERGEFIELD` dans un document Word peut être représenté par la classe [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/). Vous pouvez utiliser la classe **FieldMergeField** pour effectuer les opérations suivantes:

- spécifiez le nom du champ de fusion
- spécifiez la mise en forme du champ de fusion
- spécifiez le texte qui se trouve entre le séparateur de champ et la fin de champ du champ de fusion
- spécifiez le texte à insérer après le champ de fusion si le champ n'est pas vide
- spécifiez le texte à insérer avant le champ de fusion si le champ n'est pas vide

{{% alert color="primary" %}}

Pour plus de détails, consultez l'API de classe [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/).

{{% /alert %}}

L'exemple de code suivant montre comment ajouter le champ `MERGE` à l'aide du DOM à un paragraphe dans un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier d'exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Insertion d'un champ de bloc d'adresses Mail Merge dans un document à l'aide du DOM

Le champ `ADDRESSBLOCK` est utilisé pour insérer un bloc d'adresse Mail Merge dans un document Word. le champ `ADDRESSBLOCK` dans un document Word peut être représenté par la classe [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/). Vous pouvez utiliser la classe **FieldAddressBlock** pour effectuer les opérations suivantes:

- indiquez s'il faut inclure le nom du pays/de la région dans le champ
- indiquez s'il faut formater l'adresse en fonction du pays/de la région du destinataire tel que défini par le CODE POSTAL * (Union postale universelle 2006)
- spécifiez le nom du pays/de la région exclu
- spécifiez le format du nom et de l'adresse
- spécifiez l'ID de langue utilisé pour formater l'adresse

{{% alert color="primary" %}}

Pour plus de détails, consultez l'API de classe [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/).

{{% /alert %}}

L'exemple de code suivant montre comment ajouter le champ Mail Merge `ADDRESSBLOCK` à l'aide du DOM à un paragraphe d'un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier d'exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Insertion d'un champ avancé dans un document sans utiliser DocumentBuilder

Le champ `ADVANCE` est utilisé pour décaler le texte suivant d'une ligne vers la gauche, la droite, le haut ou le bas. Le champ `ADVANCE` dans un document Word peut être représenté par la classe [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/). Vous pouvez utiliser la classe FieldAdvance pour effectuer les opérations suivantes:

- spécifiez le nombre de points par lesquels le texte qui suit le champ doit être déplacé verticalement à partir du bord supérieur de la page
- spécifiez le nombre de points par lesquels le texte qui suit le champ doit être déplacé horizontalement à partir du bord gauche de la colonne, du bloc ou de la zone de texte
- spécifiez le nombre de points par lesquels le texte qui suit le champ doit être déplacé vers la gauche, la droite, le haut ou le bas

{{% alert color="primary" %}}

Pour plus de détails, consultez l'API de classe [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/).

{{% /alert %}}

L'exemple de code suivant montre comment ajouter le champ `ADVANCE` à l'aide du DOM à un paragraphe dans un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAdvanceFieldWithoutDocumentBuilder-InsertAdvanceFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier d'exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Insertion d'un champ `ASK` dans un document sans utiliser DocumentBuilder

Le champ `ASK` est utilisé pour inviter l'utilisateur à attribuer du texte à un signet dans un document Word. le champ `ASK` dans un document Word peut être représenté par la classe [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask/). Vous pouvez utiliser la classe **FieldAsk** pour effectuer les opérations suivantes:

- spécifiez le nom du signet
- spécifiez la réponse utilisateur par défaut (valeur initiale contenue dans la fenêtre d'invite)
- spécifiez si la réponse de l'utilisateur doit être reçue une fois par opération mail merge
- spécifiez le texte de l'invite (le titre de la fenêtre d'invite)

{{% alert color="primary" %}}

Pour plus de détails, consultez l'API de classe [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask).

{{% /alert %}}

L'exemple de code suivant montre comment ajouter le champ `ASK` à l'aide du DOM à un paragraphe dans un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertASKFieldWithoutDocumentBuilder-InsertASKFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier d'exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Insertion d'un champ `AUTHOR` dans un document sans utiliser DocumentBuilder

Le champ `AUTHOR` est utilisé pour spécifier le nom de l'auteur du Document à partir des propriétés `Document`. Le champ `AUTHOR` dans un document Word peut être représenté par la classe [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/). Vous pouvez utiliser la classe **FieldAuthor** pour effectuer les opérations suivantes:

- spécifiez le nom de l'auteur du document

{{% alert color="primary" %}}

Pour plus de détails, consultez l'API de classe [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/).

{{% /alert %}}

L'exemple de code suivant montre comment ajouter le champ `AUTHOR` à l'aide du DOM à un paragraphe dans un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cpp" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier d'exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Insertion d'un champ `INCLUDETEXT` dans un document sans utiliser DocumentBuilder

Le champ `INCLUDETEXT` insère le texte et les graphiques contenus dans le document nommé dans le code du champ. Vous pouvez insérer le document entier ou une partie du document référencé par un signet. Ce champ dans le document Word est représenté par INCLUDETEXT. Vous pouvez utiliser la classe [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) pour effectuer les opérations suivantes:

- spécifiez le nom du signet du document inclus
- spécifiez l'emplacement du document

{{% alert color="primary" %}}

Pour plus de détails, consultez l'API de classe [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/).

{{% /alert %}}

L'exemple de code suivant montre comment ajouter le champ `INCLUDETEXT` à l'aide du DOM à un paragraphe dans un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertFieldIncludeTextWithoutDocumentBuilder.h" >}}

### Insertion d'un champ `TOA` dans un document sans utiliser DocumentBuilder

Le champ `TOA` (*Table of Authorities*) construit et insère une table d'autorités. Le champ `TOA` collecte les entrées marquées par des champs `TA` (*Table of Authorities Entry*). Microsoft Office Word insère le champ `TOA` lorsque vous cliquez sur *Insert Table of Authorities* dans le groupe **Table of Authorities** de l'onglet **References**. Lorsque vous affichez le champ `TOA` dans votre document, la syntaxe ressemble à ceci:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Pour plus de détails, consultez l'API de classe [FieldToa](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtoa/).

{{% /alert %}}

L'exemple de code suivant montre comment ajouter le champ `TOA` à l'aide du DOM à un paragraphe dans un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cpp" >}}/
