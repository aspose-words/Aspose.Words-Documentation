---
title: FAQ
second_title: Aspose.Words pour Java
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words pour Java répond aux questions les plus fréquemment posées. Apprenez cette page pour résoudre rapidement votre problème sur des questions générales ou des sujets spécifiques."
weight: 75
url: /fr/java/faq/
timestamp: 2024-01-31-14-23-37
---

Cette page contient les réponses aux questions les plus fréquemment posées. Veuillez lire la page actuelle – cela vous permettra peut-être de résoudre votre problème rapidement.

Si vous n'avez pas trouvé la réponse à votre question, vous pouvez la poser sur le forum d'assistance. Pour savoir comment signaler correctement votre question ou votre problème, consultez le [Soutien Technique](/words/java/technical-support/) page.

{{% alert color="primary" %}}

Les questions fréquemment posées sont regroupées par sujet pour votre commodité.

{{% /alert %}}

## Général

**Q: Qu'est-ce que Aspose.Words?**

Aspose.Words pour Java est une bibliothèque de classes qui permet à vos applications d'effectuer une grande variété de tâches de traitement de documents. Avec Aspose.Words pour Java, vous pouvez générer, modifier, convertir, afficher et imprimer des documents sans applications tierces.

Les détails peuvent être trouvés dans notre documentation.

------

**Q: Que signifie "Aspose.Words ne nécessite pas d'applications tierces"?**

Aspose.Words pour Java n'a pas besoin d'installer d'applications tierces ou de progiciels supplémentaires pour fonctionner. Il suffit de télécharger et d'installer Aspose.Words comme décrit dans le [Montage](/words/java/installation/) article et commencez.

------

**Q: Quelles plateformes Aspose.Words prend-il en charge?**

Aspose.Words pour Java couvre la plupart des environnements de développement et des plates-formes de déploiement populaires. Its API peut être utilisé pour développer des applications pour une large gamme de systèmes d'exploitation tels que Windows, Linux et Mac OS, et diverses plates-formes.

Pour plus de détails, voir le [Aperçu du Produit](/words/java/product-overview/) page et le [Plateformes et Interopstabilité](/words/java/platforms-and-interoperability/) section.

------

**Q: Quels formats de document Aspose.Words prend-il en charge?**

Aspose.Words pour Java prend en charge la plupart des formats de documents populaires tels que DOC, DOCX, HTML, Markdown, PDF, XML, et d'autres.

Vous pouvez voir la liste complète des formats pris en charge sur le [Formats de Document Pris En Charge](/words/java/supported-document-formats/) page.

------

**Q: Comment puis-je essayer Aspose.Words gratuitement?**

Vous pouvez le faire de deux manières: en utilisant la version d'essai ou une licence temporaire de 30 jours. La version d'essai est la même que celle achetée, elle fournit toutes les fonctionnalités du produit mais ajoute un filigrane évaluatif en haut du document lors du chargement et de l'enregistrement et limite la taille maximale du document à quelques centaines de paragraphes. Une licence temporaire vous permet de tester Aspose.Words sans restrictions d'essai pendant 30 jours.

Voir le [Licence et Abonnement](/words/java/licensing/) page pour plus d'informations.

{{% alert color="primary" %}}

