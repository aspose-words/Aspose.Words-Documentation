---
title: Mise à jour des champs Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Mettre à jour les champs
linktitle: Mettre à jour les champs
description: "Mettez à jour les champs d'un document de différentes manières et en utilisant différentes options dans Python."
type: docs
weight: 30
url: /fr/python-net/update-fields/
---

Généralement, un champ inséré dans Microsoft Word contient déjà une valeur à jour. Par exemple, si le champ est une formule ou un numéro de page, il contiendra la valeur calculée correcte pour la version donnée du document. Mais si vous disposez d'une application qui génère ou modifie un document avec des champs comme la fusion de deux documents ou le remplissage de données, alors idéalement, tous les champs doivent être mis à jour pour que le document soit utile.

## Comment mettre à jour les champs

Lorsqu'un document est chargé, Aspose.Words imite le comportement de Microsoft Word avec l'option de mise à jour automatique des champs désactivée. Le comportement peut être résumé comme suit:

- lorsque vous ouvrez/enregistrez un document, les champs restent intacts
- vous pouvez explicitement mettre à jour tous les champs d'un document (par exemple, reconstruire la table des matières) lorsque vous en avez besoin
- lorsque vous imprimez/rendez au format PDF ou XPS, les champs liés à la numérotation des pages dans les en-têtes/pieds de page sont mis à jour
- lorsque vous exécutez mail merge, tous les champs sont mis à jour automatiquement

### Mettre à jour les champs par programmation

Pour mettre à jour explicitement les champs dans l'ensemble du document, appelez simplement [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/). Pour mettre à jour les champs contenus dans une partie d'un document, obtenez un objet [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) et appelez la méthode [update_fields](https://reference.aspose.com/words/python-net/aspose.words/range/update_fields/). En Aspose.Words, vous pouvez obtenir un **Range** pour n'importe quel nœud de l'arborescence du document, tel que [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), etc. en utilisant la propriété [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/). Vous pouvez mettre à jour le résultat d'un seul champ en appelant la méthode [update](https://reference.aspose.com/words/python-net/aspose.words.fields/field/update/).

### Mise à jour automatique des champs liés à la page pendant le rendu

Lorsque vous exécutez la conversion d'un document vers un format de page fixe, par exemple en PDF ou XPS, alors Aspose.Words mettra automatiquement à jour les champs `PAGE`, `PAGEREF` liés à la mise en page trouvés dans les en-têtes/pieds de page du document. Ce comportement imite le comportement de Microsoft Word lors de l'impression d'un document.

Si vous souhaitez mettre à jour tous les autres champs du document, vous devez appeler [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) avant de restituer le document.

L'exemple de code suivant montre comment mettre à jour tous les champs avant de restituer un document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-UpdateDocFields.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Mise à jour automatique des champs pendant Mail Merge

Lorsque vous exécutez un mail merge, tous les champs du document seront automatiquement mis à jour. En effet, le mail merge est un cas de mise à jour de champ. Le programme rencontre un champ mail merge et doit mettre à jour son résultat, ce qui implique de récupérer la valeur de la source de données et de l'insérer dans le champ. La logique est bien sûr plus compliquée, par exemple, lorsque la fin de la région du document/mail merge est atteinte mais qu'il reste encore des données à fusionner, la région doit alors être dupliquée et le nouvel ensemble de champs mis à jour.

## Mettre à jour les champs ayant un attribut sale

Le w:dirty est un attribut au niveau du champ qui actualisera uniquement le champ que vous spécifiez lors de l'ouverture du document. Il indique à MS Word d'actualiser ce champ uniquement lors de la prochaine ouverture du document. Vous pouvez utiliser la propriété [update_dirty_fields](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/update_dirty_fields/) pour spécifier s'il faut mettre à jour les champs avec l'attribut dirty. Lorsque la valeur de **update_dirty_fields** est définie sur `True`, tous les champs ayant une valeur `True` pour la propriété [Field.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/field/is_dirty/) ou [FieldChar.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/is_dirty/) sont mis à jour lors du chargement du document.

L'exemple de code suivant montre comment mettre à jour les champs ayant l'attribut dirty:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UpdateDirtyFields.py" >}}

## Mettre à jour la propriété LastSavedTime avant d'enregistrer

Vous pouvez utiliser la propriété [SaveOptions.update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) pour mettre à jour la propriété de document intégrée correspondante [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) lors de l'enregistrement du document.

L'exemple de code suivant montre comment mettre à jour cette propriété:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

