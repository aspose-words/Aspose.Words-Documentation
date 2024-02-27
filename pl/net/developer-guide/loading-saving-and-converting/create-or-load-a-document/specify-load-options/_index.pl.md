---
title: Określ opcje ładowania w C#
second_title: Aspose.Words dla .NET
articleTitle: Określ opcje ładowania
linktitle: Określ opcje ładowania
description: "Dokładniej kontroluj proces ładowania za pomocą C#."
type: docs
weight: 10
url: /pl/net/specify-load-options/
---

Podczas ładowania dokumentu możesz ustawić pewne zaawansowane właściwości. Aspose.Words udostępnia klasę [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/), która pozwala na bardziej precyzyjną kontrolę procesu ładowania. Niektóre formaty ładowania mają odpowiednią klasę, która przechowuje opcje ładowania dla tego formatu ładowania, na przykład istnieje [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) do ładowania do formatu PDF lub [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) do ładowania do TXT. W tym artykule przedstawiono przykłady pracy z opcjami klasy **LoadOptions**.

## Ustaw wersję Microsoft Word, aby zmienić wygląd

Różne wersje aplikacji Microsoft Word mogą wyświetlać dokumenty w różny sposób. Na przykład istnieje dobrze znany problem z dokumentami OOXML, takimi jak DOCX lub DOTX, tworzonymi przy użyciu pakietu WPS Office. W takim przypadku może brakować istotnych elementów znaczników dokumentu lub mogą one być różnie interpretowane, co powoduje, że Microsoft Word 2019 wyświetla taki dokument inaczej niż Microsoft Word 2010.

Domyślnie Aspose.Words otwiera dokumenty przy użyciu reguł Microsoft Word 2019. Jeśli chcesz, aby ładowanie dokumentu wyglądało tak, jak miałoby to miejsce w jednej z poprzednich wersji aplikacji Microsoft Word, powinieneś jawnie określić żądaną wersję, korzystając z właściwości [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/) klasy **LoadOptions**.

Poniższy przykład kodu pokazuje, jak ustawić wersję Microsoft Word z opcjami ładowania:

{{< gist "aspose-words-gists" "62b066455ff6af0e8727e3fddae47aee" "load-docx-with-msword-version.cs" >}}

## Ustaw preferencje językowe, aby zmienić wygląd

Szczegóły wyświetlania dokumentu w Microsoft Word zależą nie tylko od wersji aplikacji i wartości właściwości **MswVersion**, ale także od ustawień języka. Microsoft Word może wyświetlać dokumenty w różny sposób, w zależności od ustawień okna dialogowego "Preferencje językowe pakietu Office", które można znaleźć w "Plik → Opcje → Język". Za pomocą tego okna dialogowego użytkownik może wybrać na przykład język podstawowy, języki sprawdzające, języki wyświetlania i tak dalej. Aspose.Words udostępnia właściwość [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/) jako odpowiednik tego okna dialogowego. Jeśli wynik Aspose.Words różni się od wyniku Microsoft Word, ustaw odpowiednią wartość dla **EditingLanguage** – może to poprawić dokument wyjściowy.

Poniższy przykład kodu pokazuje, jak ustawić język japoński jako **EditingLanguage**:

{{< gist "aspose-words-gists" "5d49772a182a61eac0dcb9c13c98bc6e" "load-docx-with-japanese-as-editing-language.cs" >}}

## Użyj WarningCallback, aby kontrolować problemy podczas ładowania dokumentu

Niektóre dokumenty mogą być uszkodzone, zawierać nieprawidłowe wpisy lub zawierać funkcje nieobsługiwane obecnie przez Aspose.Words. Jeśli chcesz wiedzieć o problemach, które wystąpiły podczas ładowania dokumentu, Aspose.Words udostępnia interfejs [IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/).

Poniższy przykładowy kod ilustruje implementację interfejsu **IWarningCallback**:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "document-loading-warning-callback.cs" >}}

Aby uzyskać informacje o wszystkich problemach przez cały czas ładowania, użyj właściwości [WarningCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/warningcallback/).

Poniższy przykład kodu pokazuje, jak używać tej właściwości:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "load-docx-with-warning-callback.cs" >}}

