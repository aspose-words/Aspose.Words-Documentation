---
title: Travailler avec des champs de formulaire dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Travailler avec des champs de formulaire
linktitle: Travailler avec des champs de formulaire
description: "Insérez, obtenez ou formatez un champ de formulaire dans un document à l'aide de Python."
type: docs
weight: 380
url: /fr/python-net/working-with-form-fields/
---

Un document contenant des espaces à remplir (champs) est appelé formulaire. Par exemple, vous pouvez créer un formulaire d'inscription dans Microsoft Word qui utilise des listes déroulantes dans lesquelles les utilisateurs peuvent sélectionner des entrées. Le champ `Form` est un emplacement où un type particulier de données, tel qu'un nom ou une adresse, est stocké. Les champs de formulaire dans Microsoft Word incluent la saisie de texte, la zone de liste déroulante et la case à cocher.

Vous pouvez utiliser les champs de formulaire dans votre projet pour "communiquer" avec vos utilisateurs. Par exemple, vous créez un document dont le contenu est protégé, mais seuls les champs de formulaire sont modifiables. Les utilisateurs peuvent saisir les données dans les champs du formulaire et soumettre le document. Votre application qui utilise Aspose.Words peut récupérer les données des champs du formulaire et les traiter.

Placer des champs de formulaire dans le document via du code est facile. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) dispose de méthodes spéciales pour les insérer, une pour chaque type de champ de formulaire. Chacune des méthodes accepte un paramètre de chaîne représentant le nom du champ du formulaire. Le nom peut être une chaîne vide. Si toutefois vous spécifiez un nom pour le champ du formulaire, un signet est automatiquement créé avec le même nom.

## Insertion de champs de formulaire

Les champs de formulaire sont un cas particulier des champs Word qui permettent une "interaction" avec l'utilisateur. Les champs de formulaire dans Microsoft Word incluent une zone de texte, une zone de liste déroulante et une case à cocher.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) fournit des méthodes spéciales pour insérer chaque type de champ de formulaire dans le document: [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) et [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/). Notez que si vous spécifiez un nom pour le champ du formulaire, un signet est automatiquement créé avec le même nom.

L'exemple de code suivant montre comment insérer un champ de formulaire combobox dans un document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-InsertFormFields.py" >}}

### Insérer une entrée de texte

Utilisez la méthode [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/) pour insérer une zone de texte dans le document.

L'exemple de code suivant montre comment insérer un champ de formulaire de saisie de texte dans un document:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_text_input_form_field.docx")
{{< /highlight >}}

### Insérer une case à cocher

Appelez [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) pour insérer une case à cocher dans le document.

L'exemple de code suivant montre comment insérer un champ de formulaire de case à cocher dans un document:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_check_box("CheckBox", True, True, 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_check_box_form_field.docx")
{{< /highlight >}}

### Insérer une zone de liste déroulante

Appelez [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/) pour insérer une Combobox dans le document.

L'exemple de code suivant montre comment insérer un champ de formulaire Combobox dans un document:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

items =  ["One", "Two", "Three"] 
builder.insert_combo_box("DropDown", items, 0)

doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_combo_box_form_field.docx")
{{< /highlight >}}

## Obtenir les champs du formulaire

Une collection de champs de formulaire est représentée par la classe [FormFieldCollection](https://reference.aspose.com/words/python-net/aspose.words.fields/formfieldcollection/) qui peut être récupérée à l'aide de la propriété [form_fields](https://reference.aspose.com/words/python-net/aspose.words/range/form_fields/). Cela signifie que vous pouvez obtenir les champs de formulaire contenus dans n'importe quel nœud de document, y compris le document lui-même.

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple des exemples suivants à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetFormFieldsCollection.py" >}}

Vous pouvez obtenir un champ de formulaire particulier par son index ou son nom.

L'exemple de code suivant montre comment accéder aux champs du formulaire:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetByName.py" >}}

Les propriétés [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) vous permettent de travailler avec le nom, le type et le résultat du champ de formulaire.

L'exemple de code suivant montre comment utiliser le nom, le type et le résultat du champ de formulaire:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsWorkWithProperties.py" >}}

## Formater les champs du formulaire

La propriété [font](https://reference.aspose.com/words/python-net/aspose.words/inline/font/) de [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) permet d'appliquer le formatage de police au [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) dans son ensemble, y compris la valeur du champ.

L'exemple de code suivant montre comment appliquer le formatage de police au **FormField**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsFontFormatting.py" >}}
