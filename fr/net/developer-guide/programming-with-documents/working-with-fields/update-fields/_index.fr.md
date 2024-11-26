---
title: Mettre à jour les champs C#
second_title: Aspose.Words pour .NET
articleTitle: Mettre à jour les champs
linktitle: Mettre à jour les champs
description: "Découvrez comment mettre à jour les champs dans C#. Mettez à jour les champs par programme ou utilisez la mise à jour automatique des champs à l'aide de .NET API."
type: docs
weight: 30
url: /fr/net/update-fields/
timestamp: 2024-01-27-14-07-04
---

Généralement, un champ inséré dans Microsoft Word contient déjà une valeur à jour. Par exemple, si le champ est une formule ou un numéro de page, il contiendra la valeur calculée correcte pour la version donnée du document. Mais si vous disposez d'une application qui génère ou modifie un document avec des champs comme la fusion de deux documents ou le remplissage de données, alors idéalement, tous les champs doivent être mis à jour pour que le document soit utile.

## Comment mettre à jour les champs

Lorsqu'un document est chargé, Aspose.Words imite le comportement de Microsoft Word avec l'option de mise à jour automatique des champs désactivée. Le comportement peut être résumé comme suit:

- lorsque vous ouvrez/enregistrez un document, les champs restent intacts
- vous pouvez mettre à jour explicitement tous les champs d'un document, par exemple, reconstruire `TOC`, lorsque vous en avez besoin
- lorsque vous imprimez/rendez au format PDF ou XPS, les champs liés à la numérotation des pages dans les en-têtes/pieds de page sont mis à jour
- lorsque vous exécutez mail merge, tous les champs sont mis à jour automatiquement

### Mettre à jour les champs par programmation

Pour mettre à jour explicitement les champs dans l'ensemble du document, appelez simplement la méthode [UpdateFields](https://reference.aspose.com/words/fr/net/aspose.words/document/updatefields/). Pour mettre à jour les champs contenus dans une partie d'un document, obtenez un objet [Range](https://reference.aspose.com/words/fr/net/aspose.words/range/) et appelez la méthode [UpdateFields](https://reference.aspose.com/words/fr/net/aspose.words/range/updatefields/). En Aspose.Words, vous pouvez obtenir un **Range** pour n'importe quel nœud de l'arborescence du document, tel que [Section](https://reference.aspose.com/words/fr/net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/fr/net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/fr/net/aspose.words/paragraph/), etc. en utilisant la propriété [Node.Range](https://reference.aspose.com/words/fr/net/aspose.words/node/range/). Vous pouvez mettre à jour le résultat d'un seul champ en appelant la méthode [Update](https://reference.aspose.com/words/fr/net/aspose.words.fields/field/update/).

### Mise à jour automatique des champs liés à la page pendant le rendu

Lorsque vous exécutez la conversion d'un document vers un format de page fixe, par exemple en PDF ou XPS, alors Aspose.Words mettra automatiquement à jour les champs `PAGE`, `PAGEREF` liés à la mise en page trouvés dans les en-têtes/pieds de page du document. Ce comportement imite le comportement de Microsoft Word lors de l'impression d'un document.

Si vous souhaitez mettre à jour tous les autres champs du document, vous devez appeler [UpdateFields](https://reference.aspose.com/words/fr/net/aspose.words/document/updatefields/) avant de restituer le document.

L'exemple de code suivant montre comment mettre à jour tous les champs avant de restituer un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Mise à jour automatique des champs pendant Mail Merge

Lorsque vous exécutez un mail merge, tous les champs du document seront automatiquement mis à jour. En effet, le Mail Merge est un cas de mise à jour de champ. Le programme rencontre un champ Mail Merge et doit mettre à jour son résultat, ce qui implique de récupérer la valeur de la source de données et de l'insérer dans le champ. La logique est bien sûr plus compliquée, par exemple, lorsque la fin de la région du document/mail merge est atteinte mais qu'il reste encore des données à fusionner, la région doit alors être dupliquée et le nouvel ensemble de champs mis à jour.

## Mettre à jour les champs ayant un attribut sale

Le w:dirty est un attribut au niveau du champ qui actualisera uniquement le champ que vous spécifiez lors de l'ouverture du document. Il indique à MS Word d'actualiser ce champ uniquement lors de la prochaine ouverture du document. Vous pouvez utiliser la propriété [UpdateDirtyFields](https://reference.aspose.com/words/fr/net/aspose.words.loading/loadoptions/updatedirtyfields/) pour spécifier s'il faut mettre à jour les champs avec l'attribut dirty. Lorsque la valeur de **UpdateDirtyFields** est définie sur *true*, tous les champs ayant une valeur *true* pour la propriété [Field.IsDirty](https://reference.aspose.com/words/fr/net/aspose.words.fields/field/isdirty/) ou [FieldChar.IsDirty](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldchar/isdirty/) sont mis à jour lors du chargement du document.

L'exemple de code suivant montre comment mettre à jour les champs ayant l'attribut dirty:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadOptionsUpdateDirtyFields.cs" >}}

## Mettre à jour la propriété LastSavedTime avant d'enregistrer

Vous pouvez utiliser la propriété [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/fr/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) pour mettre à jour la propriété de document intégrée correspondante [LastSavedTime](https://reference.aspose.com/words/fr/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) lors de l'enregistrement du document.

L'exemple de code suivant montre comment mettre à jour cette propriété:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cs" >}}
