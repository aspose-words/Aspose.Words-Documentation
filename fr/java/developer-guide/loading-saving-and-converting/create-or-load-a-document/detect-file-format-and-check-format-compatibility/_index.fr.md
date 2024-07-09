---
title: Détecter le format de fichier
second_title: Aspose.Words pour Java
articleTitle: Détecter le format de fichier et vérifier la compatibilité du format
linktitle: Détecter le format de fichier et vérifier la compatibilité du format
description: "Obtenez des informations sur le format du document avant de l'ouvrir pour éviter une exception si vous n'êtes pas sûr de ce que le contenu réel du fichier utilise Java."
type: docs
weight: 20
url: /fr/java/detect-file-format-and-check-format-compatibility/
---

Parfois, il est nécessaire de déterminer le format d'un document avant d'ouvrir parce que l'extension de fichier ne garantit pas que le contenu du fichier est approprié. Par exemple, il est connu que Crystal Reports produit souvent des documents en format RTF, mais leur donne l'extension .doc.

Aspose.Words permet d'obtenir des informations sur le type de fichier afin d'éviter une exception si vous n'êtes pas sûr du contenu réel du fichier.

## Détecter le format de fichier sans exception

Lorsque vous traitez de documents multiples dans différents formats de fichiers, vous pouvez avoir besoin de séparer les fichiers qui peuvent être traités par Aspose.Words de ceux qui ne peuvent pas. Vous voudrez peut-être aussi savoir pourquoi certains documents ne peuvent pas être traités.

Si vous essayez de charger un fichier dans un [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) objet et Aspose.Words ne peut pas reconnaître le format de fichier ou le format n'est pas pris en charge, Aspose.Words Je vais lancer une exception. Vous pouvez attraper ces exceptions et les analyser, mais Aspose.Words fournit également [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.lang.String) méthode qui nous permet de déterminer rapidement le format de fichier sans charger un document avec des exceptions possibles. Cette méthode renvoie une [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) objet qui contient les informations détectées sur le type de fichier.

{{% alert color="primary" %}}

Détecter le fichier Le format ne vérifie que le format de fichier mais ne valide pas le format de fichier. Il n'y a aucune garantie que le fichier sera ouvert avec succès, même si **DetectFileFormat** indique qu'il s'agit d'un des formats supportés. C'est à cause de **DetectFileFormat** méthode lit seulement les données de format de fichier partiel, suffisant pour vérifier le format de fichier, mais pas assez pour la validation complète.

{{% /alert %}}

## Vérifier la compatibilité du format des fichiers

Nous pouvons vérifier la compatibilité de tous les fichiers dans le dossier sélectionné et les trier par format dans les sous-dossiers correspondants.

Comme nous traitons de contenu dans un dossier, la première chose que nous devons faire est d'obtenir une collection de tous les fichiers dans ce dossier en utilisant le **GetFiles** méthode de la `Directory` de la classe `System.IO` espace de noms).

L'exemple de code suivant montre comment obtenir une liste de tous les fichiers du dossier:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-GetListOfFilesInFolder.java" >}}

Lorsque tous les fichiers sont collectés, le reste du travail est fait par le **DetectFileFormat** méthode, qui vérifie le format de fichier.

L'exemple de code suivant montre comment itérer sur la liste de fichiers collectés, vérifier le format de chaque fichier et déplacer chaque fichier dans le dossier approprié:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-CheckFormatCompatibility.java" >}}

Les fichiers sont déplacés dans des sous-dossiers appropriés en utilisant le `Move` méthode de la `File` de la même classe `System.IO` Espace de noms.

Les fichiers suivants sont utilisés dans l'exemple ci-dessus. Le nom du fichier est à gauche et sa description à droite:

| Group des fichiers | Document d'entrée | Type |
|  :-  |  :-  |  :-  |
| Formats de fichiers pris en charge | Dossier d'essai (Doc.doc) | Microsoft Word 95/6.0 ou Microsoft Word 97 – Document de 2003. |
| | Fichier de test (Dot).dot | Microsoft Word 95/6.0 ou Microsoft Word Modèle 97 – 2003. |
| | Fichier d'essai (Docx).docx | Bureau Open XML Traitement de texte Document ML sans macros. |
| | Dossier d'essai (docm).docm | Bureau Open XML Traitement de texte Document ML avec macros. |
| | Fichier de test (Dotx).dotx | Bureau Open XML Traitement de texte Modèle ML. |
| | Fichier de test (Dotm).dotm | Bureau Open XML Traitement de texte Modèle ML avec macros. |
| | Fichier de test (XML).xml | Document FlatOPC OOXML. |
| | Fichier d'essai (RTF).rtf | Document en format texte riche. |
| | Fichier d'essai (WordML).xml | Microsoft Word Traitement de texte 2003 Document ML. |
| | Fichier d'essai (HTML).html | Document HTML. |
| | Fichier de test (HTML).mhtml | Document MHTML (archive Web). |
| | Fichier d'essai (Odt).odt | OpenDocument Text (OpenOffice Writer). |
| | Fichier de test (Ott).ott | Modèle de document OpenDocument. |
| | Dossier d'essai (DocPreWord60).doc | Microsoft Word 2.0 document. |
| Documents chiffrés | Fichier d'essai (Enc.doc) | Chiffres Microsoft Word 95/6.0 ou Microsoft Word 97 – Document de 2003. |
| | Fichier d'essai (Enc).docx | Bureau chiffré Open XML Word Processing Document ML. |
| Formats de fichiers non pris en charge | Fichier d'essai (JPG). Jpg | Fichier image JPEG. |

