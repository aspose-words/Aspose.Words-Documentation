---
title: Zainstaluj True Typ Czcionki włączone Linux w Java
second_title: Aspose.Words zamiast Java
articleTitle: Zainstaluj True Typ Czcionki włączone Linux
linktitle: Zainstaluj True Typ Czcionki włączone Linux
description: "Aspose.Words zamiast Java umożliwia renderowanie dokumentu utworzonego przy użyciu Microsoft Word w sprawie Linux maszyna z największą dokładnością."
type: docs
weight: 20
url: /pl/java/install-truetype-fonts-on-linux/
---

Najczęściej, będziesz używać Aspose.Words do konwersji DOC lub DOCX dokumentów do formatu PDF. Jeśli potrzebujesz zrobić to na Linux maszyno, ten temat pomoże Ci nauczyć się jak zapewnić Aspose.Words z największą dokładnością.

Najczęściej tworzone były dokumenty DOC i DOCX, które wymagają konwersji Microsoft Word, w sprawie Windows lub system operacyjny Mac OS. Dlatego większość czcionek używanych w dokumentach DOC i DOCX są "Windows czcionki "lub" Czcionki biurowe ", które są czcionkami zainstalowanymi z Microsoft Windows lub Microsoft Biuro. Czcionki te obejmują Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Taebaldi, Verdana, Wingdings i wiele innych.

Problem w tym, że `TrueType` Czcionki wymienione powyżej nie są domyślnie instalowane Linux dystrybucji. Jeśli wziąć typowy dokument DOCX, który jest sformatowany czcionką Cambria i spróbować przekonwertować go do formatu PDF na Linux, Aspose.Words użyje innej czcionki, ponieważ Cambria nie jest dostępna. W rezultacie dokument PDF będzie wyglądać inaczej, w porównaniu do oryginalnego dokumentu DOCX. Aby upewnić się, że dokumenty przekonwertowane przez Aspose.Words pojawiają się jak najbliżej oryginału, trzeba zainstalować "Windows fonts "na swoim Linux system.

Istnieją dwa główne sposoby, aby uzyskać czcionki TrueType na Linux system:

- Przyjąłem. Pliki TTC z Windows na Linux maszyny
- Zainstaluj `TrueType` pakiet czcionek, takich jak *msttcorefonts*

## Kopiowanie fontów z Windows Maszyna

Łatwy i szybki sposób na uzyskanie czcionek TrueType Linux System jest do skopiowania. TTF i. Pliki TTC z `C:\Windows\Fonts` katalog Windows maszyna do jakiegoś katalogu Linux Maszyna. Nie musisz instalować ani rejestrować tych czcionek na Linux w jakikolwiek sposób; wystarczy tylko określić lokalizację czcionek za pomocą [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) klasa Aspose.Words.

{{% alert color="primary" %}}

Sprawdzić, czy wymagane jest licencjonowanie czcionek, i uważnie przeczytać EULA przed instalacją MS Fonts na dowolnych Linux system operacyjny.

{{% /alert %}}

## Zainstaluj `TrueType` Pakiet czcionek

Istnieje wiele Linux opakowania zawierające: Microsoft Czcionki TrueType, które można pobrać i zainstalować na swoim Linux Maszyna. Dokładne kroki mogą być różne na różnych Linux dystrybucji.

- On Ubuntu, Użyj Synaptic Package Manager, aby znaleźć i zainstalować pakiet * ttf- mscorefonts- installer *.
- Na openSUSE, za pomocą Yast2 → Zarządzanie oprogramowaniem do znalezienia i instalacji *fetchmsttfonts* Paczka.
- Użyj Czcionki Wyzwolenia licencjonowane na OFL, jako alternatywy dla standardu Windows czcionki: Arial, Times New Roman i Courier New.
- Dla pakietów czcionek odpowiednich do innych Linux dystrybucje, wyszukiwanie dostępnej dokumentacji w Internecie.

Po zainstalowaniu pakietu, Aspose.Words znajdą te czcionki w folderach w Twoim systemie i użyją ich podczas pracy z dokumentami.

## Zobacz również

- [Czcionki wywolenia](https://github.com/liberationfonts) jako alternatywa dla normy Windows czcionki
