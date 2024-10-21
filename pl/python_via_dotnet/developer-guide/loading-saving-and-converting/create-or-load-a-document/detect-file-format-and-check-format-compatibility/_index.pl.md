---
title: Wykryj format pliku podczas ładowania
second_title: Aspose.Words dla Python via .NET
articleTitle: Wykryj format pliku i sprawdź zgodność formatu
linktitle: Wykryj format pliku i sprawdź zgodność formatu
description: "Określ format pliku w Python, jeśli nie jesteś pewien, jaka jest rzeczywista zawartość pliku, lub sprawdź zgodność formatu."
type: docs
weight: 20
url: /pl/python-net/detect-file-format-and-check-format-compatibility/
---

Czasami konieczne jest określenie formatu dokumentu przed otwarciem, ponieważ rozszerzenie pliku nie gwarantuje, że zawartość pliku jest odpowiednia. Wiadomo na przykład, że Crystal Reports często generuje dokumenty w formacie RTF, ale nadaje im rozszerzenie .doc.

Aspose.Words zapewnia możliwość uzyskania informacji o typie pliku, aby uniknąć wyjątku, jeśli nie jesteś pewien, jaka jest rzeczywista zawartość pliku.

## Wykryj format pliku bez wyjątku

Kiedy masz do czynienia z wieloma dokumentami w różnych formatach plików, może zaistnieć potrzeba oddzielenia plików, które mogą być przetwarzane przez Aspose.Words, od tych, które nie mogą. Możesz także chcieć wiedzieć, dlaczego niektórych dokumentów nie można przetworzyć.

Jeśli spróbujesz załadować plik do obiektu [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) i Aspose.Words nie będzie w stanie rozpoznać formatu pliku lub format nie jest obsługiwany, Aspose.Words zgłosi wyjątek. Możesz wychwycić te wyjątki i przeanalizować je, ale Aspose.Words udostępnia również metodę [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/), która pozwala nam szybko określić format pliku bez ładowania dokumentu z możliwymi wyjątkami. Ta metoda zwraca obiekt [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) zawierający wykryte informacje o typie pliku.

{{% alert color="primary" %}}

[detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) sprawdza tylko format pliku, ale go nie sprawdza. Nie ma gwarancji, że plik zostanie pomyślnie otwarty, nawet jeśli [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) zwróci informację, że jest to jeden z obsługiwanych formatów. Dzieje się tak dlatego, że metoda [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) odczytuje tylko częściowe dane formatu pliku, wystarczające do sprawdzenia formatu pliku, ale niewystarczające do pełnej walidacji.

{{% /alert %}}

## Sprawdź zgodność formatu plików

Możemy sprawdzić zgodność formatu wszystkich plików w wybranym folderze i posortować je według formatu do odpowiednich podfolderów.

Ponieważ mamy do czynienia z zawartością folderu, pierwszą rzeczą, którą musimy zrobić, to pobrać kolekcję wszystkich plików w tym folderze za pomocą metody **listdir** modułu **os**.

Poniższy przykład kodu pokazuje, jak uzyskać listę wszystkich plików w folderze:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-GetListOfFilesInFolder.py" >}}

Po zebraniu wszystkich plików resztę pracy wykonuje metoda [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/), która sprawdza format pliku.

Poniższy przykład kodu pokazuje, jak iterować po zebranej liście plików, sprawdzać format każdego pliku i przenosić każdy plik do odpowiedniego folderu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-CheckFormatCompatibility.py" >}}

Pliki przenoszone są do odpowiednich podfolderów metodą **skopiować plik** modułu **zamknięty**.

W powyższym przykładzie użyto następujących plików. Nazwa pliku znajduje się po lewej stronie, a jego opis po prawej:

| Group plików | Dokument wejściowy | Typ |
|  :-  |  :-  |  :-  |
| Obsługiwane formaty plików | Plik testowy (Doc).doc|Dokument Microsoft Word 95/6.0 lub Microsoft Word 97 – 2003. |
|  | Plik testowy (`Dot`).dot | Szablon Microsoft Word 95/6.0 lub Microsoft Word 97 – 2003. |
|  | Plik testowy (Docx).docx | Dokument Office Open XML WordprocessingML bez makr. |
|  | Plik testowy (Docm).docm | Dokument Office Open XML WordprocessingML z makrami. |
|  | Plik testowy (Dotx).dotx | Szablon Office Open XML WordprocessingML. |
|  | Plik testowy (Dotm).dotm | Szablon Office Open XML WordprocessingML z makrami. |
|  | Plik testowy (XML).xml | Dokument OOXML FlatOPC. |
|  | Plik testowy (RTF).rtf | Dokument w formacie Rich Text. |
|  | Plik testowy (WordML).xml | Dokument Microsoft Word 2003 WordprocessingML. |
|  | Plik testowy (HTML).html | Dokument HTML. |
|  | Plik testowy (MHTML).mhtml | Dokument MHTML (archiwum internetowe). |
|  | Plik testowy (Odt).odt | Tekst OpenDocument (OpenOffice Writer). |
|  | Plik testowy (Ott).ott | Szablon dokumentu OpenDocument. |
|  | Plik testowy (DocPreWord60).doc|Dokument Microsoft Word 2.0. |
| Zaszyfrowane dokumenty | Plik testowy (Enc).doc | Zaszyfrowany dokument Microsoft Word 95/6.0 lub Microsoft Word 97 – 2003. |
|  | Plik testowy (Enc).docx | Zaszyfrowany dokument Office Open XML WordprocessingML. |
| Nieobsługiwane formaty plików | Plik testowy (JPG).jpg | Plik obrazu JPEG. |

