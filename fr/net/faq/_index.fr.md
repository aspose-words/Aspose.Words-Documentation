---
title: FAQ
second_title: Aspose.Words pour .NET
articleTitle: FAQ – Aspose.Words pour .NET
linktitle: FAQ – Aspose.Words pour .NET
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words pour .NET répond aux questions les plus fréquemment posées. Apprenez cette page pour résoudre rapidement votre problème sur des questions générales ou des sujets spécifiques."
weight: 75
url: /fr/net/faq/
---

Cette page contient les réponses aux questions les plus fréquemment posées. Veuillez lire la page actuelle – cela vous permettra peut-être de résoudre votre problème rapidement.

Si vous n'avez pas trouvé la réponse à votre question, vous pouvez la poser sur le forum d'assistance. Pour savoir comment signaler correctement votre question ou votre problème, consultez la page [Soutien technique](/words/fr/net/technical-support/).

{{% alert color="primary" %}}

Les questions fréquemment posées sont regroupées par sujet pour votre commodité.

{{% /alert %}}

## Général

**Q: Qu'est-ce que Aspose.Words?**

Aspose.Words for .NET est une bibliothèque de classes qui permet à vos applications d'effectuer une grande variété de tâches de traitement de documents. Avec Aspose.Words pour .NET, vous pouvez générer, modifier, convertir, restituer et imprimer des documents sans applications tierces.

Les détails peuvent être trouvés dans notre documentation.

------

**Q: Que signifie "Aspose.Words ne nécessite pas d'applications tierces"?**

Aspose.Words pour .NET n'a pas besoin d'installer d'applications tierces ou de progiciels supplémentaires pour fonctionner. Téléchargez et installez simplement Aspose.Words comme décrit dans l'article [Installation](/words/fr/net/installation/) et commencez.

------

**Q: Quelles plates-formes sont prises en charge par Aspose.Words?**

Aspose.Words pour .NET couvre la plupart des environnements de développement et plates-formes de déploiement populaires. Son API peut être utilisé pour développer des applications pour une large gamme de systèmes d'exploitation tels que Windows, Linux et Mac OS, et diverses plates-formes.

Pour plus de détails, consultez la page [Présentation du produit](/words/fr/net/product-overview/) et la section [Plateformes et Interopérabilité](/words/net/platforms-and-interoperability/).

------

**Q: Quels formats de documents sont pris en charge par Aspose.Words?**

Aspose.Words pour .NET prend en charge la plupart des formats de documents populaires tels que DOC, DOCX, HTML, Markdown, PDF, XML et autres.

Vous pouvez voir la liste complète des formats pris en charge sur la page [Formats de documents pris en charge](/words/fr/net/supported-document-formats/).

------

**Q: Comment puis-je essayer Aspose.Words gratuitement?**

Vous pouvez le faire de deux manières: en utilisant la version d'essai ou une licence temporaire de 30 jours. La version d'essai est la même que celle achetée, elle offre toutes les fonctionnalités du produit mais ajoute un filigrane d'évaluation en haut du document lors du chargement et de l'enregistrement et limite la taille maximale du document à quelques centaines de paragraphes. Une licence temporaire vous permet de tester Aspose.Words sans restrictions d'essai pendant 30 jours.

Voir la page [Licence et abonnement](/words/fr/net/licensing/) pour plus d'informations.

{{% alert color="primary" %}}

