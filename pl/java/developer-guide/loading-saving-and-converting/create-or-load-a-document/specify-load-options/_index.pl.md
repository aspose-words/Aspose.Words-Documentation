---
title: Podaj opcje obciążenia w Java
second_title: Aspose.Words zamiast Java
articleTitle: Określ opcje obciążenia
linktitle: Określ opcje obciążenia
description: "Ustaw zaawansowane właściwości podczas wczytywania dokumentu Java uzyskanie dokładniejszej kontroli procesu."
type: docs
weight: 10
url: /pl/java/specify-load-options/
timestamp: 2024-01-27-14-07-04
---

Podczas wczytywania dokumentu można ustawić pewne zaawansowane właściwości. Aspose.Words zapewnia Państwu [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) klasa, która umożliwia bardziej precyzyjne sterowanie procesem obciążenia. Niektóre formaty obciążenia mają odpowiednią klasę, która posiada opcje obciążenia dla tego formatu obciążenia, na przykład, istnieje [PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/) do wczytania do formatu PDF lub [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) do załadunku do TXT. Ten artykuł zawiera przykłady pracy z opcjami **LoadOptions** Klasa.

## Ustaw Microsoft Word Wersja do zmiany wyglądu

Różne wersje Microsoft Word aplikacja może wyświetlać dokumenty w inny sposób. Na przykład, istnieje dobrze znany problem z dokumentami OOXML, takich jak DOCX lub DOTX produkowany przy użyciu WPS Office. W takich przypadkach istotne elementy znakowania dokumentów mogą być brakujące lub mogą być interpretowane inaczej powodując Microsoft Word 2019, aby pokazać taki dokument inaczej niż Microsoft Word W 2010 roku.

Domyślnie Aspose.Words otwiera dokumenty za pomocą Microsoft Word Przepisy z 2019 r. Jeśli trzeba, aby dokument wczytywania pojawiają się, jak to się stanie w jednym z poprzednich Microsoft Word wersje aplikacji, należy wyraźnie określić żądaną wersję za pomocą [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) Własność **LoadOptions** Klasa.

Poniższy przykład kodu pokazuje jak ustawić Microsoft Word wersja z opcjami obciążenia:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## Ustaw preferencje językowe, aby zmienić wygląd

Szczegóły wyświetlania dokumentu w Microsoft Word zależy nie tylko od wersji aplikacji i **MswVersion** wartość właściwości, ale także na ustawieniach językowych. Microsoft Word mogą wyświetlać różne dokumenty w zależności od ustawień okna dialogowego "Preferencje językowe", które można znaleźć w "Plik → Opcje → Language". Korzystanie z tego okna dialogowego użytkownik może wybrać na przykład język pierwotny, języki sprawdzające, języki wyświetlające itp. Aspose.Words zapewnia [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences) właściwość jako odpowiednik tego okna dialogowego. Jeśli Aspose.Words wyjście różni się od Microsoft Word wyjście, ustawić odpowiednią wartość dla **EditingLanguage** - to może poprawić dokument wyjściowy.

Poniższy przykład kodu pokazuje jak ustawić japoński jako **EditingLanguage**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## Stosowanie WarningCallback do kontroli problemów Podczas wczytywania dokumentu

Niektóre dokumenty mogą być uszkodzone, zawierają nieprawidłowe wpisy lub nie mają funkcji obsługiwanych przez Aspose.Words. Jeśli chcesz wiedzieć o problemach, które wystąpiły podczas wczytywania dokumentu, Aspose.Words zapewnia [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) interfejs.

Poniższy przykład kodu pokazuje wdrożenie **IWarningCallback** interfejs:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

Aby uzyskać informacje na temat wszystkich problemów w czasie obciążenia, należy użyć [WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback) nieruchomości.

Poniższy przykład kodu pokazuje jak korzystać z tej właściwości:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## Użyj ResourceLoading Zawołanie do kontroli zewnętrznych zasobów

Dokument może zawierać zewnętrzne linki do obrazów znajdujących się gdzieś na lokalnym dysku, sieci lub Internecie. Aspose.Words automatycznie ładuje takie obrazy do dokumentu, ale są sytuacje, w których proces ten wymaga kontroli. Na przykład, aby zdecydować, czy naprawdę musimy załadować pewien obraz, czy może go pominąć. W [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback) opcja obciążenia pozwala kontrolować to.

Poniższy przykład kodu pokazuje wdrożenie [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/) interfejs:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

Poniższy przykład kodu pokazuje jak używać **ResourceLoadingCallback** nieruchomość:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## Użyj folderu Tempus, aby uniknąć wyjątków pamięci

Aspose.Words obsługuje niezwykle duże dokumenty, które mają tysiące stron pełnych bogatej treści. Ładowanie takich dokumentów może wymagać dużej ilości pamięci RAM. W procesie załadunku, Aspose.Words potrzebuje jeszcze więcej pamięci do przechowywania tymczasowych struktur używanych do przetwarzania dokumentu.

Jeśli masz problem z wyjątkiem Out of Memory podczas wczytywania dokumentu, spróbuj użyć [TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder) nieruchomości. W tym przypadku, Aspose.Words będzie przechowywać niektóre dane w plikach tymczasowych zamiast pamięci, a to może pomóc uniknąć takiego wyjątku.

Poniższy przykład kodu pokazuje jak ustawić **TempFolder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## Ustaw kodowanie Wyraźnie

Większość nowoczesnych formatów dokumentów przechowuje zawartość w Unicode i nie wymagają specjalnej obsługi. Z drugiej strony, nadal istnieje wiele dokumentów, które używają kodowania pre- Unicode i czasami albo pomijają informacje kodowania lub nawet nie wspierają kodowania informacji z natury. Aspose.Words próbuje automatycznie wykrywać kodowanie, ale w rzadkich przypadkach może być konieczne użycie kodowania innego niż wykryte przez nasz algorytm rozpoznawania kodowania. W tym przypadku należy użyć [Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding) właściwość do uzyskania lub ustawienia kodowania.

Poniższy przykład kodu pokazuje, jak ustawić kodowanie w celu obejścia automatycznie wybranego kodowania:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## Wczytaj zaszyfrowane dokumenty

Możesz załadować Dokumenty słowne zaszyfrowane hasłem. Aby to zrobić, użyj specjalnego przeciążenia konstruktora, który akceptuje [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) obiekt. Ten obiekt zawiera [Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword) właściwość, która określa ciąg haseł.

Poniższy przykład kodu pokazuje jak załadować dokument zaszyfrowany hasłem:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

Jeśli nie wiesz wcześniej, czy plik jest zaszyfrowany, możesz użyć [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/) class, która zapewnia metody użyteczności do pracy z formatami plików, takie jak wykrywanie formatu plików lub konwertowanie rozszerzeń plików do / z notowań formatów plików. Aby wykryć, czy dokument jest zaszyfrowany i wymaga hasła, aby go otworzyć, należy użyć [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) nieruchomości.

Poniższy przykład kodu pokazuje jak zweryfikować OpenDocument albo jest zaszyfrowany, albo nie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
