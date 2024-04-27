---
title: FAQ
second_title: Aspose.Words pour Java
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words pour Java répond aux questions les plus fréquemment posées. Apprenez cette page pour résoudre rapidement votre problème sur des questions générales ou des sujets spécifiques."
weight: 75
url: /fr/java/faq/
---

Cette page contient des réponses aux questions les plus fréquemment posées. S'il vous plaît apprendre la page actuelle – peut-être cela vous permettra de résoudre votre problème rapidement.

Si vous n'avez pas trouvé la réponse à votre question, vous pouvez demander sur le forum de soutien. Pour obtenir de l'information sur la façon de signaler correctement votre question ou votre problème, consultez la page [Appui technique](/words/fr/java/technical-support/) page.

{{% alert color="primary" %}}

Les questions fréquemment posées sont regroupées par sujet pour votre commodité.

{{% /alert %}}

## Généralités

**Q: Ce qui est Aspose.Words?**

Aspose.Words pour Java est une bibliothèque de classe qui permet à vos applications d'effectuer une grande variété de tâches de traitement de documents. Avec Aspose.Words pour Java, vous pouvez générer, modifier, convertir, rendre et imprimer des documents sans applications tierces.

Vous trouverez des détails dans notre documentation.

------

**Q: Que signifie "Aspose.Words n'exige pas de demandes de tiers"?**

Aspose.Words pour Java n'a pas besoin d'installer des applications tierces ou des logiciels supplémentaires pour fonctionner. Il suffit de télécharger et installer Aspose.Words comme décrit dans le [Installation](/words/fr/java/installation/) article et commencer.

------

**Q: Ce que font les plateformes Aspose.Words Le soutien?**

Aspose.Words pour Java couvre la plupart des environnements de développement populaires et des plateformes de déploiement. Ses API peut être utilisé pour développer des applications pour un large éventail de systèmes d'exploitation tels que Windows, Linux, et Mac OS, et différentes plateformes.

Pour plus de détails, voir [Aperçu du produit](/words/fr/java/product-overview/) page et [Plaques et InteropAptitude](/words/java/platforms-and-interoperability/) Chapitre.

------

**Q: Ce que les formats de documents font Aspose.Words Le soutien?**

Aspose.Words pour Java prend en charge la plupart des formats de documents populaires tels que DOC, DOCX, HTML, Markdown, PDF, XML et autres.

Vous pouvez voir la liste complète des formats supportés sur le [Formats de documents pris en charge](/words/fr/java/supported-document-formats/) page.

------

**Q: Comment essayer? Aspose.Words Gratuit?**

Vous pouvez le faire de deux façons – en utilisant la version d'essai ou une licence temporaire de 30 jours. La version d'essai est la même que celle achetée, elle offre une fonctionnalité complète du produit, mais ajoute un filigrane évaluatif en haut du document lors du chargement et de l'enregistrement et limite la taille maximale du document à quelques centaines de paragraphes. Une licence temporaire vous permet de tester Aspose.Words sans restrictions de procès pendant 30 jours.

Voir [Licence et abonnement](/words/fr/java/licensing/) page pour plus d'informations.

{{% alert color="primary" %}}

