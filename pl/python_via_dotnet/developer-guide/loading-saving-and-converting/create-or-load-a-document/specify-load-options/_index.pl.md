---
title: Określ opcje ładowania w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Określ opcje ładowania
linktitle: Określ opcje ładowania
description: "Dokładniej kontroluj proces ładowania za pomocą Python."
type: docs
weight: 10
url: /pl/python-net/specify-load-options/
timestamp: 2024-01-27-14-07-04
---

Podczas ładowania dokumentu możesz ustawić pewne zaawansowane właściwości. Aspose.Words udostępnia klasę [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/), która pozwala na bardziej precyzyjną kontrolę procesu ładowania. Niektóre formaty ładowania mają odpowiednią klasę, która przechowuje opcje ładowania dla tego formatu ładowania, na przykład istnieje [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) do ładowania do formatu PDF lub [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) do ładowania do TXT. W tym artykule przedstawiono przykłady pracy z opcjami klasy [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/).

## Ustaw wersję Microsoft Word, aby zmienić wygląd

Różne wersje aplikacji Microsoft Word mogą wyświetlać dokumenty w różny sposób. Na przykład istnieje dobrze znany problem z dokumentami OOXML, takimi jak DOCX lub DOTX, tworzonymi przy użyciu pakietu WPS Office. W takim przypadku może brakować istotnych elementów znaczników dokumentu lub mogą one być różnie interpretowane, co powoduje, że Microsoft Word 2019 wyświetla taki dokument inaczej niż Microsoft Word 2010.

Domyślnie Aspose.Words otwiera dokumenty przy użyciu reguł Microsoft Word 2019. Jeśli chcesz, aby ładowanie dokumentu wyglądało tak, jak miałoby to miejsce w jednej z poprzednich wersji aplikacji Microsoft Word, powinieneś jawnie określić żądaną wersję, korzystając z właściwości [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) klasy [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/).

Poniższy przykład kodu pokazuje, jak ustawić wersję Microsoft Word z opcjami ładowania:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-SetMSWordVersion.py" >}}

## Ustaw preferencje językowe, aby zmienić wygląd

Szczegóły wyświetlania dokumentu w Microsoft Word zależą nie tylko od wersji aplikacji i wartości właściwości [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/), ale także od ustawień języka. Microsoft Word może wyświetlać dokumenty w różny sposób, w zależności od ustawień okna dialogowego "Preferencje językowe pakietu Office", które można znaleźć w "Plik → Opcje → Język". Za pomocą tego okna dialogowego użytkownik może wybrać na przykład język podstawowy, języki sprawdzające, języki wyświetlania i tak dalej. Aspose.Words udostępnia właściwość [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) jako odpowiednik tego okna dialogowego. Jeśli wynik Aspose.Words różni się od wyniku Microsoft Word, ustaw odpowiednią wartość dla [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/) – może to poprawić dokument wyjściowy.

Poniższy przykład kodu pokazuje, jak ustawić język japoński jako [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

## Użyj TempFolder, aby uniknąć wyjątku pamięci

Aspose.Words obsługuje niezwykle duże dokumenty zawierające tysiące stron pełnych bogatej treści. Załadowanie takich dokumentów może wymagać dużej ilości pamięci RAM. W procesie ładowania Aspose.Words potrzebuje jeszcze więcej pamięci do przechowywania tymczasowych struktur używanych do analizowania dokumentu.

Jeśli podczas ładowania dokumentu pojawia się wyjątek Out of Memory, spróbuj użyć właściwości [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/). W takim przypadku Aspose.Words będzie przechowywać niektóre dane w plikach tymczasowych zamiast w pamięci, co może pomóc uniknąć takiego wyjątku.

Poniższy przykład kodu pokazuje, jak ustawić [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UseTempFolder.py" >}}

## Ustaw kodowanie jawnie

Większość nowoczesnych formatów dokumentów przechowuje swoją zawartość w formacie Unicode i nie wymaga specjalnej obsługi. Z drugiej strony, nadal istnieje wiele dokumentów, w których zastosowano kodowanie wcześniejsze niż Unicode i czasami albo brakuje w nich informacji o kodowaniu, albo nawet z natury nie obsługują one informacji o kodowaniu. Aspose.Words domyślnie próbuje automatycznie wykryć odpowiednie kodowanie, ale w rzadkich przypadkach może zaistnieć potrzeba użycia kodowania innego niż wykrywane przez nasz algorytm rozpoznawania kodowania. W takim przypadku użyj właściwości [encoding](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/encoding/), aby uzyskać lub ustawić kodowanie.

Poniższy przykład kodu pokazuje, jak ustawić kodowanie, aby zastąpić automatycznie wybrane kodowanie:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-LoadWithEncoding.py" >}}

## Załaduj zaszyfrowane dokumenty

Możesz ładować dokumenty programu Word zaszyfrowane hasłem. Aby to zrobić, użyj specjalnego przeciążenia konstruktora, który akceptuje obiekt [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/). Obiekt ten zawiera właściwość [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/), która określa ciąg hasła.

Poniższy przykład kodu pokazuje, jak załadować dokument zaszyfrowany hasłem:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-OpenEncryptedDocument.py" >}}

Jeśli nie wiesz z góry, czy plik jest zaszyfrowany, możesz skorzystać z klasy [FileFormatUtil](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/), która udostępnia metody narzędziowe do pracy z formatami plików, takie jak wykrywanie formatu pliku lub konwertowanie rozszerzeń plików do/z wyliczeń formatu pliku. Aby wykryć, czy dokument jest zaszyfrowany i do jego otwarcia wymagane jest hasło, użyj właściwości [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/).

Poniższy przykład kodu pokazuje, jak sprawdzić, czy dokument jest zaszyfrowany, czy nie:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-VerifyEncryptedDocument.py" >}}
