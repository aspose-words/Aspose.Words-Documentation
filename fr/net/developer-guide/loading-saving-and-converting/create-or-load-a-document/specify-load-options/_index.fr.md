---
title: Spécifier les options de chargement dans C#
second_title: Aspose.Words pour .NET
articleTitle: Spécifier les options de chargement
linktitle: Spécifier les options de chargement
description: "Contrôlez plus précisément le processus de chargement à l'aide de C#."
type: docs
weight: 10
url: /fr/net/specify-load-options/
---

Lors du chargement d'un document, vous pouvez définir certaines propriétés avancées. Aspose.Words vous fournit la classe [LoadOptions](https://reference.aspose.com/words/fr/net/aspose.words.loading/loadoptions/), qui permet un contrôle plus précis du processus de chargement. Certains formats de chargement ont une classe correspondante qui contient les options de chargement pour ce format de chargement, par exemple, il existe [PdfLoadOptions](https://reference.aspose.com/words/fr/net/aspose.words.loading/pdfloadoptions/) pour le chargement au format PDF ou [TxtLoadOptions](https://reference.aspose.com/words/fr/net/aspose.words.loading/txtloadoptions/) pour le chargement au format TXT. Cet article fournit des exemples d'utilisation des options de la classe **LoadOptions**.

## Définir la version Microsoft Word pour modifier l'apparence

Différentes versions de l'application Microsoft Word peuvent afficher les documents différemment. Par exemple, il existe un problème bien connu avec les documents OOXML tels que DOCX ou DOTX produits à l'aide de WPS Office. Dans ce cas, des éléments essentiels de balisage du document peuvent être manquants ou être interprétés différemment, ce qui amène Microsoft Word 2019 à afficher un tel document différemment par rapport à Microsoft Word 2010.

Par défaut, Aspose.Words ouvre les documents en utilisant les règles Microsoft Word 2019. Si vous devez faire apparaître le chargement du document comme il se produirait dans l'une des versions précédentes de l'application Microsoft Word, vous devez spécifier explicitement la version souhaitée à l'aide de la propriété [MswVersion](https://reference.aspose.com/words/fr/net/aspose.words.loading/loadoptions/mswversion/) de la classe **LoadOptions**.

L'exemple de code suivant montre comment définir la version Microsoft Word avec les options de chargement:

{{< gist "aspose-words-gists" "62b066455ff6af0e8727e3fddae47aee" "load-docx-with-msword-version.cs" >}}

## Définir les préférences de langue pour modifier l'apparence

Les détails de l'affichage d'un document dans Microsoft Word dépendent non seulement de la version de l'application et de la valeur de la propriété **MswVersion**, mais également des paramètres de langue. Microsoft Word peut afficher les documents différemment en fonction des paramètres de la boîte de dialogue "Préférences de langue Office", disponibles dans "Fichier → Options → Langue". À l'aide de cette boîte de dialogue, un utilisateur peut sélectionner, par exemple, la langue principale, les langues de vérification, les langues d'affichage, etc. Aspose.Words fournit la propriété [LanguagePreferences](https://reference.aspose.com/words/fr/net/aspose.words.loading/languagepreferences/) comme équivalent de cette boîte de dialogue. Si la sortie Aspose.Words diffère de la sortie Microsoft Word, définissez la valeur appropriée pour **EditingLanguage** – cela peut améliorer le document de sortie.

L'exemple de code suivant montre comment définir le japonais comme **EditingLanguage**:

{{< gist "aspose-words-gists" "5d49772a182a61eac0dcb9c13c98bc6e" "load-docx-with-japanese-as-editing-language.cs" >}}

## Utilisez WarningCallback pour contrôler les problèmes lors du chargement d'un document

