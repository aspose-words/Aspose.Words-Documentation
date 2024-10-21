---
title: Travailler avec des en-têtes et des pieds de page en C++
second_title: Aspose.Words pour C++
articleTitle: Utilisation des en-têtes et des pieds de page
linktitle: Utilisation des en-têtes et des pieds de page
description: "Comment manipuler les en-têtes et les pieds de page en utilisant C++."
type: docs
weight: 150
url: /fr/cpp/working-with-headers-and-footers/
---

Aspose.Words permet aux utilisateurs de travailler avec des en-têtes et des pieds de page dans un document. Un en-tête est du texte placé en haut d'une page et un pied de page est du texte en bas d'une page. En règle générale, ces zones sont utilisées pour insérer des informations qui doivent être répétées sur toutes ou certaines pages du document, telles que les numéros de page, la date de création, les informations sur l'entreprise, etc.

## Créer des en-têtes ou des pieds de page à l'aide de DocumentBuilder

Si vous souhaitez ajouter un en-tête ou un pied de page de document par programmation, le moyen le plus simple consiste à utiliser la classe [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) pour le faire.

L'exemple de code suivant montre comment ajouter un en-tête et un pied de page pour les pages de document:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "create-header-footer.h" >}}

## Spécifier les options d'en-tête ou de pied de page

Lorsque vous ajoutez un en-tête ou un pied de page à un document, vous pouvez définir certaines propriétés avancées. Aspose.Words fournit aux utilisateurs les classes [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) et [HeaderFooterCollection](https://reference.aspose.com/words/cpp/aspose.words/headerfootercollection/), ainsi que l'énumération [HeaderFooterType](https://reference.aspose.com/words/cpp/aspose.words/headerfootertype/) qui vous donnent plus de contrôle sur le processus de personnalisation de l'en-tête et du pied de page.

### Spécifier le type d'en-tête ou de pied de page

Vous pouvez spécifier trois types d'en-tête et trois types de pied de page différents pour un document:

1. En-tête et / ou pied de page pour la première page
2. En-tête et / ou pied de page pour les pages paires
3. En-tête et / ou pied de page pour les pages impaires

L'exemple de code suivant montre comment ajouter un en-tête pour les pages de document impaires:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "header-footer-type.h" >}}

### Indiquez si vous souhaitez afficher différents en-têtes ou pieds de page pour la Première Page

Comme indiqué ci-dessus, vous pouvez également définir un en-tête ou un pied de page différent pour la première page. Pour ce faire, vous devez définir l'indicateur [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_differentfirstpageheaderfooter/) sur `true`, puis spécifier la valeur **HeaderFirst** ou **FooterFirst**.

L'exemple de code suivant montre comment définir l'en-tête pour la première page uniquement:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "different-first-page.h" >}}

### Indiquez si vous souhaitez afficher différents en-têtes ou pieds de page pour les Pages paires ou Impaires

 Ensuite, vous voudrez définir différents en-têtes ou pieds de page pour les pages paires et impaires d'un document. Pour ce faire, vous devez définir l'indicateur [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_oddandevenpagesheaderfooter/) sur `true`, puis spécifier les valeurs **HeaderPrimary** et **HeaderEven**, ou **FooterPrimary** et **FooterEven**.

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "odd-even-pages.h" >}}

### Insérer une Image Absolument Positionnée dans l'en-tête

Pour placer une image dans un en-tête ou un pied de page, utilisez le type d'en-tête **HeaderPrimary** ou le type de pied de page **FooterPrimary** et la méthode `InsertImage`.

L'exemple de code suivant montre comment ajouter une image à un en-tête:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "insert-image.h" >}}

### Définir les propriétés de police et de paragraphe pour le texte d'en-tête ou de pied de page

Avec Aspose.Words, vous pouvez définir les propriétés de police et de paragraphe, utiliser le type d'en-tête **HeaderPrimary** ou le type de pied de page **FooterPrimary**, ainsi que des méthodes et des propriétés pour travailler avec les polices et les paragraphes que vous utilisez pour le corps du document.

L'exemple de code suivant montre comment définir le texte de l'en-tête sur Arial, gras, taille 14 et alignement au centre:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "font-props.h" >}}

### Insérer des numéros de page dans l'en-tête ou le pied de page

Si nécessaire, vous pouvez ajouter des numéros de page à l'en-tête ou au pied de page. Pour ce faire, utilisez le type d'en-tête **HeaderPrimary** ou le type de pied de page **FooterPrimary** et la méthode [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) pour ajouter le champ requis.

L'exemple de code suivant montre comment ajouter des numéros de page au pied de page à droite:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "page-numbers.h" >}}

### Utilisez les en-têtes ou Pieds de page Définis dans la Section précédente

Si vous devez copier l'en-tête ou le pied de page de la section précédente, vous pouvez également le faire.

L'exemple de code suivant montre comment copier l'en-tête ou le pied de page de la section précédente:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "copy-headers-footers-from-previous-section.h" >}}

### Assurez-vous de l'apparence de l'en-tête ou du pied de page lorsque vous utilisez des Orientations et des Tailles de Page différentes

Aspose.Words vous permet de fournir l'apparence d'un en-tête ou d'un pied de page lorsque vous utilisez différentes orientations et tailles de page.

L'exemple suivant montre comment procéder:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

## Comment supprimer uniquement les en-têtes ou Uniquement les pieds de page

Chaque section d'un document peut comporter jusqu'à trois en-têtes et jusqu'à trois pieds de page (pour les premières pages paires et impaires). Si vous souhaitez supprimer tous les en-têtes ou tous les pieds de page d'un document, vous devez parcourir toutes les sections et supprimer chaque nœud d'en-tête ou nœud de pied de page correspondant.

L'exemple de code suivant montre comment supprimer tous les pieds de page de toutes les sections mais laisser les en-têtes intacts. Vous pouvez supprimer uniquement les en-têtes de la même manière:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "remove-footers.h" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier d'exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}