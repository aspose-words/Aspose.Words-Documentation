---
title: Foire AUX QUESTIONS
second_title: Aspose.Words pour C++
articleTitle: Foire AUX QUESTIONS
linktitle: Foire AUX QUESTIONS
type: docs
description: "Aspose.Words pour C++ répond aux questions les plus fréquemment posées. Apprenez cette page pour résoudre rapidement votre problème sur des questions générales ou des sujets spécifiques."
weight: 75
url: /fr/cpp/faq/
timestamp: 2024-01-31-14-23-37
---

Cette page contient les réponses aux questions les plus fréquemment posées. Veuillez lire la page actuelle – cela vous permettra peut-être de résoudre votre problème rapidement.

Si vous n'avez pas trouvé la réponse à votre question, vous pouvez la poser sur le forum d'assistance. Pour savoir comment signaler correctement votre question ou votre problème, consultez le [Soutien Technique](/words/cpp/technical-support/) page.

{{% alert color="primary" %}}

Les questions fréquemment posées sont regroupées par sujet pour votre commodité.

{{% /alert %}}

## Général

**Q: Qu'est-ce que Aspose.Words?**

Aspose.Words pour C++ est une bibliothèque de classes qui permet à vos applications d'effectuer une grande variété de tâches de traitement de documents. Avec Aspose.Words pour C++, vous pouvez générer, modifier, convertir, rendre et imprimer des documents sans applications tierces.

Les détails peuvent être trouvés dans notre documentation.

------

**Q: Que signifie "Aspose.Words ne nécessite pas d'applications tierces"?**

Aspose.Words pour C++ n'a pas besoin d'installer d'applications tierces ou de progiciels supplémentaires pour fonctionner. Il suffit de télécharger et d'installer Aspose.Words comme décrit dans le ["Installation"](/words/cpp/installation/) article et commencez.

------

**Q: Quelles plateformes Aspose.Words prend-il en charge?**

Aspose.Words pour C++ couvre la plupart des environnements de développement et des plates-formes de déploiement populaires. Son API peut être utilisée pour développer des applications pour une large gamme de systèmes d'exploitation tels que Windows, Linux et Mac OS, et diverses plates-formes.

Pour plus de détails, voir le [Aperçu du Produit](/words/cpp/product-overview/) page.

------

**Q: Quels formats de document Aspose.Words prend-il en charge?**

Aspose.Words pour C++ prend en charge la plupart des formats de documents populaires tels que DOC, DOCX, HTML, Markdown, PDF, XML et autres.

Vous pouvez voir la liste complète des formats pris en charge sur le [Formats de Document Pris En Charge](/words/cpp/supported-document-formats/) page.

------

**Q: Comment puis-je essayer Aspose.Words gratuitement?**

Vous pouvez le faire de deux manières: en utilisant la version d'essai ou une licence temporaire de 30 jours. La version d'essai est la même que celle achetée, elle fournit toutes les fonctionnalités du produit mais ajoute un filigrane évaluatif en haut du document lors du chargement et de l'enregistrement et limite la taille maximale du document à quelques centaines de paragraphes. Une licence temporaire vous permet de tester Aspose.Words sans restrictions d'essai pendant 30 jours.

Voir le [Licence et Abonnement](/words/cpp/licensing/) page pour plus d'informations.

{{% alert color="primary" %}}

