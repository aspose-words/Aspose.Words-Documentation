---
title: Praca z dokumentem tekstowym w formacie C#
second_title: Aspose.Words dla .NET
articleTitle: Praca z dokumentem tekstowym
linktitle: Praca z dokumentem tekstowym
description: "Zaawansowane przetwarzanie dokumentów TXT, listy, BiDi, nagłówki/stopki, przy użyciu C#."
type: docs
weight: 430
url: /pl/net/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

W tym artykule dowiemy się, jakie opcje mogą się przydać podczas pracy z dokumentem tekstowym poprzez Aspose.Words. Należy pamiętać, że nie jest to pełna lista dostępnych opcji, a jedynie przykład pracy z niektórymi z nich.

## Dodaj znaki dwukierunkowe

Możesz użyć właściwości [AddBidiMarks](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/addbidimarks/), aby określić, czy dodawać znaki dwukierunkowe przed każdym uruchomieniem BiDi podczas eksportowania w formacie zwykłego tekstu. Aspose.Words wstawia znak Unicode "ZNAK OD PRAWEJ DO LEWEJ" (U+200F) przed każdym dwukierunkowym przebiegiem w tekście. Ta opcja odpowiada opcji "Dodaj znaki dwukierunkowe" w oknie dialogowym Konwersja pliku MS Word podczas eksportu do formatu zwykłego tekstu. Należy pamiętać, że pojawia się on w dialogu tylko wtedy, gdy w MS Word dodano którykolwiek z arabskich lub hebrajskich języków edycji.

Poniższy przykład kodu pokazuje, jak używać właściwości **AddBidiMarks**. Domyślna wartość tej właściwości to *false*:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-AddBidiMarks.cs" >}}

## Rozpoznaj elementy listy podczas ładowania TXT

Aspose.Words może importować elementy listy z pliku tekstowego jako numery list lub zwykły tekst w swoim modelu obiektowym dokumentu. Właściwość [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detectnumberingwithwhitespaces/) pozwala określić sposób rozpoznawania numerowanych elementów listy, gdy dokument jest importowany z formatu zwykłego tekstu:

* Jeśli ta opcja jest ustawiona na *true*, białe znaki są również używane jako ograniczniki numerów list: algorytm rozpoznawania list dla numeracji w stylu arabskim (1., 1.1.2.) używa zarówno białych znaków, jak i symboli kropki (.").

* Jeśli ta opcja jest ustawiona na *false*, algorytm rozpoznawania list wykrywa akapity listy, gdy numery listy kończą się kropką, prawym nawiasem lub symbolami punktorów (takimi jak "•", "*", "-" lub "o").

Poniższy przykład kodu pokazuje, jak używać tej właściwości:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DetectNumberingWithWhitespaces.cs" >}}

## Obsługuj spacje początkowe i końcowe podczas ładowania TXT

Możesz kontrolować sposób obsługi spacji początkowych i końcowych podczas ładowania pliku TXT. Spacje początkowe można przyciąć, zachować lub przekształcić w wcięcie, a spacje końcowe można przyciąć lub zachować.

Poniższy przykład kodu pokazuje, jak przyciąć spacje początkowe i końcowe podczas importowania pliku TXT:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-HandleSpacesOptions.cs" >}}

## Wykryj kierunek tekstu dokumentu

Aspose.Words udostępnia właściwość [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/documentdirection/) w klasie [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) do wykrywania kierunku tekstu (RTL/LTR) w dokumencie. Ta właściwość ustawia lub pobiera wskazówki dotyczące tekstu dokumentu podane w wyliczeniu [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/documentdirection/). Domyślną wartością jest *right*.

Poniższy przykład kodu pokazuje, jak wykryć kierunek tekstu w dokumencie podczas importowania pliku TXT:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DocumentTextDirection.cs" >}}

## Eksportuj nagłówek i stopkę w wyjściowym formacie TXT

Jeśli chcesz wyeksportować nagłówek i stopkę w wyjściowym dokumencie TXT, możesz użyć właściwości [ExportHeadersFootersMode](https://reference.aspose.com/words/net/aspose.words.saving/exportheadersfootersmode/). Ta właściwość określa sposób, w jaki nagłówki i stopki są eksportowane do formatu zwykłego tekstu.

Poniższy przykład kodu pokazuje, jak eksportować nagłówki i stopki do formatu zwykłego tekstu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-ExportHeadersFootersMode.cs" >}}

## Eksportuj wcięcie listy w wyjściowym formacie TXT

Aspose.Words wprowadził klasę [TxtListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtlistindentation/), która umożliwia określenie sposobu wcięcia poziomów listy podczas eksportowania do formatu zwykłego tekstu. Podczas pracy z formatem [TxtSaveOption](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/) dostępna jest właściwość [ListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/listindentation/), która umożliwia określenie znaku używanego do wcięcia poziomów listy oraz liczbę znaków określającą, ile znaków ma być używanych jako wcięcie na jeden poziom listy.

Domyślną wartością właściwości znaku jest "\0", co oznacza, że nie ma wcięcia. W przypadku właściwości count wartość domyślna to 0, co oznacza brak wcięć.

### Korzystanie ze znaku tabulacji

Poniższy przykład kodu pokazuje, jak eksportować poziomy list przy użyciu znaków tabulacji:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseTabCharacterPerLevelForListIndentation.cs" >}}

### Używanie znaku spacji

Poniższy przykład kodu pokazuje, jak eksportować poziomy list przy użyciu spacji:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseSpaceCharacterPerLevelForListIndentation.cs" >}}

### Używanie domyślnego wcięcia

Poniższy przykład kodu pokazuje, jak eksportować poziomy list przy użyciu domyślnych wcięć:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DefaultLevelForListIndentation.cs" >}}
