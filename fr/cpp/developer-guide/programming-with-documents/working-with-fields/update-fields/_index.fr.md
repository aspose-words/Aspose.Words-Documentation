---
title: Mettre à jour les champs en C++
second_title: Aspose.Words pour C++
articleTitle: Mettre à Jour les Champs
linktitle: Mettre à Jour les Champs
description: "Apprenez à mettre à jour les champs en C++. Mettez à jour les champs par programme ou utilisez la mise à jour automatique des champs à l'aide de l'API C++."
type: docs
weight: 30
url: /fr/cpp/update-fields/
timestamp: 2024-01-27-14-07-04
---

En règle générale, un champ inséré dans Microsoft Word contient déjà une valeur à jour. Par exemple, si le champ est une formule ou un numéro de page, il contiendra la valeur calculée correcte pour la version donnée du document. Mais si vous avez une application qui génère ou modifie un document avec des champs tels que la fusion de deux documents ou le remplissage de données, idéalement, tous les champs doivent être mis à jour pour que le document soit utile.

## Comment mettre à jour les Champs

Lorsqu'un document est chargé, Aspose.Words imite le comportement de Microsoft Word avec l'option de mise à jour automatique des champs est désactivée. Le comportement peut être résumé comme suit:

- lorsque vous ouvrez/enregistrez un document, les champs restent intacts
- vous pouvez explicitement mettre à jour tous les champs d'un document, par exemple, reconstruire `TOC`, lorsque vous en avez besoin
- lorsque vous effectuez un rendu sur PDF ou XPS, les champs liés à la numérotation des pages dans les en-têtes/pieds de page sont mis à jour
- lorsque vous exécutez mail merge, tous les champs sont mis à jour automatiquement

### Mettre À Jour Les Champs Par Programmation

Pour mettre à jour explicitement des champs dans l'ensemble du document, appelez simplement la méthode [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/). Pour mettre à jour des champs contenus dans une partie d'un document, obtenez un objet [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) et appelez la méthode [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/range/updatefields/). Dans Aspose.Words, vous pouvez obtenir un **Range** pour n'importe quel nœud de l'arborescence du document, tel que [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), etc. en utilisant la propriété [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/).Vous pouvez mettre à jour le résultat d'un seul champ en appelant la méthode [Update](https://reference.aspose.com/words/cpp/aspose.words.fields/field/update/).

### Mise à jour Automatique des Champs Liés à la Page Lors du rendu

Lorsque vous exécutez la conversion d'un document vers un format de page fixe, par exemple en PDF ou XPS, Aspose.Words mettra automatiquement à jour les champs liés à la mise en page `PAGE`, `PAGEREF` trouvés dans les en-têtes/pieds de page du document. Ce comportement imite le comportement de Microsoft Word lors de l'impression d'un document.

Si vous souhaitez mettre à jour tous les autres champs du document, vous devez appeler [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/) avant de rendre le document.

L'exemple de code suivant montre comment mettre à jour tous les champs avant de rendre un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cpp" >}}

### Mise À Jour Automatique Des Champs Pendant Mail Merge

Lorsque vous exécutez un mail merge, tous les champs du document seront automatiquement mis à jour. C'est parce que le mail merge est un cas de mise à jour de champ. Le programme rencontre un champ mail merge et doit mettre à jour son résultat, ce qui implique de récupérer la valeur de la source de données et de l'insérer dans le champ. La logique est bien sûr plus compliquée, par exemple, lorsque la fin de la région document/mail merge est atteinte mais qu'il reste encore d'autres données à fusionner, la région doit être dupliquée et le nouvel ensemble de champs mis à jour.

## Mettre À Jour La Propriété LastSavedTime Avant d'Enregistrer

Vous pouvez utiliser la propriété [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatelastsavedtimeproperty/) pour mettre à jour la propriété de document intégrée correspondante [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) lors de l'enregistrement du document.

L'exemple de code suivant montre comment mettre à jour cette propriété:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cpp" >}}