Vous pouvez également essayer certaines des fonctionnalités Aspose.Words les plus populaires via [Applications en ligne gratuites Aspose.Words](https://products.aspose.app/words).

{{% /alert %}}

------

**Q: Comment puis-je acheter du Aspose.Words?**

Pour acheter une licence Aspose.Words, vous devez vous rendre sur la page [Achat](https://purchase.aspose.com/buy), sélectionner le produit "Aspose.Words" et le type de licence qui vous convient. Ajoutez ensuite la licence à votre panier et suivez les instructions du panier.

Après l'achat, demandez la licence comme décrit dans la section [Licence achetée](/words/net/licensing/#purchased-license).

Les détails sur la façon d'installer Aspose.Words peuvent être lus sur la page [Installation](/words/fr/net/installation/).

------

**Q: Comment puis-je obtenir de l'aide?**

Utilisez le forum d'assistance technique gratuit. Pour plus de détails sur la façon de signaler correctement un problème et ce qui doit être fait avant de contacter le forum, consultez la page [Soutien technique](/words/fr/net/technical-support/).

## Rendu d'un document

{{% alert color="primary" %}}

Vous pouvez trouver des informations plus détaillées sur le rendu dans la section documentation [Le rendu](/words/fr/net/rendering/).

{{% /alert %}}

**Q: Pourquoi la mise en page et les polices du document de sortie sont-elles différentes de l'original?**

La police n'est peut-être pas disponible ou le format de police est pris en charge par Microsoft Word mais pas par Aspose.Words. Aspose.Words exécutera [Manipuler et remplacer les polices TrueType](/words/fr/net/manipulating-and-substitution-truetype-fonts/).

Pour vérifier si la police est manquante:

* Dans Aspose.Words, utilisez les avertissements de substitution de police (pour plus de détails, consultez la section "Comment reconnaître que la police a été remplacée" de l'article [Manipuler et remplacer les polices TrueType](/words/fr/net/manipulating-and-substitution-truetype-fonts/)).
* Dans Microsoft Word, ouvrez la boîte de dialogue "Substitution de polices" (Fichier → Options → Avancé → Substitution de polices).

------

**Q: Où dois-je stocker les polices pour les applications ASP.NET?**

Dans `APS.NET`, il n'y a pas d'accès au dossier des polices système en confiance moyenne. Les utilisateurs doivent stocker les polices dans leur propre dossier.

------

**Q: Pourquoi la police de secours ne fonctionne-t-elle pas sur les plates-formes non Windows et pourquoi les caractères Unicode sont-ils remplacés par le glyph .notdef?**

Nous pouvons souvent voir le `.notdef` glyph au lieu d'un caractère Unicode. Il s'agit généralement d'une boîte ou d'une question glyph.

En effet, les paramètres de secours de Microsoft Office sont sélectionnés par défaut et les polices Microsoft Office ne sont pas disponibles. Les utilisateurs doivent installer les polices Microsoft Office ou modifier les paramètres de secours.

------

**Q: Pourquoi un texte d'écriture complexe, tel que le thaï ou l'hébreu, peut-il s'afficher de manière inexacte pour une raison quelconque, comme une mauvaise position des signes diacritiques ou des ligatures inexactes?**

Certaines polices de script complexes nécessitent le traitement des fonctionnalités de typographie avancée afin de les afficher correctement. La typographie avancée est désactivée dans Aspose.Words par défaut. Les utilisateurs doivent activer la typographie avancée avec [TextShaperFactory](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/textshaperfactory/).

------

**Q: Ai-je besoin de fichiers de licence pour les polices que j'utilise?**

Oui, c'est vrai. Par conséquent, lorsque vous copiez des polices, gardez à l’esprit que la plupart des polices sont protégées par des droits d’auteur. Localisez au préalable les licences de polices et vérifiez qu’elles peuvent être librement transférées sur une autre machine.

## Mail Merge imbriqué

{{% alert color="primary" %}}

Vous pouvez trouver des informations plus détaillées sur mail merge dans la section Documentation [Mail Merge et rapports](/words/net/mail-merge-and-reporting/).

{{% /alert %}}

**Q: Pourquoi n'y a-t-il pas de champs fusionnés dans la sortie générée?**

Le nom d'origine du champ de fusion reste le même sans être remplacé par les données requises de la source de données, puis:

* Vérifiez que les données sont correctement chargées dans les tables: définissez correctement le [TableName](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/tablename/) avec toutes les clés primaires et relations requises.
* Vérifiez que les champs de fusion sont nommés correctement. Utilisez la méthode [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/) pour obtenir tous les noms de champs de fusion et assurez-vous que le nom des champs de fusion dans votre modèle correspond à celui de votre source de données.

------

**Q: Pourquoi le résultat de la fusion imbriquée n'affiche-t-il pas les données de la table enfant pour la première entrée de la table parent, mais affiche tous les éléments de la dernière entrée de la table parent, même ceux qui n'y sont pas réellement liés?**

En effet, les régions de fusion dans le modèle ne sont pas correctement formées, ce qui peut empêcher toutes les régions mail merge imbriquées de s'afficher. La balise d'ouverture [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/) et la balise de fermeture [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) doivent correspondre et se trouver dans la même ligne ou cellule. Par exemple, si vous commencez à imbriquer des régions de fusion dans une cellule d'un tableau, vous devez terminer la région de fusion dans la même ligne que la première cellule.

------

**Q: Pourquoi chaque entrée de la table parent affiche-t-elle tous les éléments de la table enfant, même ceux qui n'y sont pas réellement liés?**

Cela est dû au fait que les relations entre les tables parent et enfant ne sont pas configurées ou sont mal configurées. Il est nécessaire de:

* Assurez l'intégrité des données dans votre **DataSet** et utilisez l'objet **DataRelation** pour représenter la relation parent-enfant entre les tables de données associées.
* Consultez la section "Comment configurer des relations de données dans un Mail Merge imbriqué avec des régions" dans l'article [Mail Merge imbriqué avec régions](/words/net/nested-mail-merge-with-regions/).

------

**Q: Pourquoi une exception: "System.ArgumentException: Cette contrainte ne peut pas être activée car toutes les valeurs n'ont pas de valeurs parent correspondantes" lors de l'exécution de mail merge imbriqué?**

Cela se produit car tous les enregistrements parent n'ont pas d'enregistrement enfant et votre source de données ne correspond pas aux critères suivants: *chaque ligne de la table parent doit avoir une relation un-à-un avec les lignes de la table enfant en fonction de l'enregistrement principal et de l'enregistrement enfant. clés étrangères*.

Désactivez les contraintes de clé étrangère lorsque vous créez un **DataRelation**.

## Ajouter ou insérer un document

{{% alert color="primary" %}}

Vous pouvez trouver des informations plus détaillées sur la programmation avec des documents dans la section Documentation [Programmation avec des documents](/words/fr/net/programming-with-documents/).

{{% /alert %}}

**Q: Pourquoi le contenu ajouté à un document n'apparaît-il pas sur la même page?**

Le résultat de l'ajout apparaît sur une page séparée en raison d'une différence dans les paramètres [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) pour les sections dans lesquelles les documents sont ajoutés ensemble. Définissez des paramètres **PageSetup** identiques pour les sections dans lesquelles les documents sont annexés ensemble.

## Convertir un document

{{% alert color="primary" %}}

Vous pouvez trouver des informations plus détaillées sur la conversion d'un document dans la section Documentation [Convertir un document](/words/fr/net/convert-a-document/).

{{% /alert %}}

**Q: Comment convertir un PDF en Word?**

C'est très simple, il suffit de charger un document dans le modèle et de l'enregistrer dans n'importe quel format pris en charge.

L'exemple de code suivant montre le processus de conversion d'un fichier PDF en DOC:

{{< highlight csharp >}}
// Open the source PDF document
Document pdfDocument = new Document(_dataDir + "PDFToDOC.pdf");

// Save the file into MS document format
pdfDocument.Save(_dataDir + "PDFToDOC_out.doc", SaveFormat.Doc); // .Docx, .Rtf, .WordML, etc.
{{< /highlight >}}

------

**Q: Comment convertir un DOCX en PDF?**

C'est également très simple, il suffit de charger un document dans le modèle et de l'enregistrer dans n'importe quel format pris en charge.

L'exemple de code suivant montre le processus de conversion d'un fichier DOCX en PDF:

{{< highlight csharp >}}
// Open the source DOCX document.
Document doc = new Document(_dataDir + "input.docx");

// Save the file to PDF format.
doc.Save(_dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Manipuler avec un document

{{% alert color="primary" %}}

Vous pouvez trouver des informations plus détaillées sur la programmation avec des documents dans la section Documentation [Programmation avec des documents](/words/fr/net/programming-with-documents/).

{{% /alert %}}

**Q: Comment diviser un document page par page?**

Aspose.Words vous permet de diviser un document de plusieurs pages page par page.

L'exemple de code suivant montre comment diviser un document et enregistrer chaque page en tant que document distinct:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Big document.docx");

int pageCount = doc.PageCount;

for (int page = 0; page < pageCount; page++)
{
	// Save each page as a separate document.
	Document extractedPage = doc.ExtractPages(page, 1);
	extractedPage.Save(ArtifactsDir + $"SplitDocument.PageByPage_{page + 1}.docx");
}
{{< /highlight >}}

------

**Q: Comment ouvrir un fichier crypté** **document?**

Vous pouvez essayer d'ouvrir un document crypté sans mot de passe, ce qui devrait entraîner une exception.

L'exemple de code suivant montre comment ouvrir un document chiffré avec un mot de passe:

{{< highlight csharp >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.Docx);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.Password = "MyPassword";
doc.Save(ArtifactsDir + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = new Document(ArtifactsDir + "OoxmlSaveOptions.Password.docx", new LoadOptions("MyPassword"));

Assert.AreEqual("Hello world!", doc.GetText().Trim());
{{< /highlight >}}

------

**Q: Comment imprimer un document?**

Juste deux lignes de code.

L'exemple de code suivant montre comment imprimer un document de deux manières:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "PrintMe.docx");

// Below are two ways of printing our document.
// 1 -  Print using the default printer:
doc.Print();

// 2 -  Specify a printer that we wish to print the document with by name:
string myPrinter = PrinterSettings.InstalledPrinters[4];

doc.Print(myPrinter);
{{< /highlight >}}

------

**Q: Comment modifier un document PDF?**

Chargez simplement le PDF dans le modèle de document Aspose.Words et apportez des modifications.

L'exemple de code suivant montre comment modifier un document:

{{< highlight csharp >}}
// Open the source PDF document
Document pdfDocument = new Document(_dataDir + "PDFToDOC.pdf");

DocumentBuilder builder = new DocumentBuilder(pdfDocument);
builder.MoveToDocumentEnd();
builder.Writeln("New paragraph with text");

pdfDocument.Save(_dataDir + "out.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Docker

**Q: Comment utiliser Aspose.Words dans Docker?**

Pour une réponse détaillée, lisez l'article [Comment exécuter Aspose.Words dans Docker](/words/fr/net/how-to-run-aspose-words-in-docker/).
