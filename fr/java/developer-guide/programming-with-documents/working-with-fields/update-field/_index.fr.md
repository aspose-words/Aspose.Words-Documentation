---
title: Mettre à jour les champs dans Java
second_title: Aspose.Words pour Java
articleTitle: Mettre à jour les champs
linktitle: Mettre à jour les champs
description: "Découvrez comment mettre à jour les champs dans Java. Mettre à jour les champs de manière programmatique ou utiliser une mise à jour automatique des champs Java API"
type: docs
weight: 30
url: /fr/java/update-field/
timestamp: 2024-01-27-14-07-04
---

Typiquement, un champ inséré dans Microsoft Word contient déjà une valeur à jour. Par exemple, si le champ est une formule ou un numéro de page, il contiendra la valeur calculée correcte pour la version donnée du document. Mais si vous avez une application qui génère ou modifie un document avec des champs comme fusionner deux documents ou le remplir de données, alors idéalement tous les champs doivent être mis à jour pour que le document soit utile.

## Comment mettre à jour les champs

Lorsqu'un document est chargé, Aspose.Words imite le comportement de Microsoft Word avec l'option de mettre à jour automatiquement les champs est désactivé. Le comportement peut être résumé comme suit:

- lorsque vous ouvrez ou sauvez un document, les champs restent intacts
- vous pouvez mettre à jour explicitement tous les champs d'un document, par exemple, reconstruire `TOC` quand vous avez besoin de
- lorsque vous imprimez/rendez en PDF ou XPS les champs relatifs à la numérotation des pages dans les en-têtes/pieds de page sont mis à jour
- quand vous exécutez Mail Merge tous les champs sont mis à jour automatiquement

### Mettre à jour les champs de façon programmatique

Pour mettre à jour explicitement les champs dans l'ensemble du document, il suffit d'appeler le [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) méthode. Pour mettre à jour les champs contenus dans un document, obtenir [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) objet et appeler le [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields) méthode. En Aspose.Words, vous pouvez obtenir un **Range** pour tout noeud de l'arbre de documents, comme [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), etc. en utilisant [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange) propriété. Vous pouvez mettre à jour le résultat d'un seul champ en appelant le [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update) méthode.

### Mise à jour automatique des champs liés à la page pendant le rendu

Lorsque vous effectuez la conversion d'un document en un format de page fixe, par exemple en PDF ou XPS, puis Aspose.Words mettra automatiquement à jour les champs liés à la mise en page `PAGE`, `PAGEREF` trouvé dans les en-têtes/pieds du document. Ce comportement imite le comportement de Microsoft Word pour imprimer un document.

Si vous voulez mettre à jour tous les autres champs du document, alors vous devez appeler [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) avant de rendre le document.

L'exemple suivant montre comment mettre à jour tous les champs avant de rendre un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### Mise à jour automatique du champ pendant Mail Merge

Lorsque vous exécutez un mail merge""> tous les champs du document seront automatiquement mis à jour. C'est parce que les Mail Merge est un cas de mise à jour de champ. Le programme rencontre un Mail Merge et doit mettre à jour son résultat, ce qui implique de saisir la valeur de la source de données et de l'insérer dans le champ. La logique est, bien sûr, plus compliquée, par exemple, lorsque la fin du document/mail merge la région est atteinte mais il reste d'autres données à fusionner, puis la région doit être dupliquée et la nouvelle série de champs mis à jour.

## Mettre à jour les champs ayant l'attribut sale

Le w:dirty est un attribut de niveau de champ qui ne rafraîchira que le champ que vous spécifiez lorsque le document est ouvert. Il dit à MS Word de rafraîchir ce champ seulement la prochaine fois que le document est ouvert. Vous pouvez utiliser la propriété LoadOptions.setUpdateDirtyFields() pour spécifier s'il faut mettre à jour les champs avec l'attribut sale. Lorsque la valeur de LoadOptions.setUpdateDirtyFields() est définie à *true* tous les champs ayant *true* valeur pour `Field.IsDirty` ou `FieldChar.IsDirty` la propriété est mise à jour sur le chargement du document

L'exemple de code suivant montre comment mettre à jour les champs ayant l'attribut sale:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## Mettre à jour la propriété LastSavedTime avant d'enregistrer

Vous pouvez utiliser le [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) propriété de mettre à jour la propriété de document intégré correspondante [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) lors de la sauvegarde du document.

L'exemple de code suivant montre comment mettre à jour cette propriété:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
