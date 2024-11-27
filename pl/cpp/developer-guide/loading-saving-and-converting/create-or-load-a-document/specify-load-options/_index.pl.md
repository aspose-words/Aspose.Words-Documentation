---
title: Określ opcje ładowania w C++
second_title: Aspose.Words dla C++
articleTitle: Określ Opcje Ładowania
linktitle: Określ Opcje Ładowania
description: "Dokładniej kontroluj proces ładowania."
type: docs
weight: 10
url: /pl/cpp/specify-load-options/
timestamp: 2024-01-30-16-22-34
---

Podczas ładowania dokumentu możesz ustawić niektóre zaawansowane właściwości. Aspose.Words zapewnia klasę [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/), która umożliwia bardziej precyzyjną kontrolę procesu ładowania. Niektóre formaty ładowania mają odpowiednią klasę, która przechowuje opcje ładowania dla tego formatu ładowania, na przykład istnieje [PdfLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/pdfloadoptions/) do ładowania do formatu PDF lub [TxtLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/) do ładowania do TXT. Ten artykuł zawiera przykłady pracy z opcjami klasy **LoadOptions**.

## Ustaw wersję Microsoft Word, aby zmienić wygląd

Różne wersje aplikacji Microsoft Word mogą wyświetlać dokumenty obojętnie. Na przykład istnieje dobrze znany problem z dokumentami OOXML, takimi jak DOCX lub DOTX, utworzonymi przy użyciu WPS Office. W takim przypadku istotne elementy znaczników dokumentu mogą brakować lub mogą być interpretowane inaczej, powodując, że Microsoft Word 2019 pokazuje taki dokument inaczej niż Microsoft Word 2010.

Domyślnie Aspose.Words otwiera dokumenty przy użyciu reguł Microsoft Word 2019. Jeśli chcesz, aby Ładowanie dokumentu wyglądało tak, jak miało to miejsce w jednej z poprzednich wersji aplikacji Microsoft Word, powinieneś jawnie określić żądaną wersję za pomocą właściwości [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/) klasy **LoadOptions**.

Poniższy przykład kodu pokazuje, jak ustawić wersję Microsoft Word z opcjami ładowania:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetMSWordVersion.cpp" >}}

## Ustaw preferencje językowe, aby zmienić wygląd

Szczegóły wyświetlania dokumentu w Microsoft Word zależą nie tylko od wersji aplikacji i wartości właściwości **MswVersion**, ale także od ustawień języka. Microsoft Word może wyświetlać dokumenty w różny sposób w zależności od ustawień okna dialogowego "Preferencje języka pakietu Office", które można znaleźć w "Plik → Opcje → Język". Za pomocą tego okna dialogowego użytkownik może wybrać na przykład język podstawowy, języki sprawdzania, języki wyświetlania i tak dalej. Aspose.Words zapewnia Właściwość [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_languagepreferences/) jako odpowiednik tego okna dialogowego. Jeśli Wyjście Aspose.Words różni się od wyjścia Microsoft Word, ustaw odpowiednią wartość dla **EditingLanguage** – może to poprawić dokument wyjściowy.

Poniższy przykład kodu pokazuje, jak ustawić Japoński jako **EditingLanguage**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

## Użyj WarningCallback, aby kontrolować problemy podczas ładowania dokumentu

Niektóre dokumenty mogą być uszkodzone, zawierać nieprawidłowe wpisy lub mieć funkcje, które nie są obecnie obsługiwane przez Aspose.Words. Jeśli chcesz wiedzieć o problemach, które wystąpiły podczas ładowania dokumentu, Aspose.Words udostępnia interfejs [IWarningCallback](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/).

Poniższy przykład kodu pokazuje implementację interfejsu **IWarningCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-DocumentLoadingWarningCallback.cpp" >}}

Aby uzyskać informacje o wszystkich problemach w czasie ładowania, użyj właściwości `WarningCallback`.

