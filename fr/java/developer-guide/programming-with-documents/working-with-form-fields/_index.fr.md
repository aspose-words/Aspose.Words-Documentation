---
title: Utilisation des champs de formulaire dans Java
second_title: Aspose.Words pour Java
articleTitle: Utilisation des champs de formulaire
linktitle: Utilisation des champs de formulaire
description: "Fonctionnalité de compréhension des champs de formulaire, utilisation des champs de formulaire à l'aide de Java."
type: docs
weight: 380
url: /fr/java/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Un document qui contient des blancs à remplir (champs) est appelé formulaire. Par exemple, vous pouvez créer un formulaire d'inscription dans Microsoft Word qui utilise des listes déroulantes à partir desquelles les utilisateurs peuvent sélectionner des entrées. Le champ `Form` est un emplacement où un type particulier de données, tel qu'un nom ou une adresse, est stocké. Les champs de formulaire dans Microsoft Word incluent la saisie de texte, combobox et checkbox.

Vous pouvez utiliser des champs de formulaire dans votre projet pour "communiquer" avec vos utilisateurs. Par exemple, vous créez un document dont le contenu est protégé, mais seuls les champs de formulaire sont modifiables. Les utilisateurs peuvent saisir les données dans les champs du formulaire et soumettre le document. Votre application qui utilise Aspose.Words peut récupérer des données à partir des champs du formulaire et les traiter.

Placer des champs de formulaire dans le document via du code est facile. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) a des méthodes spéciales pour les insérer, une pour chaque type de champ de formulaire. Chacune des méthodes accepte un paramètre de chaîne représentant le nom du champ de formulaire. Le nom peut être une chaîne vide. Si toutefois vous spécifiez un nom pour le champ de formulaire, un signet est automatiquement créé avec le même nom.

## Insérer des Champs de Formulaire

Les champs de formulaire sont un cas particulier de champs Word qui permet une "interaction" avec l'utilisateur. Les champs de formulaire dans Microsoft Word incluent la zone de texte, la zone de liste déroulante et checkbox.

**DocumentBuilder**

L'exemple de code suivant montre comment insérer un champ de formulaire combobox dans un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### Insérer une entrée de texte

Utilisez la méthode **insertTextInput** pour insérer une zone de texte dans le document.

L'exemple de code suivant montre comment insérer un champ de formulaire de saisie de texte dans un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Insérer une Case à cocher

Appelez **insertCheckBox** pour insérer un checkbox dans le document.

L'exemple de code suivant montre comment insérer un champ de formulaire checkbox dans un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Insérer une zone de liste Déroulante

Appelez **insertComboBox** pour insérer un combobox dans le document.

L'exemple de code suivant montre comment insérer un champ de formulaire Combobox dans un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Obtenir des Champs de Formulaire

Une collection de champs de formulaire est représentée par la classe [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) qui peut être récupérée à l'aide de la propriété [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields). Cela signifie que vous pouvez obtenir des champs de formulaire contenus dans n'importe quel nœud de document, y compris le document lui-même.

L'exemple de code suivant montre comment obtenir une collection de champs de formulaire:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple des exemples suivants à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

Vous pouvez obtenir un champ de formulaire particulier par son index ou son nom.

L'exemple de code suivant montre comment accéder aux champs de formulaire:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

Les propriétés **FormField** vous permettent de travailler avec le nom, le type et le résultat du champ de formulaire.

L'exemple de code suivant montre comment utiliser le nom, le type et le résultat du champ de formulaire:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
