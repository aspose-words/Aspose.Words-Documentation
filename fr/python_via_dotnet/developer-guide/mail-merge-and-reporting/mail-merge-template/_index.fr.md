---
title: Mail Merge Modèle dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Mail Merge Modèle
linktitle: Mail Merge Modèle
type: docs
description: "Créez un modèle Mail Merge pour définir un contenu fixe dans les documents de sortie, puis générez des documents de fusion à l'aide des champs de fusion dans Python."
keywords: "create Mail Merge template python"
weight: 10
url: /fr/python-net/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

Il est courant d'utiliser un modèle de fusion comme document de base pour une opération Mail Merge, qu'il s'agisse d'un simple Mail Merge ou Mail Merge avec des régions. Mail merge avec les régions est plus puissant et populaire que le simple mail merge. Simple Mail Merge est considéré comme un cas particulier de Mail Merge avec des régions où la région est le document entier. Tout est expliqué dans l'article suivant "Types d'opération Mail Merge" plus en détail.

Le modèle garantit que le texte du document fusionné en sortie est correctement formaté et l'opération Mail Merge garantit que le texte de la source de données est correctement entré dans le modèle de fusion.

Aspose.Words offre la possibilité de créer un modèle Mail Merge pour définir un contenu fixe, puis de générer des documents de fusion à l'aide des champs de fusion. Ainsi, le modèle de fusion aura le texte nécessaire, qui est le même dans tous les documents de sortie, et les champs de fusion pour remplir le contenu changeant. Par conséquent, les informations de la source de données spécifiée seront ajoutées au modèle de fusion via ces champs lors de la génération du document fusionné.

## Qu'est-ce qu'un modèle Mail Merge

Un modèle Mail Merge est un document personnalisé qui contient les données fixes et les champs fusionnés où vous souhaitez que le texte de la variable soit. Un modèle de fusion peut être dans n'importe quel format prenant en charge les champs, par exemple, DOC, DOCX, DOT, DOTX, RTF. De plus, vous pouvez également utiliser le modèle mustache expliqué plus en détail dans l'article "Syntaxe du modèleMustache".

Vous pouvez créer un modèle de fusion pour servir de modèle pour de nouveaux documents, et il doit inclure le texte principal qui doit être le même pour chaque version du document fusionné. L'ajout de champs de fusion à l'intérieur du modèle représentera les données de personnalisation telles que les noms ou les adresses récupérés à partir d'une source de données. Une opération Mail Merge insérera automatiquement les données de personnalisation de votre source de données dans votre document de modèle de fusion.

De plus, vous pouvez ajouter une région Mail Merge dans votre modèle en insérant deux champs Mail Merge pour marquer le début et la fin de la région de messagerie. L'article suivant "Types d'opération Mail Merge" explique cela plus en détail.

## Créer un modèle Mail Merge

Vous pouvez créer un modèle et y ajouter des champs de fusion spécifiques, qui seront remplacés par les valeurs de la source de données soit manuellement, par exemple, en utilisant Microsoft Word, soit par programmation en utilisant Aspose.Words. Dans cet article, nous examinerons la manière programmatique de créer un modèle.

Utilisez la classe [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) pour créer le modèle de fusion requis à l'aide de Aspose.Words. Vous pouvez inclure un texte, un champ de fusion et un saut de ligne dans un tel modèle à l'aide des méthodes [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [inset_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) et [insert_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_paragraph/).

L'exemple de code suivant montre comment créer un modèle Mail Merge:

{{< highlight python >}}
@staticmethod
def create_mail_merge_template() :
    
    builder = aw.DocumentBuilder()
    
    # Insert a text input field the unique name of this field is "Hello", the other parameters define
    # what type of FormField it is, the format of the text, the field result and the maximum text length (0 = no limit)
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
    builder.insert_field("MERGEFIELD CustomerFirstName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD CustomerLastName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " , ", 0)
    
    # Inserts a paragraph break into the document
    builder.insert_paragraph()
    
    # Insert mail body
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Thanks for purchasing our ", 0)
    builder.insert_field("MERGEFIELD ProductName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", please download your Invoice at ", 0)
    builder.insert_field("MERGEFIELD InvoiceURL \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ". If you have any questions please call ", 0)
    builder.insert_field("MERGEFIELD Supportphone \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", or email us at ", 0)
    builder.insert_field("MERGEFIELD SupportEmail \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ".", 0)
    
    builder.insert_paragraph()
    
    # Insert mail ending
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Best regards,", 0)
    builder.insert_break(aw.BreakType.LINE_BREAK)
    builder.insert_field("MERGEFIELD EmployeeFullname \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD EmployeeDepartment \\* MERGEFORMAT")
    
    return builder.document
{{< /highlight >}}

L'image ci-dessous montre le modèle créé:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Personnaliser les propriétés d'un modèle Mail Merge

Aspose.Words vous permet de personnaliser votre modèle à travers de nombreuses propriétés. La personnalisation des modèles sera décrite ci-dessous à travers un exemple de personnalisation de certaines propriétés des images et du texte.

## Voir Aussi

* Pour plus de détails sur la création manuelle de modèles dans Microsoft Word, veuillez consulter le [Créer un Modèle](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) article dans la documentation Microsoft
