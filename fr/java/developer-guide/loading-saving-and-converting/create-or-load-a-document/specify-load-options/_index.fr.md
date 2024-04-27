---
title: Spécifier les options de chargement dans Java
second_title: Aspose.Words pour Java
articleTitle: Spécifier les options de chargement
linktitle: Spécifier les options de chargement
description: "Définir les propriétés avancées lors du chargement d'un document en utilisant Java pour obtenir un contrôle plus précis du processus."
type: docs
weight: 10
url: /fr/java/specify-load-options/
---

Lors du chargement d'un document, vous pouvez définir certaines propriétés avancées. Aspose.Words vous fournit le [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) classe, qui permet un contrôle plus précis du processus de charge. Certains formats de chargement ont une classe correspondante qui contient des options de chargement pour ce format de chargement, par exemple, il y a [PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/) pour le chargement au format PDF ou [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) pour le chargement en TXT. Cet article fournit des exemples de travail avec les options de **LoadOptions** En cours.

## Jeu Microsoft Word Version pour modifier l'apparence

Différentes versions du Microsoft Word application peut afficher les documents différemment. Par exemple, il y a un problème bien connu avec les documents OOXML tels que DOCX ou DOTX produit avec WPS Office. Dans de tels cas, les éléments essentiels du marquage des documents peuvent être manquants ou interprétés différemment Microsoft Word 2019 pour afficher un tel document différemment de Microsoft Word 2010.

Par défaut Aspose.Words ouvre des documents en utilisant Microsoft Word Règles 2019. Si vous avez besoin de faire apparaître le chargement de document comme il se produira dans l'un des précédents Microsoft Word les versions d'application, vous devez spécifier explicitement la version souhaitée en utilisant [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) propriété des **LoadOptions** En cours.

L'exemple de code suivant montre comment définir le Microsoft Word version avec options de chargement:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## Définir les préférences linguistiques pour modifier l'apparence

Les détails de l'affichage d'un document dans Microsoft Word dépend non seulement de la version de l'application et de la **MswVersion** valeur de propriété mais aussi sur les paramètres de langue. Microsoft Word Peut afficher des documents différemment selon les paramètres de la boîte de dialogue "Préférences de langage Office", qui peuvent être trouvés dans "Fichier → Options → Languаge". En utilisant cette boîte de dialogue, un utilisateur peut sélectionner, par exemple, la langue primaire, les langues de correction, les langues d'affichage, etc. Aspose.Words fournit les [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences) propriété comme équivalent de cette boîte de dialogue. Si Aspose.Words sortie diffère de la Microsoft Word sortie, fixer la valeur appropriée pour **EditingLanguage** – cela peut améliorer le document de sortie.

L'exemple de code suivant montre comment définir le japonais comme **EditingLanguage**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## Utilisation WarningCallback de maîtrise des problèmes Lors du chargement d'un document

Certains documents peuvent être corrompus, contenir des entrées invalides, ou ont des fonctionnalités qui ne sont pas actuellement supportées par Aspose.Words. Si vous voulez connaître les problèmes survenus lors du chargement d'un document, Aspose.Words fournit les [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) interface.

L'exemple de code suivant montre la mise en œuvre de la **IWarningCallback** interface & #160;:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

Pour obtenir des informations sur tous les problèmes tout au long du temps de chargement, utilisez le [WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback) propriété.

L'exemple de code suivant montre comment utiliser cette propriété:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## Utiliser la charge de ressources Callback pour contrôler le chargement des ressources externes

Un document peut contenir des liens externes vers des images situées quelque part sur un disque local, un réseau ou Internet. Aspose.Words charge automatiquement ces images dans un document, mais il y a des situations où ce processus doit être contrôlé. Par exemple, pour décider si nous devons vraiment charger une certaine image ou peut-être la sauter. Les [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback) L'option de chargement vous permet de contrôler cela.

L'exemple de code suivant montre la mise en œuvre de la [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/) interface & #160;:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

L'exemple de code suivant montre comment utiliser **ResourceLoadingCallback** Biens

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## Utilisez TempFolder pour éviter une exception mémoire

Aspose.Words prend en charge des documents extrêmement importants qui ont des milliers de pages pleines de contenu riche. Chargement de ces documents peut nécessiter beaucoup de RAM. En cours de chargement, Aspose.Words nécessite encore plus de mémoire pour tenir des structures temporaires utilisées pour analyser un document.

Si vous avez un problème avec l'exception Out of Memory lors du chargement d'un document, essayez d'utiliser [TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder) propriété. Dans ce cas, Aspose.Words stockera certaines données dans des fichiers temporaires au lieu de mémoire, et cela peut aider à éviter une telle exception.

L'exemple de code suivant montre comment définir **TempFolder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## Définir explicitement le codage

La plupart des formats de documents modernes stockent leur contenu en Unicode et ne nécessitent pas de manipulation spéciale. D'un autre côté, il y a encore beaucoup de documents qui utilisent un codage pré-Unicode et parfois soit manquent l'encodage des informations ou ne supportent même pas l'encodage des informations par nature. Aspose.Words essaie de détecter automatiquement l'encodage approprié par défaut, mais dans un cas rare, vous pouvez avoir besoin d'utiliser un encodage différent de celui détecté par notre algorithme de reconnaissance de codage. Dans ce cas, utiliser [Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding) propriété pour obtenir ou définir l'encodage.

L'exemple de code suivant montre comment définir l'encodage pour remplacer l'encodage choisi automatiquement:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## Charger les documents chiffrés

Vous pouvez charger Documents Word cryptés avec un mot de passe. Pour ce faire, utilisez une surcharge spéciale du constructeur, qui accepte [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) objet. Cet objet contient [Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword) propriété, qui spécifie la chaîne de mot de passe.

L'exemple de code suivant montre comment charger un document chiffré avec un mot de passe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

Si vous ne savez pas à l'avance si le fichier est chiffré, vous pouvez utiliser le [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/) classe, qui fournit des méthodes d'utilitaire pour travailler avec les formats de fichiers, comme la détection du format de fichier ou la conversion des extensions de fichier vers/à partir des dénombrements de format de fichier. Pour détecter si le document est chiffré et nécessite un mot de passe pour l'ouvrir, utilisez le [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) propriété.

L'exemple de code suivant montre comment vérifier qu'OpenDocument est chiffré ou non:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
