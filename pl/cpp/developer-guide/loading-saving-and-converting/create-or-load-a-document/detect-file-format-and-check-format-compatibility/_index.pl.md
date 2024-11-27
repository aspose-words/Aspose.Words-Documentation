---
title: Wykryj Format pliku i sprawdź zgodność formatu
second_title: Aspose.Words dla C++
articleTitle: Wykryj Format pliku i sprawdź zgodność formatu
linktitle: Wykryj Format pliku i sprawdź zgodność formatu
description: "Określ format pliku w C++, jeśli nie masz pewności, jaka jest rzeczywista zawartość pliku lub sprawdź zgodność formatu."
type: docs
weight: 20
url: /pl/cpp/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

Czasami konieczne jest określenie formatu dokumentu przed otwarciem, ponieważ rozszerzenie pliku nie gwarantuje, że zawartość pliku jest odpowiednia. Na przykład wiadomo, że Crystal Reports często wyświetla dokumenty w formacie RTF, ale daje im.rozszerzenie doc.

Aspose.Words umożliwia uzyskanie informacji o typie pliku w celu uniknięcia wyjątku, jeśli nie masz pewności, jaka jest rzeczywista zawartość pliku.

## Wykryj Format pliku bez wyjątku

Gdy masz do czynienia z wieloma dokumentami w różnych formatach plików, może być konieczne oddzielenie tych plików, które mogą być przetwarzane przez Aspose.Words, od tych, które nie mogą. Możesz również dowiedzieć się, dlaczego niektórych dokumentów nie można przetworzyć.

Jeśli spróbujesz załadować plik do obiektu [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) i Aspose.Words nie rozpoznasz formatu pliku lub format nie jest obsługiwany, Aspose.Words zgłosi wyjątek. Możesz złapać te wyjątki i przeanalizować je, ale Aspose.Words zapewnia również metodę [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/), która pozwala nam szybko określić format pliku bez ładowania dokumentu z możliwymi wyjątkami. Ta metoda zwraca obiekt [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/), który zawiera wykryte informacje o typie pliku.

{{% alert color="primary" %}}

DetectFileFormat sprawdza tylko format pliku, ale nie sprawdza poprawności formatu pliku. Nie ma gwarancji, że plik zostanie pomyślnie otwarty, nawet jeśli **DetectFileFormat** zwróci, że jest to jeden z obsługiwanych formatów. Wynika to z tego, że metoda **DetectFileFormat** odczytuje tylko częściowe dane formatu pliku, wystarczające do sprawdzenia formatu pliku, ale niewystarczające do pełnej weryfikacji.

{{% /alert %}}

## Sprawdź Zgodność Formatu Plików

Możemy sprawdzić zgodność formatów wszystkich plików w wybranym folderze i posortować je według formatu do odpowiednich podfolderów.

Ponieważ mamy do czynienia z zawartością w folderze, pierwszą rzeczą, którą musimy zrobić, to pobrać kolekcję wszystkich plików w tym folderze przy użyciu metody **GetFiles** klasy `Directory` (z przestrzeni nazw `System.IO`).

Poniższy przykład kodu pokazuje, jak uzyskać listę wszystkich plików w folderze:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-GetListOfFilesInFolder.cpp" >}}

Po zebraniu wszystkich plików reszta pracy jest wykonywana metodą **DetectFileFormat**, która sprawdza format pliku.

Poniższy przykład kodu pokazuje, jak iterować zebraną listę plików, sprawdzić format KAŻDEGO pliku i przenieść każdy plik do odpowiedniego folderu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-CheckFormatCompatibility.cpp" >}}

Pliki są przenoszone do odpowiednich podfolderów przy użyciu metody `Move` klasy `File` z tej samej przestrzeni nazw `System.IO`.

Poniższe pliki są używane w powyższym przykładzie. Nazwa pliku znajduje się po lewej stronie, a jego opis po prawej:

| Grupa plików | Dokument Wejściowy | Rodzaj |
| :- | :- | :- |
| Obsługiwane formaty plików | Test File (DOC).doc | Microsoft Word 95/6.0 lub Microsoft Word 97 – dokument z 2003 r. |
|  | Test File (DOT).dot | Microsoft Word 95/6.0 lub Microsoft Word 97 – 2003 szablon. |
|  | Test File (DOCX).docx | Office Open XML WordprocessingML dokument bez makr. |
|  | Test File (DOCM).docm | Office Open XML WordprocessingML dokument z makrami. |
|  | Test File (DOTX).dotx | Biuro Otwarte XML WordprocessingML szablon. |
|  | Test File (DOTM).dotm | Office Open XML WordprocessingML szablon z makrami. |
|  | Test File (XML).xml | FlatOPC OOXML Dokument. |
|  | Test File (RTF).rtf | Dokument w formacie tekstu sformatowanego. |
|  | Test File (WordML).xml | Microsoft Word 2003 WordprocessingML Dokument. |
|  | Test File (HTML).html | HTML dokument. |
|  | Test File (MHTML).mhtml | MHTML (archiwum internetowe) dokument. |
|  | Test File (ODT).odt | OpenDocument Tekst (OpenOffice Pisarz). |
|  | Test File (OTT).ott | OpenDocument Szablon Dokumentu. |
|  | Test File (DocPreWord60).doc | Microsoft Word 2.0 dokument. |
| Zaszyfrowane dokumenty | Test File (Enc).doc | Zaszyfrowany dokument Microsoft Word 95 / 6.0 lub Microsoft Word 97 – 2003. |
|  | Test File (Enc).docx | Zaszyfrowany dokument Office Open XML WordprocessingML. |
| Nieobsługiwane formaty plików | Test File (JPG).jpg | JPEG plik obrazu. |

