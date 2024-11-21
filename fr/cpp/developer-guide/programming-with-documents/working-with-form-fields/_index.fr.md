---
title: Utilisation des champs de formulaire en C++
second_title: Aspose.Words pour C++
articleTitle: Utilisation des champs de formulaire
linktitle: Utilisation des champs de formulaire
description: "Comprendre la fonctionnalité Champs de formulaire, travailler avec des champs de formulaire en utilisant C++."
type: docs
weight: 380
url: /fr/cpp/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Un document qui contient des blancs à remplir (champs) est appelé formulaire. Par exemple, vous pouvez créer un formulaire d'inscription dans Microsoft Word qui utilise des listes déroulantes à partir desquelles les utilisateurs peuvent sélectionner des entrées. Un champ de formulaire est un emplacement où un type particulier de données, tel qu'un nom ou une adresse, est stocké. Les champs de formulaire dans Microsoft Word incluent la saisie de texte, la zone de liste déroulante et la case à cocher.

Vous pouvez utiliser des champs de formulaire dans votre projet pour "communiquer" avec vos utilisateurs. Par exemple, vous créez un document dont le contenu est protégé, mais seuls les champs de formulaire sont modifiables. Les utilisateurs peuvent saisir les données dans les champs du formulaire et soumettre le document. Votre application qui utilise Aspose.Words peut récupérer des données à partir des champs du formulaire et les traiter.

Placer des champs de formulaire dans le document via du code est facile. [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) a des méthodes spéciales pour les insérer, une pour chaque type de champ de formulaire. Chacune des méthodes accepte un paramètre de chaîne représentant le nom du champ de formulaire. Le nom peut être une chaîne vide. Si toutefois vous spécifiez un nom pour le champ de formulaire, un signet est automatiquement créé avec le même nom.

## Insertion de Champs de Formulaire

Les champs de formulaire sont un cas particulier de champs Word qui permet une "interaction" avec l'utilisateur. Les champs de formulaire dans Microsoft Word incluent une zone de texte, une zone de liste déroulante et une case à cocher.

**DocumentBuilder**

L'exemple de code suivant montre comment insérer un champ de formulaire combobox dans un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cpp" >}}

## Obtention Des Champs de Formulaire

Une collection de champs de formulaire est représentée par la classe [FormFieldCollection](https://reference.aspose.com/words/cpp/aspose.words.fields/formfieldcollection/) qui peut être récupérée à l'aide de la propriété [FormFields](https://reference.aspose.com/words/cpp/aspose.words/range/get_formfields/). Cela signifie que vous pouvez obtenir des champs de formulaire contenus dans n'importe quel nœud de document, y compris le document lui-même.

L'exemple de code suivant montre comment obtenir une collection de champs de formulaire:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cpp" >}}

Vous pouvez obtenir un champ de formulaire particulier par son index ou son nom.

L'exemple de code suivant montre comment accéder aux champs de formulaire:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cpp" >}}

Les propriétés **FormField** vous permettent de travailler avec le nom, le type et le résultat du champ de formulaire.

L'exemple de code suivant montre comment utiliser le nom, le type et le résultat du champ de formulaire:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cpp" >}}
