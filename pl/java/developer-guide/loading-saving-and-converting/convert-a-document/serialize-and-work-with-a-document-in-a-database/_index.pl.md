---
title: Serializacja i praca z dokumentem w bazie danych
second_title: Aspose.Words zamiast Java
articleTitle: Serializacja i praca z dokumentem w bazie danych
linktitle: Serializacja i praca z dokumentem w bazie danych
description: "Konwersja dokumentu do tablicy bajtów do pracy z tym dokumentem w bazie danych. Można przechowywać i pobierać dokument do i z bazy danych za pomocą Java."
type: docs
weight: 40
url: /pl/java/serialize-and-work-with-a-document-in-a-database/
---

Jednym z zadań, które należy wykonać podczas pracy z dokumentami jest przechowywanie i pobieranie **Document** obiektów do i z bazy danych. Na przykład, byłoby to konieczne, gdyby wdrażano jakikolwiek rodzaj systemu zarządzania treścią. Wszystkie poprzednie wersje dokumentów muszą być przechowywane w systemie baz danych. Możliwość przechowywania dokumentów w bazie danych jest również niezwykle przydatna, gdy aplikacja świadczy usługi oparte na sieci.

Aspose.Words zapewnia możliwość przekształcenia dokumentu w tablicę bajtów do późniejszej pracy z tym dokumentem w bazie danych.

## Konwertuj dokument do bajtowej tablicy

Aby przechowywać dokument w bazie danych lub przygotować dokument do transmisji w sieci, często konieczne jest serializowanie dokumentu, aby otrzymać tablicę bajtów.

Aby serializować [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) obiekt w Aspose.Words:

1. Zachowaj to dla **MemoryStream** stosowania [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) przeciążenie metody **Document** Klasa.
1. Zadzwoń **ToArray** metoda, która zwraca tablicę bajtów przedstawiającą dokument w formie bajtów.

Stopnie powyżej można odwrócić, aby załadować bajty z powrotem do **Document** obiekt.

{{% alert color="primary" %}}

Wybrany format zapisu jest ważny, aby zapewnić zachowanie najwyższej wierności podczas zapisywania i przeładowania do **Document** obiekt. Z tego powodu zaleca się użycie serii formatów plików OOXML.

{{% /alert %}}

Przykład poniżej pokazuje jak serializować **Document** obiekt do uzyskania tablicy bajtów, a następnie jak odserializować tablicę bajtów, aby uzyskać **Document** obiekt ponownie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Przechowywanie, czytanie i usuwanie dokumentu w bazie danych

Ta sekcja pokazuje, jak zapisać dokument w bazie danych, a następnie załadować go z powrotem do `Document` obiekt do pracy z nim. Dla uproszczenia, nazwa pliku jest kluczem do przechowywania i pobierania dokumentów z bazy danych. Baza danych zawiera dwie kolumny. Pierwsza kolumna "FileName" jest przechowywana jako String i służy do identyfikacji dokumentów. Druga kolumna "FileContent" jest przechowywana jako `BLOB` obiekt, który przechowuje obiekt dokumentu w formie bajtu.

Poniższy przykład kodu pokazuje jak skonfigurować połączenie z bazą danych i wykonać polecenia:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

W tym przykładzie używamy bazy danych MySQL do przechowywania Aspose.Words dokument.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak zapisać dokument do bazy danych, a następnie ponownie przeczytać ten sam dokument i ostatecznie usunąć zapis zawierający dokument z bazy danych:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### Zapisz dokument do bazy danych

Aby zapisać dokument w bazie danych przekonwertować ten dokument do tablicy bajtów, jak opisano na początku tego artykułu. Następnie zapisz tę tablicę bajtów do pola bazy danych.

Poniższy przykład kodu pokazuje jak zapisać dokument do określonej bazy danych:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

Określ Komendant String, który jest wyrażeniem SQL, który wykonuje wszystkie prace:

- Aby zapisać dokument do bazy danych, stosuje się polecenie "INSERT INTO" oraz tabelę wraz z wartościami dwóch pól rekordów - FileName i FileContent. Aby uniknąć dodatkowych parametrów, nazwa pliku jest pobierana z **Document** Sam obiekt. W `FileContent` wartość pola jest przypisywana bajtom ze strumienia pamięci, który zawiera binarną reprezentację zapisanego dokumentu.
- Pozostała linia kodu wykonuje polecenie, które przechowuje Aspose.Words dokument w bazie danych.

### Pobieranie dokumentu z bazy danych

Aby pobrać dokument z bazy danych, wybierz zapis zawierający dane dokumentu jako tablicę bajtów. Następnie wczytaj tablicę bajtów z rekordu do **MemoryStream** i utworzyć **Document** obiekt, który załaduje dokument z **MemoryStream**.

Poniższy przykład kodu pokazuje jak pobrać i zwrócić dokument z określonej bazy danych używając nazwy pliku jako klucza do pobrania tego dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

Polecenie SQL "SELECT * FROT" jest używane do pobierania odpowiedniego rekordu na podstawie nazwy pliku.

{{% /alert %}}

### Usuń dokument z bazy danych

Aby usunąć dokument z bazy danych, użyj odpowiedniego polecenia SQL bez żadnych manipulacji na **Document** obiekt.

Poniższy przykład kodu pokazuje jak usunąć dokument z bazy danych, używając nazwy pliku do pobrania rekordu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
