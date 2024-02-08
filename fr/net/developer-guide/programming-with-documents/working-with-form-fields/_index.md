---
title: Travailler avec des champs de formulaire dans C#
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec des champs de formulaire
linktitle: Travailler avec des champs de formulaire
description: "Comprendre la fonctionnalité des champs de formulaire et travailler avec les champs de formulaire à l'aide de C#."
type: docs
weight: 380
url: /fr/net/working-with-form-fields/
---

Un document contenant des espaces à remplir (champs) est appelé formulaire. Par exemple, vous pouvez créer un formulaire d'inscription dans Microsoft Word qui utilise des listes déroulantes dans lesquelles les utilisateurs peuvent sélectionner des entrées. Le champ `Form` est un emplacement où un type particulier de données, tel qu'un nom ou une adresse, est stocké. Les champs de formulaire dans Microsoft Word incluent la saisie de texte, la zone de liste déroulante et la case à cocher.

Vous pouvez utiliser les champs de formulaire dans votre projet pour "communiquer" avec vos utilisateurs. Par exemple, vous créez un document dont le contenu est protégé, mais seuls les champs de formulaire sont modifiables. Les utilisateurs peuvent saisir les données dans les champs du formulaire et soumettre le document. Votre application qui utilise Aspose.Words peut récupérer les données des champs du formulaire et les traiter.

Placer des champs de formulaire dans le document via du code est facile. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) dispose de méthodes spéciales pour les insérer, une pour chaque type de champ de formulaire. Chacune des méthodes accepte un paramètre de chaîne représentant le nom du champ du formulaire. Le nom peut être une chaîne vide. Si toutefois vous spécifiez un nom pour le champ du formulaire, un signet est automatiquement créé avec le même nom.

## Insérer des champs de formulaire

Les champs de formulaire sont un cas particulier des champs Word qui permettent une "interaction" avec l'utilisateur. Les champs de formulaire dans Microsoft Word incluent une zone de texte, une zone de liste déroulante et une case à cocher.

**DocumentBuilder** fournit des méthodes spéciales pour insérer chaque type de champ de formulaire dans le document: [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/), [InsertCheckBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcheckbox/) et [InsertComboBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcombobox/). Notez que si vous spécifiez un nom pour le champ du formulaire, un signet est automatiquement créé avec le même nom.

L'exemple de code suivant montre comment insérer un champ de formulaire combobox dans un document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cs" >}}

### Insérer une entrée de texte

Utilisez la méthode **InsertTextInput** pour insérer une zone de texte dans le document.

L'exemple de code suivant montre comment insérer un champ de formulaire de saisie de texte dans un document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cs" >}}

### Insérer une case à cocher

Appelez **InsertCheckBox** pour insérer une case à cocher dans le document.

L'exemple de code suivant montre comment insérer un champ de formulaire de case à cocher dans un document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cs" >}}

### Insérer une zone de liste déroulante

Appelez **InsertComboBox** pour insérer une liste déroulante dans le document.

L'exemple de code suivant montre comment insérer un champ de formulaire Combobox dans un document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cs" >}}

## Obtenir les champs du formulaire

Une collection de champs de formulaire est représentée par la classe [FormFieldCollection](https://reference.aspose.com/words/net/aspose.words.fields/formfieldcollection/) qui peut être récupérée à l'aide de la propriété [FormFields](https://reference.aspose.com/words/net/aspose.words/range/formfields/). Cela signifie que vous pouvez obtenir les champs de formulaire contenus dans n'importe quel nœud de document, y compris le document lui-même.

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple des exemples suivants à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

L'exemple de code suivant montre comment obtenir une collection de champs de formulaire:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cs" >}}

Vous pouvez obtenir un champ de formulaire particulier par son index ou son nom.

L'exemple de code suivant montre comment accéder aux champs du formulaire:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cs" >}}

Les propriétés **FormField** vous permettent de travailler avec le nom, le type et le résultat du champ de formulaire.

L'exemple de code suivant montre comment utiliser le nom, le type et le résultat du champ de formulaire:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cs" >}}

## Formater les champs du formulaire

La propriété [Font](https://reference.aspose.com/words/net/aspose.words/inline/font/) de [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) permet d'appliquer le formatage de la police au **FormField** dans son ensemble, y compris la valeur du champ.

L'exemple de code suivant montre comment appliquer le formatage de police au **FormField**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsFontFormatting-FormFieldsFontFormatting.cs" >}}