Poniższy przykład kodu pokazuje, jak korzystać z tej właściwości:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsWarningCallback.cpp" >}}

## Użyj ResourceLoadingCallback, aby kontrolować ładowanie zasobów zewnętrznych

Dokument może zawierać zewnętrzne łącza do obrazów znajdujących się gdzieś na dysku lokalnym, sieci lub Internecie. Aspose.Words automatycznie ładuje takie obrazy do dokumentu, ale zdarzają się sytuacje, w których proces ten wymaga kontroli. Na przykład, aby zdecydować, czy naprawdę musimy załadować określony obraz, czy może go pominąć. Opcja ładowania ResourceLoadingCallback Pozwala to kontrolować.

Poniższy przykład kodu pokazuje implementację interfejsu IResourceLoadingCallback:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-HtmlLinkedResourceLoadingCallback.cpp" >}}

Poniższy przykład kodu pokazuje, jak używać właściwości **ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsResourceLoadingCallback.cpp" >}}

## Użyj TempFolder, aby uniknąć wyjątku pamięci

Aspose.Words obsługuje bardzo duże dokumenty, które mają tysiące stron pełnych bogatej zawartości. Ładowanie takich dokumentów może wymagać dużo RAM. W procesie ładowania Aspose.Words potrzebuje jeszcze więcej pamięci do przechowywania tymczasowych struktur używanych do analizowania dokumentu.

Jeśli masz problem z wyjątkiem braku pamięci podczas ładowania dokumentu, spróbuj użyć właściwości [TempFolder](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_tempfolder/). W takim przypadku Aspose.Words będzie przechowywać niektóre dane w plikach tymczasowych zamiast w pamięci, co może pomóc uniknąć takiego wyjątku.

Poniższy przykład kodu pokazuje, jak ustawić **TempFolder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetTempFolder.cpp" >}}

## Ustaw kodowanie jawnie

Większość nowoczesnych formatów dokumentów przechowuje ich zawartość w Unicode i nie wymaga specjalnej obsługi. Z drugiej strony nadal istnieje wiele dokumentów, które używają kodowania przed Unicode i czasami albo brakuje informacji o kodowaniu, albo nawet nie obsługują informacji o kodowaniu z natury. Aspose.Words domyślnie próbuje automatycznie wykryć odpowiednie kodowanie, ale w rzadkich przypadkach może być konieczne użycie kodowania innego niż wykryte przez nasz algorytm rozpoznawania kodowania. W takim przypadku użyj właściwości [Encoding](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_encoding/), aby uzyskać lub ustawić kodowanie.

Poniższy przykład kodu pokazuje, jak ustawić kodowanie tak, aby zastępowało automatycznie wybrane kodowanie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsEncoding.cpp" >}}

## Załaduj Zaszyfrowane Dokumenty

Możesz załadować Word dokumenty zaszyfrowane hasłem. Aby to zrobić, użyj specjalnego przeciążenia konstruktora, który akceptuje obiekt [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/). Ten obiekt zawiera właściwość [Password](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_password/), która określa ciąg hasła.

Poniższy przykład kodu pokazuje, jak załadować dokument zaszyfrowany hasłem:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-OpenEncryptedDocument-OpenEncryptedDocument.cpp" >}}

Jeśli nie wiesz z góry, czy plik jest zaszyfrowany, możesz użyć klasy [FileFormatUtil](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/), która zapewnia metody narzędziowe do pracy z formatami plików, takie jak wykrywanie formatu pliku lub konwertowanie rozszerzeń plików do/z wyliczeń formatów plików. Aby wykryć, czy dokument jest zaszyfrowany i wymaga hasła do jego otwarcia, użyj właściwości `IsEncrypted`.

Poniższy przykład kodu pokazuje, jak zweryfikować OpenDocument, czy jest zaszyfrowany, czy nie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-VerifyODTdocument.cpp" >}}
