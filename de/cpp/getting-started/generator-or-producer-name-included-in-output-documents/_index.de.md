---
title: Herstellername in Ausgaben
second_title: Aspose.Words für C++
articleTitle: Name des Generators oder Herstellers in Ausgabedokumenten
linktitle: Herstellername in Ausgabedokumenten
description: "Aspose.Words für C++ fügen Sie dem Dokument den Generatornamen und die Versionsnummer hinzu, mit denen es erstellt wurde. Diese Daten können im Dokument auf eine Weise gefunden werden, die vom Ausgabedateiformat abhängt."
type: docs
weight: 90
url: /de/cpp/generator-or-producer-name-included-in-output-documents/
timestamp: 2024-10-21-11-17-44
---

Sie können leicht erkennen, ob ein Dokument erstellt wurde, indem Sie verwenden Aspose.Words für C++. Sie können auch die Versionsnummer von finden Aspose.Words für C++ das wurde verwendet, um ein bestimmtes Ausgabedokument zu erstellen. Aspose.Words schreibt diese Informationen direkt in das generierte Dokument.

Die Versionsnummer wird im Format *YY.MM.N* oder *YY.M.N* angegeben, z. B. 23.12.0 oder 24.1.0.<br />
Hier sind *YY* die letzten beiden Ziffern des Veröffentlichungsjahres, *M* oder *MM* der Veröffentlichungsmonat (1-12) und *N* die Nebenversionsnummer. Normalerweise ist *N* "0".

{{% alert color="primary" %}}

Beachten Sie, dass Sie Aspose.Words nicht anweisen können, diese Informationen aus Ausgabedokumenten zu ändern oder zu entfernen.

{{% /alert %}}

Abhängig vom Ausgabedateiformat listet die folgende Tabelle die Möglichkeiten auf, mit denen Sie den Generatornamen und die Versionsnummer ermitteln können.

