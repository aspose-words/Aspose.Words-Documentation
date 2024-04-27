---
title: Insérer des champs dans Java
second_title: Aspose.Words pour Java
articleTitle: Insérer des champs
linktitle: Insérer des champs
description: "Différentes façons d'insérer des champs dans votre document en utilisant Java."
type: docs
weight: 20
url: /fr/java/insert-fields/
---

Il existe plusieurs façons d'insérer des champs dans un document:

- utilisant [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)
- utilisant [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)
- utilisant [Aspose.Words Document Object Model (DOM)](/words/fr/java/aspose-words-document-object-model/)

Dans cet article, nous examinerons chaque manière plus en détail et analyserons comment insérer certains champs en utilisant ces options.

## Insérer des champs dans un document en utilisant DocumentBuilder

En Aspose.Words des [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean)) la méthode est utilisée pour insérer de nouveaux champs dans un document. Le premier paramètre accepte le code plein du champ à insérer. Le second paramètre est optionnel et permet de régler manuellement le résultat du champ. Si cela n'est pas fourni, le champ est mis à jour automatiquement. Vous pouvez passer null ou vide à ce paramètre pour insérer un champ avec une valeur de champ vide. Si vous n'êtes pas sûr de la syntaxe particulière du code de champ, créez le champ dans Microsoft Word d'abord et passer pour voir son code de champ.

{{% alert color="primary" %}}

Si votre code de champ a un paramètre contenant un espace, alors il doit être enfermé dans les marques vocales. Sinon le champ dans les deux Microsoft Word et Aspose.Words peut ne pas fonctionner aussi bien que prévu que le paramètre est traité par les deux comme étant tronqué.

{{% /alert %}}

L'exemple de code suivant montre comment insérer un champ de fusion dans un document en utilisant **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

La même technique est utilisée pour insérer des champs nichés dans d'autres champs.

L'exemple de code suivant montre comment insérer des champs imbriqués dans un autre champ en utilisant **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### Spécifier la zone au niveau du champ

Un identificateur de langue est une abréviation numérique internationale standard pour la langue d'un pays ou d'une région géographique. Avec Aspose.Words, vous pouvez spécifier la Locale au niveau du champ en utilisant [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId) propriété, qui obtient ou définit l'identifiant local du champ.

L'exemple de code suivant montre comment utiliser cette option:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### Insérer un champ non typé ou vide

Si vous voulez insérer des champs non tapés/vides ({}) comme Microsoft Word permet, vous pouvez utiliser [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) méthode avec [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) paramètre. Pour insérer un champ dans un document Word, vous pouvez appuyer sur la combinaison de touches -Ctrl + F9.

L'exemple de code suivant montre comment insérer un champ vide dans le document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### Insérer `COMPARE` Champ

Les `COMPARE` champ compare deux valeurs et retourne la valeur numérique 1 si la comparaison est true ou 0 si la comparaison est false.

L'exemple de code suivant montre comment ajouter `COMPARE` champs utilisant DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### Insérer `IF` Champ

Les `IF` champ peut être utilisé pour évaluer les arguments conditionnellement.

L'exemple de code suivant montre comment ajouter `IF` champs utilisant DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## Insérer des champs dans un document en utilisant FieldBuilder

La façon alternative d'insérer des champs dans Aspose.Words est la [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/) En cours. Il fournit une interface fluide pour spécifier les interrupteurs de champ et les valeurs d'argument comme des champs texte, nœuds ou même imbriqués.

L'exemple de code suivant montre comment insérer un champ dans un document en utilisant **FieldBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## Insérer des champs en utilisant DOM

Vous pouvez également insérer différents types de champs en utilisant [Aspose.Words Document Object Model (DOM)](/words/fr/java/aspose-words-document-object-model/). Dans cette section, nous examinerons quelques exemples.

### Insérer la fusion Champ dans un document en utilisant DOM

`MERGEFIELD` champ dans le document Word peut être représenté par [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) En cours. Vous pouvez utiliser **FieldMergeField** classe pour effectuer les opérations suivantes:

- spécifier le nom du champ de fusion
- spécifier le formatage du champ de fusion
- spécifier le texte qui est entre le séparateur de champ et la fin du champ de fusion
- spécifier le texte à insérer après le champ de fusion si le champ n'est pas vide
- spécifier le texte à insérer avant le champ de fusion si le champ n'est pas vide

{{% alert color="primary" %}}

Pour plus de détails, voir [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) classe API.

{{% /alert %}}

L'exemple de code suivant montre comment ajouter le `MERGE` champ en utilisant DOM au paragraphe d'un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### Insérer Mail Merge `ADDRESSBLOCK` champ dans un document en utilisant DOM