Certains documents peuvent être corrompus, contenir des entrées non valides ou comporter des fonctionnalités qui ne sont actuellement pas prises en charge par Aspose.Words. Si vous souhaitez connaître les problèmes survenus lors du chargement d'un document, Aspose.Words fournit l'interface [IWarningCallback](https://reference.aspose.com/words/fr/net/aspose.words/iwarningcallback/).

L'exemple de code suivant montre l'implémentation de l'interface **IWarningCallback**:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "document-loading-warning-callback.cs" >}}

Pour obtenir des informations sur tous les problèmes tout au long du temps de chargement, utilisez la propriété [WarningCallback](https://reference.aspose.com/words/fr/net/aspose.words.loading/loadoptions/warningcallback/).

L'exemple de code suivant montre comment utiliser cette propriété:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "load-docx-with-warning-callback.cs" >}}

## Utilisez ResourceLoadingCallback pour contrôler le chargement des ressources externes

Un document peut contenir des liens externes vers des images situées quelque part sur un disque local, un réseau ou Internet. Aspose.Words charge automatiquement ces images dans un document, mais il existe des situations où ce processus doit être contrôlé. Par exemple, pour décider si nous devons réellement charger une certaine image ou peut-être la sauter. L'option de chargement [ResourceLoadingCallback](https://reference.aspose.com/words/fr/net/aspose.words.loading/loadoptions/resourceloadingcallback/) vous permet de contrôler cela.

L'exemple de code suivant montre l'implémentation de l'interface [IResourceLoadingCallback](https://reference.aspose.com/words/fr/net/aspose.words.loading/iresourceloadingcallback/):

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "html-linked-resource-loading-callback.cs" >}}

L'exemple de code suivant montre comment utiliser la propriété **ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "load-html-with-resource-loading-callback.cs" >}}

## Utilisez TempFolder pour éviter une exception de mémoire

Aspose.Words prend en charge des documents extrêmement volumineux contenant des milliers de pages remplies de contenu riche. Le chargement de tels documents peut nécessiter beaucoup de RAM. Lors du processus de chargement, Aspose.Words a besoin d'encore plus de mémoire pour contenir les structures temporaires utilisées pour analyser un document.

Si vous rencontrez un problème avec l'exception de mémoire insuffisante lors du chargement d'un document, essayez d'utiliser la propriété [TempFolder](https://reference.aspose.com/words/fr/net/aspose.words.loading/loadoptions/tempfolder/). Dans ce cas, Aspose.Words stockera certaines données dans des fichiers temporaires plutôt que dans la mémoire, ce qui peut aider à éviter une telle exception.

L'exemple de code suivant montre comment définir **TempFolder**:

{{< gist "aspose-words-gists" "80fb635124a6afc0e75b9f17d1eab40c" "load-docx-using-temp-folder.cs" >}}

## Définir l'encodage explicitement

La plupart des formats de documents modernes stockent leur contenu au format Unicode et ne nécessitent aucune manipulation particulière. D'un autre côté, de nombreux documents utilisent encore un certain codage pré-Unicode et parfois, soit ils manquent d'informations de codage, soit ne prennent même pas en charge les informations de codage par nature. Aspose.Words essaie de détecter automatiquement l'encodage approprié par défaut, mais dans de rares cas, vous devrez peut-être utiliser un encodage différent de celui détecté par notre algorithme de reconnaissance d'encodage. Dans ce cas, utilisez la propriété [Encoding](https://reference.aspose.com/words/fr/net/aspose.words.loading/loadoptions/encoding/) pour obtenir ou définir l'encodage.

L'exemple de code suivant montre comment définir l'encodage pour remplacer l'encodage choisi automatiquement:

{{< gist "aspose-words-gists" "507181f2c99ba13012c441f1c436d9a7" "load-txt-using-encoding.cs" >}}

## Charger des documents cryptés

Vous pouvez charger des documents Word cryptés avec un mot de passe. Pour ce faire, utilisez une surcharge de constructeur spéciale, qui accepte un objet [LoadOptions](https://reference.aspose.com/words/fr/net/aspose.words.loading/loadoptions/). Cet objet contient la propriété [Password](https://reference.aspose.com/words/fr/net/aspose.words.loading/loadoptions/password/), qui spécifie la chaîne du mot de passe.

L'exemple de code suivant montre comment charger un document chiffré avec un mot de passe:

{{< gist "aspose-words-gists" "5b929b4208996737657de94443bc2852" "load-encrypted-docx.cs" >}}

Si vous ne savez pas à l'avance si le fichier est crypté, vous pouvez utiliser la classe [FileFormatUtil](https://reference.aspose.com/words/fr/net/aspose.words/fileformatutil/), qui fournit des méthodes utilitaires pour travailler avec les formats de fichiers, telles que la détection du format de fichier ou la conversion d'extensions de fichier vers/à partir d'énumérations de formats de fichiers. Pour détecter si le document est crypté et nécessite un mot de passe pour l'ouvrir, utilisez la propriété [IsEncrypted](https://reference.aspose.com/words/fr/net/aspose.words/fileformatinfo/isencrypted/).

L'exemple de code suivant montre comment vérifier qu'OpenDocument est chiffré ou non:

{{< gist "aspose-words-gists" "935e41f0f59c7d8bd8a082ccc14f6b84" "verify-odt-is-encrypted.cs" >}}