Vous pouvez également essayer certains des plus populaires Aspose.Words caractéristiques à travers le [Aspose.Words gratuit en ligne](https://products.aspose.app/words).

{{% /alert %}}

------

**Q: Comment acheter Aspose.Words?**

Pour acheter une Aspose.Words licence, vous devez aller au [Achat](https://purchase.aspose.com/buy) page, sélectionnez le "Aspose.Words" produit et le type de licence qui vous convient. Puis ajoutez la licence à votre panier et suivez les instructions du panier.

Après l'achat, demander la licence comme décrit dans la [Licence achetée](/words/java/licensing/#purchased-license) Chapitre.

Détails sur l'installation Aspose.Words peut être lu sur le [Installation](/words/fr/java/installation/) page.

------

**Q: Comment puis-je obtenir du soutien?**

Utilisez le forum de support technique gratuit. Pour plus de détails sur la façon de signaler correctement un problème et ce qu'il faut faire avant de contacter le forum, voir le [Appui technique](/words/fr/java/technical-support/) page.

## Rendre un document

{{% alert color="primary" %}}

Vous pouvez trouver des informations plus détaillées sur le rendu dans le [Rendus](/words/fr/java/rendering/) de la documentation.

{{% /alert %}}

**Q: Pourquoi la mise en page et les polices du document de sortie sont-elles différentes de l'original?**

La police peut ne pas être disponible, ou le format de police est supporté par Microsoft Word mais non soutenue par Aspose.Words. Aspose.Words exécutera [Manipuler et remplacer les consuls Type vrai](/words/fr/java/manipulate-and-substitute-truetype-fonts/).

Pour vérifier si la police manque:

- En Aspose.Words utiliser les avertissements de substitution des polices (pour plus de détails, voir la section Comment reconnaître que la police a été remplacée) [Manipuler et remplacer les consuls Type vrai](/words/fr/java/manipulate-and-substitute-truetype-fonts/) (art.
- En Microsoft Word ouvrir la boîte de dialogue -Font Substitution (Fichier → Options → Advanced → Font Substitution).

------

**Q: Pourquoi la police ne fonctionne pas sur non-Windows les plateformes et les caractères Unicode sont remplacés par le .notdef glyph?**

On peut souvent voir `.notdef` glyph au lieu d'un caractère Unicode. C'est généralement une boîte ou une question glyph.

Parce que Microsoft Les paramètres de repli d'office sont sélectionnés par défaut, et Microsoft Les polices Office ne sont pas disponibles. Les utilisateurs doivent installer Microsoft Polices Office ou modifier les paramètres de repli.

------

**Q: Pourquoi des textes de script complexes, comme le thaï ou l'hébreu, pourraient - ils être affichés de façon inexacte pour une raison quelconque, comme la mauvaise position des diacritiques ou des ligatures inexactes?**

Certaines polices de script complexes exigent que les fonctionnalités de Typographie avancée soient traitées afin de les afficher correctement. Typographie avancée est désactivée dans Aspose.Words par défaut. Les utilisateurs doivent activer la typographie avancée avec [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getTextShaperFactory).

------

**Q: Ai-je besoin de fichiers de licence pour les polices que j'utilise?**

Oui. Par conséquent, lors de la copie des polices, n'oubliez pas que la plupart des polices sont protégées par copyright. Localisez les licences de police à l'avance et vérifiez qu'elles peuvent être transférées librement sur une autre machine.

## Niché Mail Merge

{{% alert color="primary" %}}

Vous trouverez des informations plus détaillées sur mail merge dans le [Mail Merge et rapports](/words/java/mail-merge-and-reporting/) de la documentation.

{{% /alert %}}

**Q: Pourquoi n'y a-t-il aucun champ fusionné dans la sortie générée?**

Le nom original du champ fusion reste le même sans être remplacé par les données requises de la source de données, puis:

- Vérifiez que les données sont chargées correctement dans les tableaux: [TableName](https://reference.aspose.com/words/java/com.aspose.words/imailmergedatasource/#getTableName) correctement avec toutes les clés primaires et les relations requises.
- Vérifiez que les champs de fusion sont correctement nommés. Utiliser [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames) méthode pour obtenir tous les noms de champs de fusion et s'assurer que le nom des champs de fusion dans votre modèle correspond à celui de votre source de données.

------

**Q: Pourquoi la sortie de fusion imbriquée n'affiche-t-elle pas les données de la table enfant pour la première entrée dans la table parent, mais affiche-t-elle tous les éléments de la dernière entrée dans la table parent, même ceux qui ne sont pas réellement liés à celle-ci?**

Ceci est dû au fait que les régions de fusion dans le modèle ne sont pas correctement formées, ce qui peut rendre toutes imbriquées mail merge les régions pour arrêter d'afficher quoi que ce soit. Les [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) la balise d'ouverture et la [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) L'étiquette de fermeture doit correspondre et être dans la même rangée ou cellule. Par exemple, si vous commencez à nicher des régions de fusion dans une cellule d'une table, vous devez terminer la région de fusion dans la même rangée que la première cellule.

------

**Q: Pourquoi chaque entrée de la table parent affiche-t-elle tous les éléments de la table enfant, même ceux qui ne sont pas réellement liés à elle?**

En effet, la relation entre le parent et l'enfant n'est pas définie ou mal définie. Il est nécessaire:

- Assurer l'intégrité des données **DataSet** et utiliser **DataRelation** objet de représenter la relation parent-enfant entre les tableaux de données connexes.
- Cochez la section Comment mettre en place les relations de données dans Nested Mail Merge dans l'article [Niché Mail Merge avec les régions](/words/java/nested-mail-merge-with-regions/).

------

**Q: Pourquoi est une exception: Système. ArgumentException: Cette contrainte ne peut pas être activée car toutes les valeurs n'ont pas les valeurs parentes correspondantes lors de l'exécution imbriquée mail merge?**

Cela se produit parce que chaque enregistrement parent n'a pas d'enregistrement enfant de sorte que votre source de données ne correspond pas aux critères suivants: *chaque ligne de la table parent devrait avoir une relation individuelle avec les lignes de la table enfant en fonction des clés primaires et étrangères*.

Désactiver les contraintes clés étrangères lorsque vous créez un **DataRelation**.

## Ajouter ou insérer un document

{{% alert color="primary" %}}

Vous trouverez des informations plus détaillées sur la programmation avec des documents dans [Programmation avec documents](/words/fr/java/programming-with-documents/) de la documentation.

{{% /alert %}}

**Q: Pourquoi le contenu annexé à un document n'apparaît-il pas sur la même page?**

Le résultat de l'annexe apparaît sur une page séparée en raison d'une différence dans [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) paramètres pour les sections où les documents sont joints ensemble. Faire identique **PageSetup** paramètres pour les sections où les documents sont joints ensemble.

## Convertir un document

{{% alert color="primary" %}}

Vous pouvez trouver des informations plus détaillées sur la conversion d'un document dans le [Convertir un document](/words/fr/java/convert-a-document/) de la documentation.

{{% /alert %}}

**Q: Comment convertir DOCX en PDF?**

Il est très facile aussi, il suffit de charger un document sur le modèle et de l'enregistrer dans n'importe quel format pris en charge.

L'exemple de code suivant montre le processus de conversion d'un fichier DOCX en PDF:

{{< highlight java >}}
// Open the source DOCX document.
Document doc = new Document(dataDir + "Input.docx");

// Save the document to PDF format.
doc.save(dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Manipuler avec un document

{{% alert color="primary" %}}

Vous trouverez des informations plus détaillées sur la programmation avec des documents dans [Programmation avec documents](/words/fr/java/programming-with-documents/) de la documentation.

{{% /alert %}}

**Q: Comment diviser une page de document par page?**

Aspose.Words vous permet de diviser une page de document par page.

L'exemple de code suivant montre comment diviser un document et enregistrer chaque page comme document séparé:

{{< highlight java >}}
Document doc = new Document(dataDir + "TestFile (Split).docx");

int pageCount = doc.getPageCount();

// Save each page as a separate document.
for (int page = 0; page <= pageCount; page++)
{
	Document extractedPage = doc.extractPages(page, 1);
	extractedPage.save(dataDir + "SplitDocumentPageByPageOut_" + (page + 1) + ".docx");
}
{{< /highlight >}}

------

**Q: Comment ouvrir un crypté** **Un document?**

Vous pouvez essayer d'ouvrir un document chiffré sans mot de passe, ce qui devrait conduire à une exception.

L'exemple de code suivant montre comment ouvrir un document chiffré avec un mot de passe:

{{< highlight java >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.DOCX);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.setPassword("MyPassword");
doc.save(getArtifactsDir() + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// We will not be able to open this document with Microsoft Word or
// Aspose.Words without providing the correct password.
try
{
    doc = new Document(getArtifactsDir() + "OoxmlSaveOptions.Password.docx"));
}
catch (Exception e)
{
    Assert.assertTrue(e instanceof IncorrectPasswordException);
}
{{< /highlight >}}

------

**Q: Comment imprimer un document?**

Pour une réponse détaillée, découvrez l'article [Imprimer un document Programmes ou utilisation de dialogues](/words/fr/java/print-a-document-programmatically-or-using-dialogs/).