Vous pouvez également essayer certaines des fonctionnalités Aspose.Words les plus populaires via le [Aspose.Words applications en ligne gratuites](https://products.aspose.app/words).

{{% /alert %}}

------

**Q: Comment puis-je acheter Aspose.Words?**

Pour acheter une licence Aspose.Words, vous devez vous rendre sur le [Achat](https://purchase.aspose.com/buy) page, sélectionnez le produit "Aspose.Words " et le type de licence qui vous convient. Ajoutez ensuite la licence à votre panier et suivez les instructions du panier.

Après l'achat, demandez la licence comme décrit dans le [Licence Achetée](/words/cpp/licensing/#purchased-license) section.

Les détails sur la façon d'installer Aspose.Words peuvent être lus sur le [Montage](/words/cpp/installation/) page.

------

**Q: Comment puis-je obtenir de l'aide?**

Utilisez le forum de support technique gratuit. Pour plus de détails sur la façon de signaler correctement un problème et ce qui doit être fait avant de contacter le forum, consultez le [Soutien Technique](/words/cpp/technical-support/) page.

## Rendu d'un Document

{{% alert color="primary" %}}

Vous pouvez trouver des informations plus détaillées sur le rendu dans le [Rendu](/words/cpp/rendering/) section de documentation.

{{% /alert %}}

**Q: Pourquoi la mise en page et les polices du document de sortie sont-elles différentes de l'original?**

La police peut ne pas être disponible ou le format de police est pris en charge par Microsoft Word mais pas par Aspose.Words. Aspose.Words se produira [substitution de police](/words/cpp/manipulate-and-substitute-truetype-fonts/).

Pour vérifier si la police est manquante:

- Dans Aspose.Words, utilisez les avertissements de substitution de police (pour plus de détails, voir la section "Comment reconnaître que la police a été remplacée" du [Manipuler et substituer les polices TrueType ](/words/cpp/manipulate-and-substitute-truetype-fonts/) l'article).
- Dans Microsoft Word, ouvrez la boîte de dialogue "Substitution de police" (Fichier → Options → Avancé → Substitution de police).

------

**Q: Pourquoi la police de secours ne fonctionne-t-elle pas sur les plates-formes nonWindows et les caractères Unicode sont remplacés par le .glyphe notdef?**

On peut souvent voir le glyphe `.notdef` au lieu d'un caractère Unicode. Il s'agit généralement d'une boîte ou d'un glyphe de question.

Cela est dû au fait que les paramètres de secours de Microsoft Office sont sélectionnés par défaut et que les polices Microsoft Office ne sont pas disponibles. Les utilisateurs doivent installer des polices Microsoft Office ou modifier les paramètres de secours.

------

**Q: Pourquoi un texte d'écriture complexe, tel que le thaï ou l'hébreu, peut-il être affiché de manière inexacte pour une raison quelconque, comme la mauvaise position des signes diacritiques ou des ligatures inexactes?**

Certaines polices de script complexes nécessitent le traitement des fonctionnalités de typographie avancées afin de les afficher correctement. La typographie avancée est désactivée dans Aspose.Words par défaut. Les utilisateurs doivent activer la typographie avancée avec [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/).

------

**Q: Ai-je besoin de fichiers de licence pour les polices que j'utilise?**

Oui, vous le faites. Par conséquent, lorsque vous copiez des polices, gardez à l'esprit que la plupart des polices sont protégées par des droits d'auteur. Localisez les licences de polices au préalable et vérifiez qu'elles peuvent être librement transférées sur une autre machine.

## Ajouter ou insérer un document

{{% alert color="primary" %}}

Vous pouvez trouver des informations plus détaillées sur la programmation avec des documents dans le [Programmation avec des Documents](/words/cpp/programming-with-documents/) section de documentation.

{{% /alert %}}

**Q: Pourquoi le contenu annexé à un document n'apparaît-il pas sur la même page?**

Le résultat de l'ajout apparaît sur une page distincte en raison d'une différence dans les paramètres [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) pour les sections où les documents sont ajoutés ensemble. Définissez des paramètres **PageSetup** identiques pour les sections où les documents sont ajoutés ensemble.

## Convertir un Document

{{% alert color="primary" %}}

Vous pouvez trouver des informations plus détaillées sur la conversion d'un document dans le [Convertir un Document](/words/cpp/convert-a-document/) section de documentation.

{{% /alert %}}

**Q: Comment convertir DOCX en PDF?**

C'est aussi très simple, il suffit de charger un document dans le modèle et de l'enregistrer dans n'importe quel format pris en charge.

L'exemple de code suivant montre le processus de conversion d'un fichier DOCX en PDF:

{{< highlight csharp >}}
// Load the document from disk.
System::SharedPtr<Document> doc = System::MakeObject<Document>(inputDataDir + u"Rendering.doc");

System::String outputPath = outputDataDir + u"Doc2Pdf.SaveDoc2Pdf.pdf";
// Save the document in PDF format.
doc->Save(outputPath);
{{< /highlight >}}

## Manipuler avec un document

{{% alert color="primary" %}}

Vous pouvez trouver des informations plus détaillées sur la programmation avec des documents dans le [Programmation avec des Documents](/words/cpp/programming-with-documents/) section de documentation.

{{% /alert %}}

**Q: Comment diviser un document page par page?**

Aspose.Words vous permet de diviser un document de plusieurs pages page par page.

L'exemple de code suivant montre comment diviser un document et enregistrer chaque page en tant que document séparé:

{{< highlight csharp >}}
auto doc = MakeObject<Document>(MyDir + u"Big document.docx");

int pageCount = doc->get_PageCount();

for (int page = 0; page < pageCount; page++)
{
    // Save each page as a separate document.
    SharedPtr<Document> extractedPage = doc->ExtractPages(page, 1);
    extractedPage->Save(ArtifactsDir + String::Format(u"SplitDocument.PageByPage_{0}.docx", page + 1));
}
{{< /highlight >}}

------

**Q: Comment ouvrir un fichier crypté**

Vous pouvez essayer d'ouvrir un document crypté sans mot de passe, ce qui devrait entraîner une exception.

L'exemple de code suivant montre comment ouvrir un document chiffré avec un mot de passe:

{{< highlight csharp >}}
// Create a document.
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);
builder->Write(u"Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
auto options = System::MakeObject<OoxmlSaveOptions>(SaveFormat::Docx);

// Set a password with which the document will be encrypted, and which will be required to open it.
options->set_Password(u"MyPassword");
doc->Save(u"OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = System::MakeObject<Document>(u"OoxmlSaveOptions.Password.docx", System::MakeObject<LoadOptions>(u"MyPassword"));

ASSERT_EQ(doc->GetText().Trim(), u"Hello world!");
{{< /highlight >}}
