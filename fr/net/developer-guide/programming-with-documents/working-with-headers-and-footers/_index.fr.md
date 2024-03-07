---
title: Travailler avec des en-têtes et des pieds de page dans C#
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec les en-têtes et les pieds de page
linktitle: Travailler avec les en-têtes et les pieds de page
description: "Comment manipuler les en-têtes et pieds de page à l'aide de C#. Créez des en-têtes et des pieds de page C#. Supprimez les en-têtes ou pieds de page C#."
type: docs
weight: 150
url: /fr/net/working-with-headers-and-footers/
---

Aspose.Words permet aux utilisateurs de travailler avec les en-têtes et les pieds de page d'un document. Un en-tête est un texte placé en haut d'une page et un pied de page est un texte placé en bas d'une page. Généralement, ces zones sont utilisées pour insérer des informations qui doivent être répétées sur toutes ou certaines pages du document, telles que les numéros de page, la date de création, les informations sur l'entreprise, etc.

## Créer des en-têtes ou des pieds de page à l'aide de DocumentBuilder

Si vous souhaitez ajouter un en-tête ou un pied de page de document par programmation, le moyen le plus simple consiste à utiliser la classe [DocumentBuilder](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/) pour le faire.

L'exemple de code suivant montre comment ajouter un en-tête et un pied de page pour les pages du document:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "create-header-footer.cs" >}}

## Spécifier les options d'en-tête ou de pied de page

Lorsque vous ajoutez un en-tête ou un pied de page à un document, vous pouvez définir certaines propriétés avancées. Aspose.Words fournit aux utilisateurs les classes [HeaderFooter](https://reference.aspose.com/words/fr/net/aspose.words/headerfooter/) et [HeaderFooterCollection](https://reference.aspose.com/words/fr/net/aspose.words/headerfootercollection/), ainsi qu'une énumération [HeaderFooterType](https://reference.aspose.com/words/fr/net/aspose.words/headerfootertype/) qui vous donnent plus de contrôle sur le processus de personnalisation des en-têtes et des pieds de page.

### Spécifier le type d'en-tête ou de pied de page

Vous pouvez spécifier trois types d'en-tête différents et trois types de pied de page différents pour un document:
1. En-tête et/ou pied de page de la première page
2. En-tête et/ou pied de page pour les pages paires
3. En-tête et/ou pied de page pour les pages impaires

L'exemple de code suivant montre comment ajouter un en-tête pour les pages impaires d'un document:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "header-footer-type.cs" >}}

### Spécifier s'il faut afficher différents en-têtes ou pieds de page pour la première page

Comme indiqué ci-dessus, vous pouvez également définir un en-tête ou un pied de page différent pour la première page. Pour ce faire, vous devez définir l'indicateur [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/fr/net/aspose.words/pagesetup/differentfirstpageheaderfooter/) sur `true`, puis spécifier la valeur **HeaderFirst** ou **FooterFirst**.

L'exemple de code suivant montre comment définir l'en-tête de la première page uniquement:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "different-first-page.cs" >}}

### Spécifier s'il faut afficher différents en-têtes ou pieds de page pour les pages impaires ou paires

 Ensuite, vous souhaiterez définir différents en-têtes ou pieds de page pour les pages paires et impaires d'un document. Pour ce faire, vous devez définir l'indicateur [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/fr/net/aspose.words/pagesetup/oddandevenpagesheaderfooter/) sur `true` puis spécifier les valeurs **HeaderPrimary** et **HeaderEven**, ou **FooterPrimary** et **FooterEven**.

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "odd-even-pages.cs" >}}

### Insérer une image absolument positionnée dans l'en-tête

Pour placer une image dans un en-tête ou un pied de page, utilisez le type d'en-tête **HeaderPrimary** ou le type de pied de page **FooterPrimary** et la méthode [InsertImage](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/insertimage/).

L'exemple de code suivant montre comment ajouter une image à un en-tête:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "insert-image.cs" >}}

### Définir les propriétés de police et de paragraphe pour le texte d'en-tête ou de pied de page

Avec Aspose.Words, vous pouvez définir les propriétés de police et de paragraphe, utiliser le type d'en-tête **HeaderPrimary** ou le type de pied de page **FooterPrimary**, ainsi que les méthodes et propriétés permettant de travailler avec les polices et les paragraphes que vous utilisez pour le corps du document.

L'exemple de code suivant montre comment définir le texte de l'en-tête sur Arial, gras, taille 14 et alignement central:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "font-props.cs" >}}

### Insérer des numéros de page dans l'en-tête ou le pied de page

Si nécessaire, vous pouvez ajouter des numéros de page à l'en-tête ou au pied de page. Pour ce faire, utilisez le type d'en-tête **HeaderPrimary** ou le type de pied de page **FooterPrimary** et la méthode [InsertField](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/insertfield/) pour ajouter le champ obligatoire.

L'exemple de code suivant montre comment ajouter des numéros de page au pied de page de droite:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "page-numbers.cs" >}}

### Utiliser les en-têtes ou les pieds de page définis dans la section précédente

Si vous devez copier l'en-tête ou le pied de page de la section précédente, vous pouvez également le faire.

L'exemple de code suivant montre comment copier l'en-tête ou le pied de page de la section précédente:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "copy-headers-footers-from-previous-section.cs" >}}

### Assurez l’apparence de l’en-tête ou du pied de page lors de l’utilisation de différentes orientations et tailles de page

Aspose.Words vous permet de donner l'apparence d'un en-tête ou d'un pied de page lorsque vous utilisez différentes orientations et tailles de page.

L'exemple suivant montre comment procéder:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

## Comment supprimer uniquement les en-têtes ou uniquement les pieds de page

Chaque section d'un document peut comporter jusqu'à trois en-têtes et jusqu'à trois pieds de page (pour les premières pages, paires et impaires). Si vous souhaitez supprimer tous les en-têtes ou tous les pieds de page d'un document, vous devez parcourir toutes les sections et supprimer chaque nœud d'en-tête ou de pied de page correspondant.

L'exemple de code suivant montre comment supprimer tous les pieds de page de toutes les sections tout en laissant les en-têtes intacts. Vous pouvez supprimer uniquement les en-têtes de la même manière:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "remove-footers.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Header%20and%20footer%20types.docx).

{{% /alert %}}