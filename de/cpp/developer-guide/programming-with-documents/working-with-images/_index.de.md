---
title: Arbeiten mit Bildern in C++
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit Bildern
linktitle: Arbeiten mit Bildern
type: docs
description: "Einführung in die Bildfunktion, Erstellen und Bearbeiten von Bildern mit C++."
weight: 300
url: /de/cpp/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words ermöglicht es Benutzern, sehr flexibel mit Bildern zu arbeiten. In diesem Artikel können Sie nur einige der Möglichkeiten der Arbeit mit Bildern erkunden.

## So extrahieren Sie Bilder aus einem Dokument

Alle Bilder werden in **Shape** Knoten in [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) gespeichert. Gehen Sie folgendermaßen vor, um alle Bilder oder Bilder mit einem bestimmten Typ aus dem Dokument zu extrahieren:

- Verwenden Sie die [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/)-Methode, um alle **Shape**-Knoten auszuwählen.
- Durchlaufen Sie die resultierenden Knotensammlungen.
- Überprüfen Sie die boolesche Eigenschaft [HasImage](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_hasimage/).
- Extrahieren Sie Bilddaten mit der Eigenschaft [ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/).
- Speichern Sie Bilddaten in einer Datei.

Das folgende Codebeispiel zeigt, wie Bilder aus einem Dokument extrahiert und als Dateien gespeichert werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cpp" >}}

## Speichern von Bildern als WMF

Aspose.Words bietet Funktionen zum Speichern aller verfügbaren Bilder in einem Dokument in [WMF ](https://docs.fileformat.com/image/wmf/)formatieren Sie beim Konvertieren von DOCX in RTF.

Das folgende Codebeispiel zeigt, wie Bilder als WMF mit RTF Speicheroptionen gespeichert werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cpp" >}}
