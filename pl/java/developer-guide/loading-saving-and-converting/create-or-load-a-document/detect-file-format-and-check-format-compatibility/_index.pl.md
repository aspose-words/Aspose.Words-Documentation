---
title: Wykryj format pliku
second_title: Aspose.Words zamiast Java
articleTitle: Wykrywanie formatu pliku i sprawdzanie kompatybilności formatu
linktitle: Wykrywanie formatu pliku i sprawdzanie kompatybilności formatu
description: "Uzyskaj informacje o formacie dokumentu przed jego otwarciem, aby uniknąć wyjątku, jeśli nie jesteś pewien, jaka jest rzeczywista zawartość pliku Java."
type: docs
weight: 20
url: /pl/java/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

Czasami konieczne jest określenie formatu dokumentu przed otwarciem, ponieważ rozszerzenie pliku nie gwarantuje, że zawartość pliku jest odpowiednia. Na przykład wiadomo, że Crystal Reports często wysyła dokumenty w formacie RTF, ale daje im rozszerzenie .doc.

Aspose.Words zapewnia możliwość uzyskania informacji o typie pliku w celu uniknięcia wyjątku, jeśli nie jesteś pewien, jaka jest rzeczywista zawartość pliku.

## Wykrywanie formatu pliku bez wyjątku

Kiedy masz do czynienia z wieloma dokumentami w różnych formatach plików, może być konieczne oddzielenie tych plików, które mogą być przetwarzane przez Aspose.Words od tych, którzy nie mogą. Możesz również chcieć wiedzieć, dlaczego niektóre dokumenty nie mogą być przetwarzane.

Jeśli próbujesz załadować plik do [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) obiekt i Aspose.Words nie może rozpoznać formatu pliku lub format nie jest obsługiwany, Aspose.Words Rzuci wyjątek. Można złapać te wyjątki i analizować je, ale Aspose.Words zapewnia również [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.lang.String) metoda, która pozwala nam szybko określić format pliku bez wczytywania dokumentu z ewentualnymi wyjątkami. Ta metoda zwraca a [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) obiekt, który zawiera wykryte informacje o typie pliku.

{{% alert color="primary" %}}

DetectPlik Format sprawdza tylko format pliku, ale nie sprawdza formatu pliku. Nie ma gwarancji, że plik zostanie z powodzeniem otwarty, nawet jeśli **DetectFileFormat** zwraca, że jest to jeden z obsługiwanych formatów. To z powodu **DetectFileFormat** metoda odczytuje tylko częściowe dane formatu pliku, wystarczające do sprawdzenia formatu pliku, ale nie wystarczające do pełnej walidacji.

{{% /alert %}}

## Sprawdź kompatybilność formatu plików

Możemy sprawdzić kompatybilność formatów wszystkich plików w wybranym folderze i sortować je w formacie do odpowiednich podfolderów.

Ponieważ mamy do czynienia z zawartością w folderze, pierwszą rzeczą, którą musimy zrobić jest zebranie wszystkich plików w tym folderze za pomocą **GetFiles** Metoda `Directory` klasa (z `System.IO` ).

Poniższy przykład kodu pokazuje jak uzyskać listę wszystkich plików w folderze:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-GetListOfFilesInFolder.java" >}}

Kiedy wszystkie pliki są zbierane, reszta pracy jest wykonywana przez **DetectFileFormat** metoda, która sprawdza format pliku.

Poniższy przykład kodu pokazuje, jak iteracować nad zebraną listą plików, sprawdzić format każdego pliku i przenieść każdy plik do odpowiedniego folderu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-CheckFormatCompatibility.java" >}}

Pliki są przenoszone do odpowiednich podfolderów za pomocą `Move` Metoda `File` klasa, od tego samego `System.IO` przestrzeń nazw.

Następujące pliki są używane w powyższym przykładzie. Nazwa pliku jest po lewej stronie, a jej opis po prawej:

| Group plików | Dokument wejścia | Rodzaj |
|  :-  |  :-  |  :-  |
| Obsługiwane formaty plików | Plik testowy (Doc) .doc | Microsoft Word 95 / 6, 0 lub Microsoft Word Dokument 97 - 2003. |
|  | Plik testowy (Dot) .dot | Microsoft Word 95 / 6, 0 lub Microsoft Word Wzór formularza 97 - 2003. |
|  | Plik testowy (Docx) .docx | Office Open XML Wordprocessing Dokument ML bez makr. |
|  | Plik testowy (Docm) .docm | Office Open XML Wordprocessing Dokument ML z makrami. |
|  | Plik testowy (Dotx) .dotx | Office Open XML Wordprocessing Wzór ML. |
|  | Plik testowy (Dotm) .dotm | Office Open XML Wordprocessing Szablon ML z makrami. |
|  | Plik testowy (XML) .xml | Dokument OOXML FlatoPC. |
|  | Plik testowy (RTF) .rtf | Rich Text Format Document. |
|  | Plik testowy (WordML) .xml | Microsoft Word 2003 Wordprocessing Dokument ML. |
|  | Test File (HTML) .html | Dokument HTML. |
|  | Plik testowy (MHTML) .mhtml | Dokument MHTML (Web Archive). |
|  | Plik testowy (ODT) .odt | Tekst OpenDocument (OpenOffice Writer). |
|  | Plik testowy (Ott) .ott | Szablon dokumentu OpenDocument. |
|  | Plik testowy (DocPreWord60) .doc | Microsoft Word 2.0 dokument. |
| Zaszyfrowane dokumenty | Plik testowy (Enc) .doc | Zaszyfrowane Microsoft Word 95 / 6, 0 lub Microsoft Word Dokument 97 - 2003. |
|  | Plik testowy (Enc) .docx | Szyfrowane Office Open XML Wordprocessing Dokument ML. |
| Nieobsługiwane formaty plików | Test File (JPG). jpg | Plik obrazu JPEG. |

