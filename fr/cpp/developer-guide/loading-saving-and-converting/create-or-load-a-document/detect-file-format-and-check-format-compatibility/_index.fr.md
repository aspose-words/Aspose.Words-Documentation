---
title: Détecter le Format de Fichier et vérifier la compatibilité des Formats
second_title: Aspose.Words pour C++
articleTitle: Détecter le Format de Fichier et vérifier la compatibilité des Formats
linktitle: Détecter le Format de Fichier et vérifier la compatibilité des Formats
description: "Déterminez le format de fichier en C++ si vous n'êtes pas sûr du contenu réel du fichier ou pour vérifier la compatibilité du format."
type: docs
weight: 20
url: /fr/cpp/detect-file-format-and-check-format-compatibility/
---

Parfois, il est nécessaire de déterminer le format d'un document avant de l'ouvrir car l'extension de fichier ne garantit pas que le contenu du fichier est approprié. Par exemple, il est connu que Crystal Reports produit souvent des documents au format RTF, mais leur donne le .extension de document.

Aspose.Words permet d'obtenir des informations sur le type de fichier afin d'éviter une exception si vous n'êtes pas sûr du contenu réel du fichier.

## Détecter le format de fichier sans exception

Lorsque vous traitez plusieurs documents dans différents formats de fichiers, vous devrez peut-être séparer les fichiers qui peuvent être traités par Aspose.Words de ceux qui ne le peuvent pas. Vous voudrez peut-être aussi savoir pourquoi certains documents ne peuvent pas être traités.

Si vous essayez de charger un fichier dans un objet [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) et que Aspose.Words ne peut pas reconnaître le format de fichier ou que le format n'est pas pris en charge, Aspose.Words lèvera une exception. Vous pouvez intercepter ces exceptions et les analyser, mais Aspose.Words fournit également la méthode [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) qui nous permet de déterminer rapidement le format de fichier sans charger un document avec d'éventuelles exceptions. Cette méthode renvoie un objet [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/) qui contient les informations détectées sur le type de fichier.

{{% alert color="primary" %}}

DetectFileFormat vérifie uniquement le format de fichier mais ne valide pas le format de fichier. Il n'y a aucune garantie que le fichier sera ouvert avec succès, même si **DetectFileFormat** renvoie qu'il s'agit de l'un des formats pris en charge. Cela est dû au fait que la méthode **DetectFileFormat** ne lit que des données de format de fichier partielles, suffisantes pour vérifier le format de fichier, mais pas suffisantes pour une validation complète.

{{% /alert %}}

## Vérifier La Compatibilité Des Formats De Fichiers

Nous pouvons vérifier la compatibilité des formats de tous les fichiers du dossier sélectionné et les trier par format dans les sous-dossiers correspondants.

Puisque nous traitons du contenu d'un dossier, la première chose à faire est d'obtenir une collection de tous les fichiers de ce dossier en utilisant la méthode **GetFiles** de la classe `Directory` (à partir de l'espace de noms `System.IO`).

L'exemple de code suivant montre comment obtenir une liste de tous les fichiers du dossier:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-GetListOfFilesInFolder.cpp" >}}

Lorsque tous les fichiers sont collectés, le reste du travail est effectué par la méthode **DetectFileFormat**, qui vérifie le format du fichier.

L'exemple de code suivant montre comment parcourir la liste de fichiers collectés, vérifier le format de chaque fichier et déplacer chaque fichier vers le dossier approprié:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-CheckFormatCompatibility.cpp" >}}

Les fichiers sont déplacés dans les sous-dossiers appropriés en utilisant la méthode `Move` de la classe `File`, à partir du même espace de noms `System.IO`.

Les fichiers suivants sont utilisés dans l'exemple ci-dessus. Le nom du fichier est à gauche et sa description est à droite:

| Groupe de Fichiers | Document d'entrée | Type |
| :- | :- | :- |
| Formats de fichiers pris en charge | Test File (DOC).doc | Document Microsoft Word 95/6.0 ou Microsoft Word 97 – 2003. |
|  | Test File (DOT).dot | Modèle Microsoft Word 95/6.0 ou Microsoft Word 97 – 2003. |
|  | Test File (DOCX).docx | Traitement de texte Office Open XML Document ML sans macros. |
|  | Test File (DOCM).docm | Traitement de texte Office Open XML Document ML avec macros. |
|  | Test File (DOTX).dotx | Modèle de traitement de texte Office Open XML. |
|  | Test File (DOTM).dotm | Modèle de traitement de texte Office Open XML avec macros. |
|  | Test File (XML).xml | Document au format OOXML. |
|  | Test File (RTF).rtf | Document au Format Texte Enrichi. |
|  | Test File (WordML).xml | Document de traitement de texte Microsoft Word 2003ml. |
|  | Test File (HTML).html | Document HTML. |
|  | Test File (MHTML).mhtml | Document MHTML (archives Web). |
|  | Test File (ODT).odt | OpenDocument Texte (OpenOffice Écrivain). |
|  | Test File (OTT).ott | OpenDocument Modèle de document. |
|  | Fichier de test (DocPreWord60).doc | Document Microsoft Word 2.0. |
| Documents chiffrés | Test File (Enc).doc | Document chiffré Microsoft Word 95 / 6.0 ou Microsoft Word 97 – 2003. |
|  | Test File (Enc).docx | Document XML de traitement de texte Open XML Office crypté. |
| Formats de fichiers non pris en charge | Test File (JPG).jpg | Fichier image JPEG. |