## Użyj ResourceLoadingCallback, aby kontrolować ładowanie zasobów zewnętrznych

Dokument może zawierać zewnętrzne łącza do obrazów znajdujących się gdzieś na dysku lokalnym, w sieci lub w Internecie. Aspose.Words automatycznie ładuje takie obrazy do dokumentu, jednak zdarzają się sytuacje, gdy proces ten wymaga kontroli. Na przykład, aby zdecydować, czy naprawdę musimy załadować dany obraz, czy może go pominąć. Opcja ładowania [ResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/resourceloadingcallback/) pozwala to kontrolować.

Poniższy przykładowy kod ilustruje implementację interfejsu [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/):

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "html-linked-resource-loading-callback.cs" >}}

Poniższy przykład kodu pokazuje, jak używać właściwości **ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "load-html-with-resource-loading-callback.cs" >}}

## Użyj TempFolder, aby uniknąć wyjątku pamięci

Aspose.Words obsługuje niezwykle duże dokumenty zawierające tysiące stron pełnych bogatej treści. Załadowanie takich dokumentów może wymagać dużej ilości pamięci RAM. W procesie ładowania Aspose.Words potrzebuje jeszcze więcej pamięci do przechowywania tymczasowych struktur używanych do analizowania dokumentu.

Jeśli podczas ładowania dokumentu pojawia się wyjątek Out of Memory, spróbuj użyć właściwości [TempFolder](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/tempfolder/). W takim przypadku Aspose.Words będzie przechowywać niektóre dane w plikach tymczasowych zamiast w pamięci, co może pomóc uniknąć takiego wyjątku.

Poniższy przykład kodu pokazuje, jak ustawić **TempFolder**:

{{< gist "aspose-words-gists" "80fb635124a6afc0e75b9f17d1eab40c" "load-docx-using-temp-folder.cs" >}}

## Ustaw kodowanie jawnie

Większość nowoczesnych formatów dokumentów przechowuje swoją zawartość w formacie Unicode i nie wymaga specjalnej obsługi. Z drugiej strony, nadal istnieje wiele dokumentów, w których zastosowano kodowanie wcześniejsze niż Unicode i czasami albo brakuje w nich informacji o kodowaniu, albo nawet z natury nie obsługują one informacji o kodowaniu. Aspose.Words domyślnie próbuje automatycznie wykryć odpowiednie kodowanie, ale w rzadkich przypadkach może zaistnieć potrzeba użycia kodowania innego niż wykrywane przez nasz algorytm rozpoznawania kodowania. W takim przypadku użyj właściwości [Encoding](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/encoding/), aby uzyskać lub ustawić kodowanie.

Poniższy przykład kodu pokazuje, jak ustawić kodowanie, aby zastąpić automatycznie wybrane kodowanie:

{{< gist "aspose-words-gists" "507181f2c99ba13012c441f1c436d9a7" "load-txt-using-encoding.cs" >}}

## Załaduj zaszyfrowane dokumenty

Możesz ładować dokumenty programu Word zaszyfrowane hasłem. Aby to zrobić, użyj specjalnego przeciążenia konstruktora, który akceptuje obiekt [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/). Obiekt ten zawiera właściwość [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/), która określa ciąg hasła.

Poniższy przykład kodu pokazuje, jak załadować dokument zaszyfrowany hasłem:

{{< gist "aspose-words-gists" "5b929b4208996737657de94443bc2852" "load-encrypted-docx.cs" >}}

Jeśli nie wiesz z góry, czy plik jest zaszyfrowany, możesz skorzystać z klasy [FileFormatUtil](https://reference.aspose.com/words/net/aspose.words/fileformatutil/), która udostępnia metody narzędziowe do pracy z formatami plików, takie jak wykrywanie formatu pliku lub konwertowanie rozszerzeń plików do/z wyliczeń formatu pliku. Aby wykryć, czy dokument jest zaszyfrowany i do jego otwarcia wymagane jest hasło, użyj właściwości [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/).

Poniższy przykład kodu pokazuje, jak sprawdzić, czy OpenDocument jest zaszyfrowany, czy nie:

{{< gist "aspose-words-gists" "935e41f0f59c7d8bd8a082ccc14f6b84" "verify-odt-is-encrypted.cs" >}}
