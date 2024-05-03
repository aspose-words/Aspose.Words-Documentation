---
title: Travailler avec Headers et Footers dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec Headers et Footers
linktitle: Travailler avec Headers et Footers
description: "Comment manipuler les en-têtes et les pied de pied en utilisant Java."
type: docs
weight: 150
url: /fr/java/working-with-headers-and-footers/
---

Aspose.Words permet aux utilisateurs de travailler avec les en-têtes et les pied de page dans un document. Un en-tête est un texte placé en haut d'une page, et un pied de page est un texte en bas d'une page. Habituellement, ces zones sont utilisées pour insérer des renseignements qui devraient être répétés sur toutes les pages ou sur certaines pages du document, comme les numéros de page, la date de création, l'information de l'entreprise, etc.

## Créer des en-têtes ou des pied de page en utilisant DocumentBuilder

Si vous voulez ajouter un en-tête de document ou un pied de page programmatiquement, la façon la plus facile est d'utiliser le [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) En classe pour le faire.

L'exemple de code suivant montre comment ajouter un en-tête et un pied de page pour les pages de document:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "create-header-footer.java" >}}

## Spécifiez les options en-tête ou pied de page

Lorsque vous ajoutez un en-tête ou un pied de page à un document, vous pouvez définir certaines propriétés avancées. Aspose.Words fournit aux utilisateurs [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) et [HeaderFooterCollection](https://reference.aspose.com/words/java/com.aspose.words/headerfootercollection/) les cours, ainsi que [HeaderFooterType](https://reference.aspose.com/words/java/com.aspose.words/headerfootertype/) énumération qui vous donne plus de contrôle sur le processus de personnalisation de l'en-tête et du pied de page.

### Indiquer le type d'en-tête ou de pied de page

Vous pouvez spécifier trois types d'en-tête et trois types de pied de page différents pour un document:

1. En-tête et/ou pied de page pour la première page
2. En-tête et/ou pied de page pour pages paires
3. En-tête et/ou pied de page pour pages impaires

L'exemple de code suivant montre comment ajouter un en-tête pour les pages de documents impaires:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "header-footer-type.java" >}}

### Spécifier s'il faut afficher différents en-têtes ou pied de page pour la première page

Comme indiqué ci-dessus, vous pouvez également définir un en-tête ou un pied de page différent pour la première page. Pour ce faire, vous devez [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) drapeau `true` et ensuite **HeaderFirst** ou **FooterFirst** valeur.

L'exemple de code suivant montre comment définir l'en-tête pour la première page seulement:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "different-first-page.java" >}}

### Spécifier s'il faut afficher différents en-têtes ou pied de page pour les pages Odd ou même

 Ensuite, vous voudrez définir différents en-têtes ou pied de page pour des pages impaires et même dans un document. Pour ce faire, vous devez [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) drapeau `true` et ensuite spécify les valeurs **HeaderPrimary** et **HeaderEven**, ou **FooterPrimary** et **FooterEven**.

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "odd-even-pages.java" >}}

### Insérer une position absolue Image dans l'en-tête

Pour placer une image dans un en-tête ou un pied de page, utilisez la **HeaderPrimary** type d'en-tête ou **FooterPrimary** le type de pied et le [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) méthode.

L'exemple de code suivant montre comment ajouter une image à un en-tête:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "insert-image.java" >}}

### Définir les propriétés des polices et des paragraphes pour le texte en-tête ou en pied de page

Avec Aspose.Words vous pouvez définir les propriétés de la police et du paragraphe, **HeaderPrimary** type d'en-tête ou **FooterPrimary** type de pied de page, ainsi que les méthodes et propriétés pour travailler avec les polices et les paragraphes que vous utilisez pour le corps du document.

L'exemple de code suivant montre comment définir le texte dans l'en-tête à Arial, en gras, taille 14 et alignement au centre:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "font-props.java" >}}

### Insérer des numéros de page dans l'en-tête ou le pied de page

Si nécessaire, vous pouvez ajouter des numéros de page à l'en-tête ou au pied de page. Pour ce faire, utilisez la **HeaderPrimary** type d'en-tête ou **FooterPrimary** le type de pied et le [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) méthode pour ajouter le champ requis.

L'exemple de code suivant montre comment ajouter des numéros de page au pied de page à droite:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "page-numbers.java" >}}

### Utiliser les en-têtes ou les pieds définis dans la section précédente

Si vous devez copier l'en-tête ou le pied de page de la section précédente, vous pouvez le faire aussi.

L'exemple de code suivant montre comment copier l'en-tête ou le pied de page de la section précédente:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "copy-headers-footers-from-previous-section.java" >}}

### Assurez l'apparence de l'en-tête ou du pied de page lorsque vous utilisez différentes orientations de page et la taille de la page

Aspose.Words vous permet de fournir l'apparence d'un en-tête ou d'un pied de page lorsque vous utilisez différentes orientations et tailles de page.

L'exemple suivant montre comment le faire:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

## Comment supprimer seulement les en-têtes ou seulement les pieds de page

Chaque section d'un document peut comporter jusqu'à trois en-têtes et jusqu'à trois pied de page (pour la première, même, et des pages impaires). Si vous voulez supprimer tous les en-têtes ou tous les pied de page dans un document, vous devez boucler toutes les sections et supprimer chaque noeud d'en-tête ou de pied de page correspondant.

L'exemple de code suivant montre comment supprimer tous les pied de page de toutes les sections, mais laisser les en-têtes intacts. Vous pouvez supprimer uniquement les en-têtes de la même manière:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "remove-footers.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Footer.docx).

{{% /alert %}}