| SaveFormat Wert | Zeichenfolge, Kommentar oder Feld, das in die Datei geschrieben wurde | So finden Sie |
| :- | :- | :- |
| `Doc` | `AWC.YY.M.N`<br />For example,<br />`AWC.24.1.0` | DOC generiert von Aspose.Words erhält 8 Bytes geschrieben. Sie können dies überprüfen, indem Sie die Datei in einem Binäreditor öffnen. |
| `Dot` | `AWC.YY.M.N`<br />For example,<br />`AWC.24.1.0` | DOT generiert von Aspose.Words erhält 8 Bytes geschrieben. Sie können dies überprüfen, indem Sie die Datei in einem Binäreditor öffnen. |
| `Docx` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Beispielsweise,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Benennen Sie die Datei um in .Zip. Extrahieren Sie die ZIP. Öffnen Sie ~/Word/Document.xml, um diesen Kommentar zu sehen. |
| `Docm` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Beispielsweise,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Benennen Sie die Datei um in .Zip. Extrahieren Sie die ZIP. Öffnen Sie ~/Word/Document.xml, um diesen Kommentar zu sehen. |
| `Dotx` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Beispielsweise,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Benennen Sie die Datei um in .Zip. Extrahieren Sie die ZIP. Öffnen Sie ~/Document.xml, um diesen Kommentar zu sehen. |
| `Dotm` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Beispielsweise,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Benennen Sie die Datei um in .Zip. Extrahieren Sie die ZIP. Öffnen Sie ~/Word/Document.xml, um diesen Kommentar zu sehen. |
| `FlatOpc` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Beispielsweise,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .xml-Datei enthält diesen Kommentar. Sie können es im Editor öffnen, um diesen Kommentar anzuzeigen. |
| `FlatOpcMacroEnabled` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Beispielsweise,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .xml-Datei enthält diesen Kommentar. Sie können es im Editor öffnen, um diesen Kommentar anzuzeigen. |
| `FlatOpcTemplate` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Beispielsweise,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .xml-Datei enthält diesen Kommentar. Sie können es im Editor öffnen, um diesen Kommentar anzuzeigen. |
| `FlatOpcTemplateMacroEnabled` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Beispielsweise,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .xml-Datei enthält diesen Kommentar. Sie können es im Editor öffnen, um diesen Kommentar anzuzeigen. |
| `Rtf` | `{\*\generator Aspose.Words for C++ YY.M.N;}`<br />Beispielsweise,<br />`{\*\generator Aspose.Words for C++ 24.1.0;}` | .rtf-Datei enthält diesen Kommentar. Sie können es im Editor öffnen, um diesen Kommentar anzuzeigen. |
| `WordML` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Beispielsweise,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .xml-Datei enthält diesen Kommentar. Sie können es im Editor öffnen, um diesen Kommentar anzuzeigen. |
| Pdf | <ul><li>**Application:** Aspose.Words</li><li>**PDF Producer:** `Aspose.Words for C++ YY.M.N` zum Beispiel,<br />`Aspose.Words for C++ 24.1.0`</li></ul> | ![aufgabe: bild_alt_text](generator-or-producer-name-included-in-output-documents_1) |
| `Xps` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Beispielsweise,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Benennen Sie die Datei um in .Zip. Extrahieren Sie die ZIP. In XPS befindet sich dieser Kommentar in ~/Documents/1/Pages/1 .fseite |
| `XamlFixed` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Beispielsweise,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .xml-Datei enthält diesen Kommentar. Sie können es im Editor öffnen, um diesen Kommentar anzuzeigen. |
| `Svg` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Beispielsweise,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .xml-Datei enthält diesen Kommentar. Sie können es im Editor öffnen, um diesen Kommentar anzuzeigen. |
| `HtmlFixed` | `<meta name="generator" content="Aspose.Words for C++ YY.M.N" />`<br />Beispielsweise,<br />`<meta name="generator" content="Aspose.Words for C++ 24.1.0" />` | HTML -Datei enthält dieses Tag. Sie können es im Editor öffnen, um es anzuzeigen. |
| `OpenXps` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Beispielsweise,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Benennen Sie die Datei um in .Zip. Extrahieren Sie die ZIP. In OpenXps befindet sich dieser Kommentar in ~/Documents/1/Pages/1 .fseite |
| `Ps` | `%Generated by Aspose.Words for C++ YY.M.N`<br />Beispielsweise,<br />`%Generated by Aspose.Words for C++ 24.1.0` | .ps-Datei enthält diesen Kommentar. Sie können es im Editor öffnen, um diesen Kommentar anzuzeigen. |
| `Pcl` |  |  |
| `Html` | `<meta name="generator" content="Aspose.Words for C++ YY.M.N" />`<br />Beispielsweise,<br />`<meta name="generator" content="Aspose.Words for C++ 24.1.0" />` | HTML -Datei enthält dieses Tag. Sie können es im Editor öffnen, um es anzuzeigen. |
| `Mhtml` | `<meta name="generator" content="Aspose.Words for C++ YY.M.N" />`<br />Beispielsweise,<br />`<meta name="generator" content="Aspose.Words for C++ 24.1.0" />` | MHTML -Datei enthält dieses Tag. Sie können es im Editor öffnen, um es anzuzeigen. |
| `Epub` | `<meta name="generator" content="Aspose.Words for C++ YY.M.N" />`<br />Beispielsweise,<br />`<meta name="generator" content="Aspose.Words for C++ 24.1.0" />` | Benennen Sie die Datei um in .Zip. Extrahieren Sie die ZIP. Gehe zu ~/OEBPS/<file_name>.HTML. |
| `Odt` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Beispielsweise,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Benennen Sie die Datei um in .Zip. Extrahieren Sie die ZIP. Überprüfen Sie es in ~/ content .XML |
| `Ott` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Beispielsweise,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Benennen Sie die Datei um in .Zip. Extrahieren Sie die ZIP. Überprüfen Sie es in ~/ content .XML |
| `Text` |  |  |
| `XamlFlow` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Beispielsweise,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .xml-Datei enthält diesen Kommentar. Sie können es im Editor öffnen, um diesen Kommentar anzuzeigen. |
| `XamlFlowPack` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Beispielsweise,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .xml-Datei enthält diesen Kommentar. Sie können es im Editor öffnen, um diesen Kommentar anzuzeigen. |
| `Markdown` |  |  |
| `Tiff` |  |  |
| `Png` |  |  |
| `Bmp` |  |  |
| `Emf` |  |  |
| `Jpeg` |  |  |
| `Gif` |  |  |

{{% alert color="primary" %}}

Außerdem gibt es eine Ergänzung zu den in der Tabelle gezeigten Varianten. Die Versionsnummer von Aspose.Words kann für einige Formate an mehreren weiteren Stellen geschrieben werden. Dies hängt von den Exporteinstellungen ab.

Diese zusätzlichen Situationen sind in der obigen Tabelle nicht beschrieben.

{{% /alert %}}
