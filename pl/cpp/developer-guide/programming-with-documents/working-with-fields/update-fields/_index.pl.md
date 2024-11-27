---
title: Zaktualizuj pola w C++
second_title: Aspose.Words dla C++
articleTitle: Zaktualizuj Pola
linktitle: Zaktualizuj Pola
description: "Dowiedz się, jak aktualizować pola w C++. Aktualizuj pola programowo lub użyj automatycznej aktualizacji pól przy użyciu C++ API."
type: docs
weight: 30
url: /pl/cpp/update-fields/
timestamp: 2024-01-27-14-07-04
---

Zazwyczaj pole wstawione do Microsoft Word zawiera już aktualną wartość. Na przykład, jeśli pole jest formułą lub numerem strony, będzie zawierać poprawną obliczoną wartość dla danej wersji dokumentu. Ale jeśli masz aplikację, która generuje lub modyfikuje dokument za pomocą pól, takich jak Scalanie dwóch dokumentów lub wypełnianie go danymi, najlepiej, aby wszystkie pola były przydatne.

## Jak zaktualizować pola

Po załadowaniu dokumentu Aspose.Words naśladuje zachowanie Microsoft Word z opcją automatycznej aktualizacji pól jest wyłączona. Zachowanie można podsumować w następujący sposób:

- po otwarciu / zapisaniu dokumentu pola pozostają nienaruszone
- możesz jawnie zaktualizować wszystkie pola w dokumencie, na przykład odbudować `TOC`, gdy zajdzie taka potrzeba
- podczas renderowania do PDF lub XPS pola związane z numeracją stron w nagłówkach/stopkach są aktualizowane
- po wykonaniu Mail Merge wszystkie pola są aktualizowane automatycznie

### Programowo Aktualizuj Pola

Aby jawnie zaktualizować pola w całym dokumencie, po prostu wywołaj metodę [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/). Aby zaktualizować pola zawarte w części dokumentu, uzyskaj obiekt [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) i wywołaj metodę [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/range/updatefields/). W Aspose.Words możesz uzyskać **Range** dla dowolnego węzła w drzewie dokumentów, takiego jak [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), itp. korzystanie z właściwości [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/).Możesz zaktualizować wynik pojedynczego pola, wywołując metodę [Update](https://reference.aspose.com/words/cpp/aspose.words.fields/field/update/).

### Automatyczna aktualizacja pól związanych ze stroną podczas renderowania

Po wykonaniu konwersji dokumentu do formatu stałej strony, np. do PDF lub XPS, Aspose.Words automatycznie zaktualizuje pola związane z układem strony `PAGE`, `PAGEREF` znajdujące się w nagłówkach/stopkach dokumentu. To zachowanie naśladuje zachowanie Microsoft Word podczas drukowania dokumentu.

Jeśli chcesz zaktualizować wszystkie inne pola w dokumencie, musisz zadzwonić [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/) przed renderowaniem dokumentu.

Poniższy przykład kodu pokazuje, jak zaktualizować wszystkie pola przed renderowaniem dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cpp" >}}

### Automatyczna Aktualizacja Pola Podczas Mail Merge

Po wykonaniu mail merge Wszystkie Pola w dokumencie zostaną automatycznie zaktualizowane. Dzieje się tak, ponieważ Mail Merge jest przypadkiem aktualizacji pola. Program napotyka pole Mail Merge I musi zaktualizować jego wynik, co polega na pobraniu wartości ze źródła danych i wstawieniu jej do pola. Logika jest oczywiście bardziej skomplikowana, na przykład po osiągnięciu końca regionu dokumentu/mail merge, ale są jeszcze dalsze dane do scalenia, wtedy region musi zostać zduplikowany, a nowy zestaw pól zaktualizowany.

## Zaktualizuj Właściwość LastSavedTime Przed Zapisaniem

Możesz użyć właściwości [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatelastsavedtimeproperty/), czy zaktualizować odpowiednią wbudowaną właściwość dokumentu [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) podczas zapisywania dokumentu.

Poniższy przykład kodu pokazuje, jak zaktualizować tę właściwość:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cpp" >}}


