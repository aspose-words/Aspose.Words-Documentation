---
title: Praca z dokumentem tekstowym w Java
second_title: Aspose.Words zamiast Java
articleTitle: Praca z dokumentem tekstowym
linktitle: Praca z dokumentem tekstowym
description: "Zaawansowane przetwarzanie dokumentów TXT, listy, BiDi, nagłówki / stopki, za pomocą Java."
type: docs
weight: 430
url: /pl/java/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

W tym artykule dowiemy się, jakie opcje mogą być przydatne do pracy z dokumentem tekstowym poprzez Aspose.Words. Należy pamiętać, że nie jest to pełna lista dostępnych opcji, ale tylko przykład pracy z niektórymi z nich.

## Dodaj dwukierunkowy Znaki

Można użyć [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks) właściwość do określenia, czy należy dodać znaki dwukierunkowe przed każdym BiDi uruchomić podczas eksportu w zwykłym formacie tekstowym. Aspose.Words Wstawia Unicode Character 'RIGHT- TO- LEFT MARK' (U + 200F) przed każdym dwukierunkowym uruchomieniem w tekście. Ta opcja odpowiada opcji "Dodaj znaki dwukierunkowe" w oknie dialogowym konwersji plików MS Word przy eksporcie do zwykłego formatu tekstu. Zauważ, że pojawia się w oknie dialogowym tylko wtedy, gdy jeden z arabskich lub hebrajskich języków edycyjnych jest dodawany do MS Word.

Poniższy przykład kodu pokazuje jak używać `TxtSaveOptions.AddBidiMarks` nieruchomości. Domyślna wartość tej właściwości jest *true*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## Rozpoznawanie pozycji listy podczas wczytywania TXT

Aspose.Words może importować pozycję listy pliku tekstowego jako numery listy lub zwykły tekst w modelu obiektu dokumentu. W [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) właściwość pozwala określić sposób rozpoznawania ponumerowanych pozycji listy, gdy dokument jest importowany z zwykłego formatu tekstowego:

* Jeśli ta opcja jest ustawiona na *true*, Whitespaces są również używane jako znaczniki numerów listy: algorytm rozpoznawania listy dla arabskiej numeracji stylów (1., 1.1.2.) używa zarówno białych spacji jak i symboli dot (".").
* Jeśli ta opcja jest ustawiona na *false*, algorytm rozpoznawania list wykrywa akapity listy, kiedy numery listy kończą się albo kropką, prawym uchwytem lub symbolami pocisków (takimi jak "•", "*", "-" lub "o").

Poniższy przykład kodu pokazuje jak korzystać z tej właściwości:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## Prowadzenie i śledzenie przestrzeni podczas wczytywania TXT

Podczas wczytywania plików TXT można kontrolować sposób obsługi pomieszczeń prowadzących i śledzących. Pomieszczenia wiodące mogą być przycinane, konserwowane lub zamieniane na tiret, a przestrzenie prowadzące mogą być przycinane lub konserwowane.

Przykład kodu podany poniżej pokazuje jak przycinać miejsca prowadzące i śledzące podczas importowania pliku TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## Wykryj dokument Kierunek tekstu

Aspose.Words zapewnia [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) nieruchomości w [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) klasa do wykrywania kierunku tekstu (RTL / LTR) w dokumencie. Ta właściwość ustawia lub otrzymuje wskazówki tekstowe dokumentu podane w [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/) wyliczenie. Domyślna wartość jest od lewej do prawej.

Poniższy przykład kodu pokazuje, jak wykryć kierunek tekstu dokumentu podczas importu pliku TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## Eksportuj nagłówek i footer w pliku wyjściowym TXT

Jeśli chcesz eksportować nagłówek i stopkę w dokumencie wyjściowym TXT, możesz użyć [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode) nieruchomości. Ta właściwość określa sposób, w jaki nagłówki i stopki są eksportowane do zwykłego formatu tekstu.

Poniższy przykład kodu pokazuje, jak eksportować nagłówki i stopy do zwykłego formatu tekstu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## Wcięcie listy eksportu w programie wyjściowym TXT

Aspose.Words wprowadzone [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/) klasa, która pozwala określić, w jaki sposób poziomy listy są wpisywane podczas eksportu do zwykłego formatu tekstu. Podczas pracy z [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/), do [ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation) właściwość jest dostarczana w celu określenia znaku, który ma być używany do indenting list levels i liczenia określających, ile znaków należy użyć jako wcięcia na jednym poziomie listy.

Domyślna wartość właściwości znaku '\ 0' wskazuje, że nie ma wcięć. Dla właściwości count domyślna wartość to 0, co oznacza brak wcięć.

### Używanie znaku Tab

Poniższy przykład kodu pokazuje, jak eksportować poziomy listy za pomocą znaków zakładki:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### Używanie spacji

Poniższy przykład kodu pokazuje, jak eksportować poziomy listy za pomocą znaków spacji:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### Korzystanie z domyślnego wcięcia

Poniższy przykład kodu pokazuje jak eksportować poziomy listy za pomocą domyślnej wcięć:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