Les `ADDRESSBLOCK` champ est utilisé pour insérer un mail merge bloc d'adresse dans un document Word. `ADDRESSBLOCK` champ dans le document Word peut être représenté par [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) En cours. Vous pouvez utiliser **FieldAddressBlock** classe pour effectuer les opérations suivantes:

- indiquer si le nom du pays ou de la région doit figurer dans le champ
- indiquer s'il convient de formater l'adresse selon le pays/région du destinataire tel que défini par POST*CODE (Union postale universelle 2006)
- préciser le nom du pays ou de la région exclu
- préciser le nom et le format de l'adresse
- spécifier l'identifiant de langue utilisé pour formater l'adresse

{{% alert color="primary" %}}

Pour plus de détails, voir [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) classe API.

{{% /alert %}}

L'exemple de code suivant montre comment ajouter le Mail Merge `ADDRESSBLOCK` Champ utilisé DOM au paragraphe d'un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### Insérer `ADVANCE` champ dans un document sans utiliser DocumentBuilder

Les `ADVANCE` champ est utilisé pour compenser le texte suivant dans une ligne vers la gauche, droite, haut ou bas. `ADVANCE` champ dans le document Word peut être représenté par [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) En cours. Vous pouvez utiliser le **FieldAdvance** classe pour effectuer les opérations suivantes:

- préciser le nombre de points par lesquels le texte qui suit le champ doit être déplacé verticalement depuis le bord supérieur de la page
- indiquer le nombre de points par lesquels le texte qui suit le champ doit être déplacé horizontalement du bord gauche de la colonne, du cadre ou de la zone de texte
- indiquer le nombre de points par lesquels le texte qui suit le champ doit être déplacé à gauche, à droite, en haut ou en bas

{{% alert color="primary" %}}

Pour plus de détails, voir [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) classe API.

{{% /alert %}}

L'exemple de code suivant montre comment ajouter le `ADVANCE` Champ utilisé DOM au paragraphe d'un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### Insérer `ASK` champ dans un document sans utiliser DocumentBuilder

Les `ASK` champ est utilisé pour inciter l'utilisateur à attribuer du texte à un signet dans le document Word. `ASK` champ dans le document Word peut être représenté par [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) En cours. Vous pouvez utiliser **FieldAsk** classe pour effectuer les opérations suivantes:

- indiquer le nom du signet
- spécifier la réponse par défaut de l'utilisateur (valeur initiale contenue dans la fenêtre d'invite)
- préciser si la réponse de l'utilisateur doit être reçue une fois par mail merge fonctionnement
- spécifiez le texte de l'invite (le titre de la fenêtre de l'invite)

{{% alert color="primary" %}}

Pour plus de détails, voir [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) classe API.

{{% /alert %}}

L'exemple de code suivant montre comment ajouter le `ASK` Champ utilisé DOM au paragraphe d'un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### Insérer `AUTHOR` champ dans un document sans utiliser DocumentBuilder

Les `AUTHOR` le champ est utilisé pour spécifier le nom de l'auteur du document `Document` propriétés. `AUTHOR` champ dans le document Word peut être représenté par [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) En cours. Vous pouvez utiliser **FieldAuthor** classe pour effectuer les opérations suivantes:

- indiquer le nom de l'auteur du document

{{% alert color="primary" %}}

Pour plus de détails, voir [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) classe API.

{{% /alert %}}

L'exemple de code suivant montre comment ajouter le `AUTHOR` Champ utilisé DOM au paragraphe d'un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### Insérer `INCLUDETEXT` champ dans un document sans utiliser DocumentBuilder

Les `INCLUDETEXT` champ insère le texte et les graphiques contenus dans le document nommé dans le code de champ. Vous pouvez insérer le document entier ou une partie du document mentionné par un signet. Ce champ dans le document Word est représenté par INCLUDETEXT. Vous pouvez utiliser [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) classe pour effectuer les opérations suivantes:

- indiquer le nom du signet du document inclus
- indiquer l'emplacement du document

{{% alert color="primary" %}}

Pour plus de détails, voir [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) classe API.

{{% /alert %}}

L'exemple de code suivant montre comment ajouter le `INCLUDETEXT` champ en utilisant DOM au paragraphe d'un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### Insérer `TOA` champ dans un document sans utiliser DocumentBuilder

Les `TOA` (*Table des autorisations*) construit et insère un tableau des autorisations. Les `TOA` champ collecte les entrées marquées par `TA` (*Table des champs Autorisations Entrée*). Microsoft Bureau Word insère le `TOA` champ lorsque vous cliquez sur *Insérer le tableau des autorisations* dans le **Tableau des autorités** sur le **References** onglet. Lorsque vous voyez le `TOA` champ dans votre document, la syntaxe ressemble à ceci:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Pour plus de détails, voir [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/) classe API.

{{% /alert %}}

L'exemple de code suivant montre comment ajouter le `TOA` champ en utilisant DOM au paragraphe d'un document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}
