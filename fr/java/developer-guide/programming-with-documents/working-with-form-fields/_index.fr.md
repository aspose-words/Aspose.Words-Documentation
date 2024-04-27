---
title: Travailler avec les champs de formulaire dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec les champs de formulaire
linktitle: Travailler avec les champs de formulaire
description: "Comprendre les champs de formulaire, travailler avec les champs de formulaire en utilisant Java."
type: docs
weight: 380
url: /fr/java/working-with-form-fields/
---

Un document qui contient des blancs de remplissage (champs) est connu comme un formulaire. Par exemple, vous pouvez créer un formulaire d'inscription dans Microsoft Word qui utilise des listes déroulantes à partir desquelles les utilisateurs peuvent sélectionner des entrées. Les `Form` champ est un endroit où un type particulier de données, comme un nom ou une adresse, est stocké. Formulaire des champs dans Microsoft Word inclure l'entrée de texte, la combobox et la case à cocher.

Vous pouvez utiliser des champs de formulaire dans votre projet pour "communiquer" avec vos utilisateurs. Par exemple, vous créez un document dont le contenu est protégé, mais seuls les champs de formulaire sont modifiables. Les utilisateurs peuvent saisir les données dans les champs de formulaire et soumettre le document. Votre application qui utilise Aspose.Words peut récupérer les données des champs de formulaire et les traiter.

Placer les champs de formulaire dans le document par code est facile. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) a des méthodes spéciales pour les insérer, une pour chaque type de champ de formulaire. Chacune des méthodes accepte un paramètre chaîne représentant le nom du champ de formulaire. Le nom peut être une chaîne vide. Si toutefois vous spécifiez un nom pour le champ formulaire, alors un signet est automatiquement créé avec le même nom.

## Insérer des champs de formulaire

Les champs de formulaire sont un cas particulier de champs Word qui permet "l'interaction" avec l'utilisateur. Formulaire des champs dans Microsoft Word inclure la boîte à texte, la case combo et la case à cocher.

**DocumentBuilder** fournit des méthodes spéciales pour insérer chaque type de champ de formulaire dans le document: [insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), [insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) ou [insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-int).

L'exemple de code suivant montre comment insérer un champ de formulaire combobox dans un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### Insérer une entrée texte

Utiliser **insérer TextInput** méthode pour insérer une boîte de texte dans le document.

L'exemple de code suivant montre comment insérer un champ de formulaire d'entrée de texte dans un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Insérer une case à cocher

Appeler **insertCheckBox** insérer une case à cocher dans le document.

L'exemple de code suivant montre comment insérer un champ de formulaire à cocher dans un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Insérer une boîte Combo

Appeler **insérerComboBox** insérer une combobox dans le document.

L'exemple de code suivant montre comment insérer un champ de formulaire Combobox dans un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Obtenir les champs de formulaire

Une collection de champs de formulaires est représentée par [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) classe qui peut être récupéré en utilisant le [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields) propriété. Cela signifie que vous pouvez obtenir des champs de formulaire contenus dans n'importe quel noeud de document, y compris le document lui-même.

L'exemple de code suivant montre comment obtenir une collection de champs de formulaire:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple des exemples suivants: [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

Vous pouvez obtenir un champ de formulaire particulier par son index ou son nom.

L'exemple de code suivant montre comment accéder aux champs de formulaire:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

Les **FormField** propriétés vous permettent de travailler avec le nom de champ de formulaire, le type et le résultat.

L'exemple de code suivant montre comment travailler avec le nom du champ de formulaire, le type et le résultat:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
