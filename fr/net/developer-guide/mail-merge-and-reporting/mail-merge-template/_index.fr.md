---
title: Mail Merge Modèle dans C#
second_title: Aspose.Words pour .NET
articleTitle: Mail Merge Modèle
linktitle: Mail Merge Modèle
type: docs
description: "Créez un modèle Mail Merge pour définir un contenu fixe dans les documents de sortie, puis générez des documents de fusion à l'aide des champs de fusion dans C#."
keywords: "create Mail Merge template с#"
weight: 10
url: /fr/net/mail-merge-template/
timestamp: 2024-07-11-08-07-06
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

Utilisez la classe [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) pour créer le modèle de fusion requis à l'aide de Aspose.Words. Vous pouvez inclure un texte, un champ de fusion et un saut de ligne dans un tel modèle à l'aide des méthodes [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/), [InsetField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) et [InsertParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertparagraph/).

L'exemple de code suivant montre comment créer un modèle Mail Merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "create-mail-merge-template.cs" >}}

L'image ci-dessous montre le modèle créé:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Personnaliser les propriétés d'un modèle Mail Merge

Aspose.Words vous permet de personnaliser votre modèle à travers de nombreuses propriétés. La personnalisation des modèles sera décrite ci-dessous à travers un exemple de personnalisation de certaines propriétés des images et du texte.

### Personnaliser les Propriétés de l'Image

Vous pouvez spécifier les propriétés de l'image à l'aide de la classe [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/). Notez que vous pouvez insérer une image à partir d'une base de données comme décrit dans [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L214).

L'exemple de code suivant montre comment spécifier le nom du fichier image et la taille de l'image:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "image-field-merging.cs" >}}

### Personnaliser Les Propriétés Du Texte

Vous pouvez utiliser la propriété [Text](https://reference.aspose.com/words/net/aspose.words.mailmerging/fieldmergingargs/text/) pour insérer du texte dans le document pour le champ de fusion actuel. En outre, vous pouvez modifier la mise en forme des textes et des paragraphes à l'intérieur de votre modèle en utilisant les classes [Font](https://reference.aspose.com/words/net/aspose.words/font/) et [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/). Vous pouvez gérer le texte à insérer avant ou après le champ de fusion en utilisant les propriétés [TextBefore](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textbefore/) et [TextAfter](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textafter/) incluses dans la classe [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/).

L'exemple de code suivant montre comment insérer des cases à cocher ou HTML pendant l'opération Mail Merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier d'exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Fax.docx).

Vous pouvez également vérifier l'implémentation de la classe `HandleMergeField` à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/828b58e207e96afa624956867ec9c777fa10af87/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L43).

{{% /alert %}}

## Voir Aussi

* Pour plus de détails sur la création manuelle de modèles dans Microsoft Word, veuillez consulter le [Créer un Modèle](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) article dans la documentation Microsoft
