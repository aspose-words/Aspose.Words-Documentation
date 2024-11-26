---
title: Mettre à jour les champs dans Java
second_title: Aspose.Words pour Java
articleTitle: Mettre à Jour les Champs
linktitle: Mettre à Jour les Champs
description: "Découvrez comment mettre à jour les champs dans Java. Mettez à jour les champs par programmation ou utilisez la mise à jour automatique des champs à l'aide de Java API"
type: docs
weight: 30
url: /fr/java/update-field/
timestamp: 2024-01-27-14-07-04
---

En règle générale, un champ inséré dans Microsoft Word contient déjà une valeur à jour. Par exemple, si le champ est une formule ou un numéro de page, il contiendra la valeur calculée correcte pour la version donnée du document. Mais si vous avez une application qui génère ou modifie un document avec des champs tels que la fusion de deux documents ou le remplissage de données, idéalement, tous les champs doivent être mis à jour pour que le document soit utile.

## Comment mettre à jour les Champs

Lorsqu'un document est chargé, Aspose.Words imite le comportement de Microsoft Word avec l'option de mise à jour automatique des champs désactivée. Le comportement peut être résumé comme suit:

- lorsque vous ouvrez/enregistrez un document, les champs restent intacts
- vous pouvez explicitement mettre à jour tous les champs d'un document, par exemple, reconstruire `TOC` lorsque vous en avez besoin
- lorsque vous imprimez / rendez sur PDF ou XPS, les champs liés à la numérotation des pages dans les en-têtes/pieds de page sont mis à jour
- lorsque vous exécutez Mail Merge, tous les champs sont mis à jour automatiquement

### Mettre À Jour Les Champs Par Programmation

Pour mettre à jour explicitement des champs dans l'ensemble du document, appelez simplement la méthode [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields). Pour mettre à jour des champs contenus dans une partie d'un document, obtenez un objet [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) et appelez la méthode [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields). Dans Aspose.Words, vous pouvez obtenir un **Range** pour n'importe quel nœud de l'arborescence du document, tel que [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), etc. en utilisant la propriété [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange). Vous pouvez mettre à jour le résultat d'un seul champ en appelant la méthode [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update).

### Mise à jour automatique des champs liés à la Page lors du rendu

Lorsque vous exécutez la conversion d'un document dans un format de page fixe, par exemple en PDF ou XPS, Aspose.Words mettra automatiquement à jour les champs liés à la mise en page `PAGE`, `PAGEREF` trouvés dans les en-têtes/pieds de page du document. Ce comportement imite le comportement de Microsoft Word lors de l'impression d'un document.

Si vous souhaitez mettre à jour tous les autres champs du document, vous devez appeler [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) avant de rendre le document.

L'exemple suivant montre comment mettre à jour tous les champs avant de rendre un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### Mise à jour automatique des champs pendant Mail Merge

Lorsque vous exécutez un mail merge, tous les champs du document seront automatiquement mis à jour. C'est parce que le Mail Merge est un cas de mise à jour de champ. Le programme rencontre un champ Mail Merge et doit mettre à jour son résultat, ce qui implique de récupérer la valeur de la source de données et de l'insérer dans le champ. La logique est, bien sûr, plus compliquée, par exemple, lorsque la fin de la région document/mail merge est atteinte mais qu'il reste encore des données à fusionner, la région doit être dupliquée et le nouvel ensemble de champs mis à jour.

## Mettre à jour les Champs ayant un attribut Sale

Le w: dirty est un attribut au niveau du champ qui actualisera uniquement le champ que vous spécifiez lors de l'ouverture du document. Il indique à MS Word de n'actualiser ce champ que la prochaine fois que le document est ouvert. Vous pouvez utiliser LoadOptions.propriété setUpdateDirtyFields () pour spécifier s'il faut mettre à jour les champs avec l'attribut dirty. Lorsque la valeur de LoadOptions.setUpdateDirtyFields () est défini sur *true*, tous les champs ayant une valeur *true* pour la propriété `Field.IsDirty` ou `FieldChar.IsDirty` sont mis à jour lors du chargement du document.

L'exemple de code suivant montre comment mettre à jour les champs ayant l'attribut dirty:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## Mettre À Jour La Propriété LastSavedTime Avant d'Enregistrer

Vous pouvez utiliser la propriété [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) pour mettre à jour la propriété de document intégrée correspondante [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) lors de l'enregistrement du document.

L'exemple de code suivant montre comment mettre à jour cette propriété:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
