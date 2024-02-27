---
title: Zainstaluj czcionki TrueType w Linux
second_title: Aspose.Words dla Python via .NET
articleTitle: Zainstaluj czcionki TrueType w Linux
linktitle: Zainstaluj czcionki TrueType w Linux
description: "Aspose.Words for Python umożliwia renderowanie dokumentu utworzonego przy użyciu formatu Microsoft Word na maszynie Linux z największą dokładnością. Aby to osiągnąć, skopiuj pliki czcionek z maszyny Windows lub zainstaluj pakiet czcionek `TrueType` na maszynie Linux."
type: docs
weight: 20
url: /pl/python-net/installing-truetype-fonts-on-linux/
---

Najczęściej będziesz używać Aspose.Words do konwersji dokumentów DOC lub DOCX do formatu PDF. Jeśli chcesz to zrobić na komputerze Linux, ten temat pomoże Ci dowiedzieć się, jak upewnić się, że Aspose.Words renderuje Twoje dokumenty z najlepszą dokładnością.

Najczęściej dokumenty DOC i DOCX wymagające konwersji zostały utworzone przy użyciu formatu Microsoft Word, w systemie operacyjnym Windows lub Mac OS. Dlatego większość czcionek używanych w dokumentach DOC i DOCX to "czcionki Windows" lub "czcionki Office", czyli czcionki instalowane z Microsoft Windows lub Microsoft Office. Te czcionki obejmują Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings i wiele innych.

Problem polega na tym, że wymienione powyżej czcionki `TrueType` nie są domyślnie instalowane w dystrybucjach Linux. Jeśli weźmiesz typowy dokument DOCX sformatowany przy użyciu czcionki Cambria i spróbujesz przekonwertować go do formatu PDF w formacie Linux, Aspose.Words użyje innej czcionki, ponieważ Cambria nie jest dostępna. W rezultacie dokument PDF będzie wyglądał inaczej niż oryginalny dokument DOCX. Aby mieć pewność, że dokumenty przekonwertowane za pomocą Aspose.Words będą jak najbardziej zbliżone do oryginału, musisz zainstalować w swoim systemie Linux "czcionki Windows".

Istnieją dwa główne sposoby uzyskania czcionek TrueType w systemie Linux:

- Skopiuj pliki .TTF i .TTC z maszyny Windows na maszynę Linux
- Zainstaluj pakiet czcionek `TrueType`, taki jak *msttcorefonts*

## Kopiowanie czcionek z maszyny Windows

Łatwym i szybkim sposobem uzyskania czcionek TrueType w systemie Linux jest skopiowanie plików .TTF i .TTC z katalogu `C:\Windows\Fonts` na maszynie Windows do jakiegoś katalogu na maszynie Linux. Nie musisz w żaden sposób instalować ani rejestrować tych czcionek w Linux; wystarczy określić lokalizację czcionek za pomocą klasy [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) w Aspose.Words.

{{% alert color="primary" %}}

Sprawdź, czy wymagana jest licencja na czcionki i przeczytaj uważnie Umowę EULA przed zainstalowaniem MS Fonts w dowolnym systemie operacyjnym Linux.

{{% /alert %}}

## Zainstaluj pakiet czcionek `TrueType`

Istnieje wiele pakietów Linux zawierających czcionki Microsoft TrueType, które można pobrać i zainstalować na komputerze Linux. Dokładne kroki mogą się różnić w różnych dystrybucjach Linux.

- W Ubuntu użyj Menedżera pakietów Synaptic, aby znaleźć i zainstalować pakiet *ttf-mscorefonts-installer*.
- W openSUSE użyj Yast2 → Zarządzanie oprogramowaniem, aby znaleźć i zainstalować pakiet *fetchmsttfonts*.
- Używaj czcionek Liberation na licencji OFL jako alternatywy dla standardowych czcionek Windows: Arial, Times New Roman i Courier New.
- Aby znaleźć pakiety czcionek odpowiednie dla innych dystrybucji Linux, przeszukaj dostępną dokumentację w Internecie.

Po zainstalowaniu pakietu Aspose.Words znajdzie te czcionki w folderach w Twoim systemie i użyje ich podczas pracy z dokumentami.

## Zobacz też

- [Czcionki wyzwolenia](https://pagure.io/liberation-fonts) jako alternatywa dla standardowych czcionek Windows
