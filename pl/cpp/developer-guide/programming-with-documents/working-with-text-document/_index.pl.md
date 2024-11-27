---
title: Praca z dokumentem tekstowym w C++
second_title: Aspose.Words dla C++
articleTitle: Praca z dokumentem tekstowym
linktitle: Praca z dokumentem tekstowym
description: "Zaawansowane przetwarzanie dokumentów TXT, listy, BiDi, nagłówki / stopka, przy użyciu C++."
type: docs
weight: 430
url: /pl/cpp/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

W tym artykule dowiemy się, jakie opcje mogą być przydatne do pracy z dokumentem tekstowym za pośrednictwem Aspose.Words. Należy pamiętać, że nie jest to pełna lista dostępnych opcji, a jedynie przykład pracy z niektórymi z nich.

## Dodaj Znaki Dwukierunkowe

Możesz użyć właściwości [AddBidiMarks](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_addbidimarks/), aby określić, czy dodawać dwukierunkowe znaki przed każdym uruchomieniem BiDi podczas eksportowania w formacie zwykłego tekstu. Aspose.Words wstawia znak Unicode'RIGHT-TO-LEFT MARK' (U+200F) przed każdym dwukierunkowym przebiegiem w tekście. Ta opcja odpowiada opcji "Dodaj znaki dwukierunkowe" w oknie dialogowym konwersji plików MS Word podczas eksportowania do formatu zwykłego tekstu. Zauważ, że pojawia się w dialogu tylko wtedy, gdy w MS Word zostanie dodany którykolwiek z języków edycji arabskiej lub Hebrajskiej.

Poniższy przykład kodu pokazuje, jak używać właściwości **AddBidiMarks**. Domyślną wartością tej właściwości jest *false*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-AddBidiMarks.cpp" >}}

## Rozpoznaj Elementy Listy Podczas Ładowania TXT

Aspose.Words może importować element listy pliku tekstowego jako numery listy lub zwykły tekst w modelu obiektu dokumentu. Właściwość [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detectnumberingwithwhitespaces/) pozwala określić, w jaki sposób elementy listy numerowanej są rozpoznawane, gdy dokument jest importowany z formatu zwykłego tekstu:

* Jeśli ta opcja jest ustawiona na *true*, białe spacje są również używane jako ograniczniki numerów list: algorytm rozpoznawania listy dla numeracji w stylu arabskim (1., 1.1.2.) używa zarówno białych znaków, jak i symboli kropek (".").
* Jeśli ta opcja jest ustawiona na *false*, algorytm rozpoznawania list wykrywa akapity listy, gdy numery list kończą się kropką, prawym nawiasem lub symbolami punktora (takimi jak "•", "*", "-" lub "o").

Poniższy przykład kodu pokazuje, jak korzystać z tej właściwości:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DetectNumberingWithWhitespaces.cpp" >}}

## Jak obsługiwać spacje wiodące i końcowe podczas ładowania TXT

Możesz kontrolować sposób obsługi spacji wiodących i końcowych podczas ładowania pliku TXT. Wiodące przestrzenie można przyciąć, zachować lub przekształcić w wcięcie, a końcowe przestrzenie można przyciąć lub zachować.

Poniższy przykład kodu pokazuje, jak przyciąć spacje wiodące i końcowe podczas importowania pliku TXT:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-HandleSpacesOptions.cpp" >}}

## Eksportuj nagłówek i stopkę na wyjściu TXT

Jeśli chcesz wyeksportować nagłówek i stopkę w dokumencie output TXT, możesz użyć właściwości [ExportHeadersFootersMode](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptionsbase/get_exportheadersfootersmode/). Ta właściwość określa sposób eksportowania nagłówków i stopek do formatu zwykłego tekstu.

Poniższy przykład kodu pokazuje, jak eksportować nagłówki i stopki do formatu zwykłego tekstu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-ExportHeadersFootersMode.cpp" >}}

## Eksportuj wcięcia listy w danych wyjściowych TXT

Aspose.Words wprowadzono klasę [TxtListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtlistindentation/), która pozwala określić, w jaki sposób poziomy list są wcięte podczas eksportowania do formatu zwykłego tekstu. Podczas pracy z [TxtSaveOption](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/) Właściwość [ListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_listindentation/) służy do określania znaku, który ma być używany do wcięcia poziomów listy i liczenia, określając liczbę znaków, których należy użyć jako wcięcia na jeden poziom listy.

Domyślną wartością właściwości character jest '\0' wskazująca, że nie ma wcięcia. Dla właściwości count wartość domyślna to 0, co oznacza brak wcięcia.

### Używanie Znaku Karty

Poniższy przykład kodu pokazuje, jak eksportować poziomy list za pomocą znaków tabulatora:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseTabCharacterPerLevelForListIndentation.cpp" >}}

### Używanie Znaku Spacji

Poniższy przykład kodu pokazuje, jak eksportować poziomy list za pomocą znaków spacji:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseSpaceCharacterPerLevelForListIndentation.cpp" >}}

### Używanie Domyślnych Wcięć

Poniższy przykład kodu pokazuje, jak eksportować poziomy list przy użyciu domyślnych wcięć:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DefaultLevelForListIndentation.cpp" >}}
