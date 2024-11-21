---
title: Mail Merge Modèle en C++
second_title: Aspose.Words pour C++
articleTitle: Mail Merge Modèle
linktitle: Mail Merge Modèle
type: docs
description: "Créez un modèle mail merge pour définir un contenu fixe dans les documents de sortie, puis générez des documents de fusion à l'aide des champs de fusion."
keywords: "create mail merge template с++"
weight: 10
url: /fr/cpp/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

Il est courant d'utiliser un modèle de fusion comme document de base pour une opération mail merge, qu'il s'agisse d'un simple mail merge ou mail merge avec des régions. Mail merge avec des régions est plus puissant et populaire que le simple mail merge. Simple mail merge est considéré comme un cas particulier de mail merge avec des régions où la région est le document entier. Tout est expliqué dans le prochain article "Types d'opération Mail Merge" plus en détail.

Le modèle garantit que le texte du document fusionné en sortie est correctement formaté et l'opération mail merge garantit que le texte de la source de données est correctement entré dans le modèle de fusion.

Aspose.Words offre la possibilité de créer un modèle mail merge pour définir un contenu fixe, puis de générer des documents de fusion à l'aide des champs de fusion. Ainsi, le modèle de fusion aura le texte nécessaire, qui est le même dans tous les documents de sortie, et les champs de fusion pour remplir le contenu changeant. Par conséquent, les informations de la source de données spécifiée seront ajoutées au modèle de fusion via ces champs lors de la génération du document fusionné.

## Qu'est-ce qu'un modèle Mail Merge

Un modèle mail merge est un document personnalisé qui contient les données fixes et les champs fusionnés où vous souhaitez que le texte de la variable soit. Un modèle de fusion peut être dans n'importe quel format prenant en charge les champs, par exemple, DOC, DOCX, DOT, DOTX, RTF. De plus, vous pouvez également utiliser le modèle mustache expliqué plus en détail dans l'article "Syntaxe du modèleMustache".

Vous pouvez créer un modèle de fusion pour servir de modèle pour de nouveaux documents, et il doit inclure le texte principal qui doit être le même pour chaque version du document fusionné. L'ajout de champs de fusion à l'intérieur du modèle représentera les données de personnalisation telles que les noms ou les adresses récupérés à partir d'une source de données. Une opération mail merge insérera automatiquement les données de personnalisation de votre source de données dans votre document de modèle de fusion.

De plus, vous pouvez ajouter une région mail merge dans votre modèle en insérant deux champs mail merge pour marquer le début et la fin de la région de messagerie. L'article suivant "Types d'opération Mail Merge" explique cela plus en détail.

## Créer un modèle Mail Merge

Vous pouvez créer un modèle et y ajouter des champs de fusion spécifiques, qui seront remplacés par les valeurs de la source de données soit manuellement, par exemple, en utilisant Microsoft Word, soit par programmation en utilisant Aspose.Words. Dans cet article, nous examinerons la manière programmatique de créer un modèle.

Utilisez la classe [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) pour créer le modèle de fusion requis à l'aide de Aspose.Words. Vous pouvez inclure un texte, un champ de fusion et un saut de ligne dans un tel modèle à l'aide des méthodes [InsertTextInput](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserttextinput/), [InsetField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) et [InsertParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertparagraph/).

L'exemple de code suivant montre comment créer un modèle mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeTemplate-CreateMailMergeTemplate.cpp" >}}

L'image ci-dessous montre le modèle créé:

<img src="mail-merge-template-1.png" alt="mail_merge_template-aspose-words-cpp" style="width:650px"/>

## Personnaliser les propriétés d'un modèle Mail Merge

Aspose.Words vous permet de personnaliser votre modèle à travers de nombreuses propriétés. La personnalisation des modèles sera décrite ci-dessous à travers un exemple de personnalisation de certaines propriétés des images et du texte.

### Personnaliser les Propriétés de l'Image

Vous pouvez spécifier les propriétés de l'image à l'aide de la classe [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/).

L'exemple de code suivant montre comment spécifier le nom du fichier image et la taille de l'image:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-ImageFieldMerging.cpp" >}}

### Personnaliser Les Propriétés Du Texte

Vous pouvez utiliser la propriété [Text](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/fieldmergingargs/get_text/) pour insérer du texte dans le document pour le champ de fusion actuel. En outre, vous pouvez modifier la mise en forme des textes et des paragraphes à l'intérieur de votre modèle en utilisant les classes [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) et [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/). Vous pouvez gérer le texte à insérer avant ou après le champ de fusion en utilisant les propriétés [TextBefore](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textbefore/) et [TextAfter](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textafter/) incluses dans la classe [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/).

L'exemple de code suivant montre comment insérer des cases à cocher ou HTML pendant l'opération mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier d'exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Vous pouvez également vérifier l'implémentation de la classe `HandleMergeField` à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Voir Aussi

* Pour plus de détails sur la création manuelle de modèles dans Microsoft Word, veuillez consulter le [Créer un Modèle](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) article dans la documentation Microsoft
