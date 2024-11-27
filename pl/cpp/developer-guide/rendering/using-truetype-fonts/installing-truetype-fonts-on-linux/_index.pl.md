---
title: Zainstaluj czcionki TrueType na Linux w C++
second_title: Aspose.Words dla C++
articleTitle: Zainstaluj TrueType czcionki na Linux
linktitle: Zainstaluj TrueType czcionki na Linux
description: "Aspose.Words for C++ umożliwia renderowanie dokumentu utworzonego przy użyciu Microsoft Word Na maszynie Linux z najlepszą dokładnością. Aby to osiągnąć, skopiuj pliki czcionek z maszyny Windows lub Zainstaluj pakiet czcionek `TrueType` na maszynie Linux."
type: docs
weight: 20
url: /pl/cpp/install-truetype-fonts-on-linux/
timestamp: 2024-01-27-14-07-04
---

Najczęściej użyjesz Aspose.Words do konwersji dokumentów DOC lub DOCX do formatu PDF. Jeśli musisz to zrobić na maszynie Linux, ten temat pomoże Ci dowiedzieć się, jak upewnić się, że Aspose.Words renderuje Twoje dokumenty z najlepszą dokładnością.

Najczęściej dokumenty DOC i DOCX, które należy przekonwertować, były tworzone przy użyciu Microsoft Word, w systemie operacyjnym Windows lub Mac OS. Dlatego większość czcionek używanych w dokumentach DOC i DOCX to "CzcionkiWindows" lub "czcionki biurowe", które są czcionkami zainstalowanymi w Microsoft Windows lub Microsoft Office. Czcionki te obejmują Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings i wiele innych.

Problem polega na tym, że czcionki `TrueType` wymienione powyżej nie są domyślnie instalowane w dystrybucjach Linux. Jeśli weźmiesz typowy dokument DOCX sformatowany czcionką Cambria i spróbujesz przekonwertować go do formatu PDF na Linux, Aspose.Words użyje innej czcionki, ponieważ Cambria nie jest dostępna. W rezultacie dokument PDF będzie wyglądał inaczej w porównaniu z oryginalnym dokumentem DOCX. Aby upewnić się, że dokumenty przekonwertowane przez Aspose.Words pojawiają się jak najbliżej oryginału, musisz zainstalować "Windows czcionki" w systemie Linux.

Istnieją dwa główne sposoby uzyskania czcionek TrueType w systemie Linux:

- Przyjąłem .TTF oraz .TTC pliki z maszyny Windows Na maszynę Linux
- Zainstaluj pakiet czcionek `TrueType`, taki jak *msttcorefonts*

## Kopiowanie czcionek z maszyny Windows

Łatwym i szybkim sposobem uzyskania czcionek TrueType w systemie Linux jest kopiowanie .TTF oraz .TTC pliki z katalogu C: \ Windows\Fonts na maszynie Windows do jakiegoś katalogu na maszynie Linux. Nie musisz w żaden sposób instalować ani rejestrować tych czcionek na Linux; wystarczy określić lokalizację czcionek za pomocą klasy [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings) w Aspose.Words.

{{% alert color="primary" %}}

Sprawdź, czy wymagane jest licencjonowanie czcionek i przeczytaj uważnie EULA Przed zainstalowaniem czcionek MS w dowolnym systemie operacyjnym Linux.

{{% /alert %}}

## Zainstaluj pakiet czcionek `TrueType`

Istnieje wiele pakietów Linux zawierających czcionki Microsoft TrueType, które można pobrać i zainstalować na komputerze Linux. Dokładne kroki mogą być różne w różnych rozkładach Linux.

- W Ubuntu Użyj Menedżera pakietów Synaptic, aby znaleźć i zainstalować pakiet *ttf-mscorefonts-installer*.
- W openSUSE Użyj Yast2 → Zarządzanie oprogramowaniem, aby znaleźć i zainstalować pakiet *fetchmsttfonts*.
- Używaj czcionek Liberation na licencji OFL, jako alternatywy dla standardowych czcionek Windows: Arial, Times New Roman i Courier New.
- W przypadku pakietów czcionek odpowiednich dla innych dystrybucji Linux wyszukaj dostępną dokumentację w Internecie.

Po zainstalowaniu pakietu Aspose.Words znajdzie te czcionki w folderach w systemie i użyje ich podczas pracy z dokumentami.

## Zobacz także

- [Liberation Fonts](https://github.com/liberationfonts) jako alternatywa dla standardowych czcionek Windows
