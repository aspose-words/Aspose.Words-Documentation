---
title: Serializacja dokumentu w bazie danych
second_title: Aspose.Words dla .NET
articleTitle: Serializacja i praca z dokumentem w bazie danych
linktitle: Serializacja i praca z dokumentem w bazie danych
description: "Konwertuj dokument na tablicę bajtów do pracy z tym dokumentem w bazie danych za pomocą C#. Możesz przechowywać i pobierać dokumenty do i z bazy danych."
type: docs
weight: 10
url: /pl/net/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-07-09-19-00-42
---

Jednym z zadań, które możesz wykonać podczas pracy z dokumentami, jest przechowywanie i pobieranie obiektów **Document** do i z bazy danych. Na przykład byłoby to konieczne, jeśli wdrażasz dowolny rodzaj systemu zarządzania treścią. Wszystkie poprzednie wersje dokumentów muszą być przechowywane w systemie bazodanowym. Możliwość przechowywania dokumentów w bazie danych jest również niezwykle przydatna, gdy Twoja aplikacja udostępnia usługę internetową.

Aspose.Words zapewnia możliwość konwersji dokumentu na tablicę bajtów w celu późniejszej pracy z tym dokumentem w bazie danych.

## Konwertuj dokument na tablicę bajtów

Aby zapisać dokument w bazie danych lub przygotować dokument do transmisji w Internecie, często konieczna jest serializacja dokumentu w celu uzyskania tablicy bajtów.

Aby serializować obiekt [Document](https://reference.aspose.com/words/net/aspose.words/document/) w formacie Aspose.Words:

1. Zapisz go w formacie **MemoryStream**, używając metody przeciążenia [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) klasy **Document**.
1. Wywołaj metodę **ToArray**, która zwraca tablicę bajtów reprezentujących dokument w postaci bajtów.

Powyższe kroki można następnie odwrócić, aby załadować bajty z powrotem do obiektu **Document**.

{{% alert color="primary" %}}

Wybrany format zapisu jest ważny, aby zapewnić najwyższą wierność podczas zapisywania i ponownego ładowania do obiektu **Document**. Z tego powodu sugeruje się użycie szeregu formatów plików OOXML.

{{% /alert %}}

Poniższy przykład pokazuje, jak serializować obiekt **Document** w celu uzyskania tablicy bajtów, a następnie jak zdeserializować tablicę bajtów, aby ponownie uzyskać obiekt **Document**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToByte-ConvertDocumentToByte.cs" >}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

## Przechowuj, czytaj i usuwaj dokument w bazie danych

W tej sekcji pokazano, jak zapisać dokument w bazie danych, a następnie załadować go z powrotem do obiektu `Document` w celu pracy z nim. Dla uproszczenia nazwa pliku jest kluczem używanym do przechowywania i pobierania dokumentów z bazy danych. Baza danych zawiera dwie kolumny. Pierwsza kolumna "FileName" jest przechowywana jako String i służy do identyfikacji dokumentów. Druga kolumna "FileContent" jest przechowywana jako obiekt `BLOB`, który przechowuje obiekt dokumentu w postaci bajtowej.

Poniższy przykład kodu pokazuje, jak skonfigurować połączenie z bazą danych i wykonać polecenia:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenDatabaseConnection.cs" >}}

{{% alert color="primary" %}}

W tym przykładzie używamy bazy danych Microsoft Access .mdb do przechowywania dokumentu Aspose.Words.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak zapisać dokument w bazie danych, następnie ponownie przeczytać ten sam dokument i na koniec usunąć z bazy danych rekord zawierający dokument:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenRetrieveAndDelete.cs" >}}

### Zapisz dokument w bazie danych

Aby zapisać dokument w bazie danych, przekonwertuj ten dokument na tablicę bajtów, jak opisano na początku tego artykułu. Następnie zapisz tę tablicę bajtów w polu bazy danych.

Poniższy przykład kodu pokazuje, jak zapisać dokument w określonej bazie danych:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-StoreToDatabase.cs" >}}

Określ CommandString, który jest wyrażeniem SQL wykonującym całą pracę:

- Do zapisania dokumentu do bazy danych służy polecenie "INSERT INTO" i podanie tabeli wraz z wartościami dwóch pól rekordów – FileName i FileContent. Aby uniknąć dodatkowych parametrów, nazwa pliku jest pobierana z samego obiektu **Document**. Do wartości pola `FileContent` przypisane są bajty ze strumienia pamięci, który zawiera binarną reprezentację przechowywanego dokumentu.
- Pozostała linia kodu wykonuje polecenie przechowujące dokument Aspose.Words w bazie danych.

### Pobierz dokument z bazy danych

Aby pobrać dokument z bazy danych, wybierz rekord zawierający dane dokumentu w postaci tablicy bajtów. Następnie załaduj tablicę bajtów z rekordu do **MemoryStream** i utwórz obiekt **Document**, który załaduje dokument z **MemoryStream**.

Poniższy przykład kodu pokazuje, jak pobrać i zwrócić dokument z określonej bazy danych, używając nazwy pliku jako klucza do pobrania tego dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-ReadFromDatabase.cs" >}}

{{% alert color="primary" %}}

Polecenie SQL "SELECT * FROM" służy do pobrania odpowiedniego rekordu na podstawie nazwy pliku.

{{% /alert %}}

### Usuń dokument z bazy danych

Aby usunąć dokument z bazy należy użyć odpowiedniego polecenia SQL bez żadnych manipulacji na obiekcie **Document**.

Poniższy przykład kodu pokazuje, jak usunąć dokument z bazy danych, używając nazwy pliku do pobrania rekordu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-DeleteFromDatabase.cs" >}}