Vous pouvez également essayer certaines des fonctionnalités Aspose.Words les plus populaires via le [Aspose.Words applications en ligne gratuites](https://products.aspose.app/words).

{{% /alert %}}

------

**Q: Comment puis-je acheter Aspose.Words?**

Pour acheter une licence Aspose.Words, vous devez vous rendre sur le [Achat](https://purchase.aspose.com/buy) page, sélectionnez le produit "Aspose.Words " et le type de licence qui vous convient. Ajoutez ensuite la licence à votre panier et suivez les instructions du panier.

Après l'achat, demandez la licence comme décrit dans le [Licence Achetée](/words/java/licensing/#purchased-license) section.

Les détails sur la façon d'installer Aspose.Words peuvent être lus sur le [Montage](/words/java/installation/) page.

------

**Q: Comment puis-je obtenir de l'aide?**

Utilisez le forum de support technique gratuit. Pour plus de détails sur la façon de signaler correctement un problème et ce qui doit être fait avant de contacter le forum, consultez le [Soutien Technique](/words/java/technical-support/) page.

## Rendu d'un Document

{{% alert color="primary" %}}

Vous pouvez trouver des informations plus détaillées sur le rendu dans le [Rendu](/words/java/rendering/) section de documentation.

{{% /alert %}}

**Q: Pourquoi la mise en page et les polices du document de sortie sont-elles différentes de l'original?**

La police peut ne pas être disponible ou le format de police est pris en charge par Microsoft Word mais pas par Aspose.Words. Aspose.Words se produira [remplacement de la police](/words/java/manipulate-and-substitute-truetype-fonts/).

Pour vérifier si la police est manquante:

- Dans Aspose.Words, utilisez les avertissements de substitution de police (pour plus de détails, voir la section "Comment reconnaître que la police a été remplacée" du [Manipuler et substituer TrueType Politiques](/words/java/manipulate-and-substitute-truetype-fonts/) l'article).
- Dans Microsoft Word, ouvrez la boîte de dialogue "Substitution de police" (Fichier → Options → Avancé → Substitution de police).

------

**Q: Pourquoi la police de secours ne fonctionne-t-elle pas sur les plates-formes nonWindows et les caractères Unicode sont remplacés par le .glyphe notdef?**

On peut souvent voir le glyphe `.notdef` au lieu d'un caractère Unicode. Il s'agit généralement d'une boîte ou d'un glyphe de question.

En effet, les paramètres de secours Microsoft Office sont sélectionnés par défaut et les polices Microsoft Office ne sont pas disponibles. Les utilisateurs doivent installer Microsoft polices Office ou modifier les paramètres de secours.

------

**Q: Pourquoi un texte d'écriture complexe, tel que le thaï ou l'hébreu, peut-il être affiché de manière inexacte pour une raison quelconque, comme la mauvaise position des signes diacritiques ou des ligatures inexactes?**

Certaines polices de script complexes nécessitent le traitement des fonctionnalités de typographie avancées afin de les afficher correctement. La typographie avancée est désactivée dans Aspose.Words par défaut. Les utilisateurs doivent activer la typographie avancée avec [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getTextShaperFactory).

------

**Q: Ai-je besoin de fichiers de licence pour les polices que j'utilise?**

Oui, vous le faites. Par conséquent, lorsque vous copiez des polices, gardez à l'esprit que la plupart des polices sont protégées par des droits d'auteur. Localisez les licences de polices au préalable et vérifiez qu'elles peuvent être librement transférées sur une autre machine.

## Imbriqué Mail Merge

{{% alert color="primary" %}}

Vous pouvez trouver des informations plus détaillées sur Mail Merge dans le [Mail Merge et rapports](/words/java/mail-merge-and-reporting/) section de documentation.

{{% /alert %}}

**Q: Pourquoi n'y a-t-il pas de champs fusionnés dans la sortie générée?**

Le nom d'origine du champ de fusion reste le même sans être remplacé par les données requises de la source de données, puis:

- Vérifiez que les données sont correctement chargées dans les tables: définissez correctement le [TableName](https://reference.aspose.com/words/java/com.aspose.words/imailmergedatasource/#getTableName) avec toutes les clés primaires et relations requises.
- Vérifiez que les champs de fusion sont nommés correctement. Utilisez la méthode [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames) pour obtenir tous les noms de champs de fusion et vous assurer que le nom des champs de fusion dans votre modèle correspond à celui de votre source de données.

------

**Q: Pourquoi la sortie de la fusion imbriquée n'affiche-t-elle pas les données de la table enfant pour la première entrée de la table parent, mais affiche-t-elle tous les éléments de la dernière entrée de la table parent, même ceux qui ne lui sont pas réellement liés?**

C'est parce que les régions de fusion dans le modèle ne sont pas correctement formées, ce qui peut empêcher toutes les régions Mail Merge imbriquées d'afficher quoi que ce soit. La balise d'ouverture [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) et la balise de fermeture [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) doivent correspondre et se trouver dans la même ligne ou cellule. Par exemple, si vous commencez à imbriquer des régions de fusion dans une cellule d'un tableau, vous devez terminer la région de fusion sur la même ligne que la première cellule.

------

**Q: Pourquoi chaque entrée de la table parent affiche-t-elle tous les éléments de la table enfant, même ceux qui ne lui sont pas réellement liés?**

Cela est dû au fait que la relation entre les tables parent et enfant n'est pas configurée ou qu'elle est mal configurée. Il est nécessaire de:

- Assurez l'intégrité des données dans votre **DataSet** et utilisez l'objet **DataRelation** pour représenter la relation parent-enfant entre les tables de données associées.
- Consultez la section "Comment configurer les relations de données dans Imbriquées Mail Merge avec des régions" dans l'article [Imbriqué Mail Merge avec des régions](/words/java/nested-mail-merge-with-regions/).

------

**Q: Pourquoi est une exception: "Système.ArgumentException: Cette contrainte ne peut pas être activée car toutes les valeurs n'ont pas de valeurs parentes correspondantes" lors de l'exécution de mail merge imbriqués?**

Cela se produit car tous les enregistrements parents n'ont pas d'enregistrement enfant, de sorte que votre source de données ne correspond pas aux critères suivants: *every row in the parent table should have a one-to-one relationship with the rows of the child table based on the primary and foreign keys*.

Désactivez les contraintes de clé étrangère lorsque vous créez un **DataRelation**.

## Ajouter ou insérer un document

{{% alert color="primary" %}}

Vous pouvez trouver des informations plus détaillées sur la programmation avec des documents dans le [Programmation avec des documents](/words/java/programming-with-documents/) section de documentation.

{{% /alert %}}

**Q: Pourquoi le contenu annexé à un document n'apparaît-il pas sur la même page?**

Le résultat de l'ajout apparaît sur une page distincte en raison d'une différence dans les paramètres [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) pour les sections où les documents sont ajoutés ensemble. Effectuez des réglages **PageSetup** identiques pour les sections où les documents sont ajoutés ensemble.

## Convertir un Document

{{% alert color="primary" %}}

Vous pouvez trouver des informations plus détaillées sur la conversion d'un document dans le [Convertir un Document](/words/java/convert-a-document/) section de documentation.

{{% /alert %}}

**Q: Comment convertir DOCX en PDF?**

C'est aussi très simple, il suffit de charger un document dans le modèle et de l'enregistrer dans n'importe quel format pris en charge.

L'exemple de code suivant montre le processus de conversion d'un fichier DOCX en PDF:

{{< highlight java >}}
// Open the source DOCX document.
Document doc = new Document(dataDir + "Input.docx");

// Save the document to PDF format.
doc.save(dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Manipuler avec un document

{{% alert color="primary" %}}

Vous pouvez trouver des informations plus détaillées sur la programmation avec des documents dans le [Programmation avec des documents](/words/java/programming-with-documents/) section de documentation.

{{% /alert %}}

**Q: Comment diviser un document page par page?**

Aspose.Words vous permet de diviser un document de plusieurs pages page par page.

L'exemple de code suivant montre comment diviser un document et enregistrer chaque page en tant que document séparé:

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

**Q: Comment ouvrir un fichier crypté**

Vous pouvez essayer d'ouvrir un document crypté sans mot de passe, ce qui devrait entraîner une exception.

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

Pour une réponse détaillée, lisez l'article [Impression d'un Document par programmation ou à l'aide de Boîtes de dialogue](/words/java/print-a-document-programmatically-or-using-dialogs/).
