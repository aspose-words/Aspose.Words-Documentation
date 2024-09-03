---
title: Jak tworzyć kody kreskowe
second_title: Aspose.Words dla .NET
articleTitle: Generuj obraz niestandardowego kodu kreskowego
linktitle: Generuj obraz niestandardowego kodu kreskowego
description: "Przykład generowania kształtu kodu kreskowego za pomocą C#."
type: docs
weight: 350
url: /pl/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Kod kreskowy to wizualna reprezentacja danych w formie równoległych linii lub wzorów. Kody kreskowe są szeroko stosowane w wielu branżach, takich jak sprzedaż detaliczna, logistyka, ochrona zdrowia, bankowość i wiele innych.

Microsoft Word pozwala użytkownikom wstawiać kody kreskowe bezpośrednio do dokumentów za pomocą pól. Użytkownicy mogą wstawić konkretny typ kodu kreskowego, taki jak kod QR lub liniowy, używając pola [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19).

W tym artykule przyjrzymy się jak jest zaimplementowany pole BARCODE w Aspose.Words, i jak Aspose.Words pozwala użytkownikom pracować ze słowami dokumentów do których już dodano kod kreskowy.

## Typy kodów kreskowych obsługiwane przez Aspose.Words

Aspose.Words obsługuje różne typy kodów kreskowych. Typ kodu kreskowego jest przekazywany jako wartość ciągu w [BarcodeType](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/barcodetype/) właściwości.

{{% alert color="primary" %}}

Ponieważ praca z kodami kreskowymi w ramach funkcjonalności Aspose.Words jest ograniczona, użytkownik może użyć dowolnej biblioteki, w tym Aspose.Barcode lub napisać własny render do pracy z kodami kreskowymi. Możesz dowiedzieć się więcej o typach kodów kreskowych [supported by Aspose.BarCode](https://docs.aspose.com/barcode/net/barcode-types/).

{{% /alert %}}

Podczas zapisywania do formatów Word obsługujących kody kreskowe, można użyć dowolnego typu kodu kreskowego który jest [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Jeśli został przekazany nieprawidłowy typ kodu kreskowego, program Word wyświetli błąd.

Przy zapisywaniu do innych formatów, takich jak PDF, Aspose.Words deleguje renderowanie kodów kreskowych do kodu użytkownika, więc użytkownik jest ograniczony do typów kodów kreskowych swojej implementacji lub biblioteki używanej.

## Wstawienie kody kreskowej do dokumentu lub załadowanie dokumentu z dodaną kodem kreskową

Aspose.Words daje możliwość do:

1. Programowo wstaw kod kreskowy do dokumentu używając [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) i [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) pola kodów
2. Lub załaduj dokument Word, z już wstawionymi kodami kreskowymi do dalszej pracy

Aspose.Words ma interfejs do generowania własnych kodów kreskowych, dzięki czemu łatwo jest używać [Aspose.Words](https://products.aspose.com/words/net/) i [Aspose.BarCode](https://products.aspose.com/barcode/net/) razem, by renderować obrazy kodów kreskowych w dokumentach wyjściowych. Na przykład możesz utworzyć dokument DOC, OOXML lub RTF i dodać pole DISPLAYBARCODE używając Aspose.Words. Albo możesz załadować dokument DOC, OOXML lub RTF z już istniejącym polem DISPLAYBARCODE i podać własną implementację generatora kodów kreskowych.

Typowy pole DISPLAYBARCODE ma następującą składnię:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Poniżej znajduje się przykładowy kod generujący używając Aspose.Words i Aspose.BarCode API. Ten przykład pokazuje jak wstawiać obrazy kodów kreskowych do pola DISPLAYBARCODE w dokumencie Worda:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}

Możesz też zapisać dokument z załadowanym lub nowo wstawionym kodem kreskowym w stałych formatach stron, takich jak PDF, XPS itp. Przykładowy kod poniżej pokazuje, jak zapisać dokument programu Word do formatu PDF:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

{{% alert color="primary" %}}

Aby uzyskać więcej informacji na temat konwersji dokumentów z jednego formatu na inny, zobacz sekcję dokumentacji [Convert a Document](/words/net/convert-a-document/).

{{% /alert %}}

{{% alert color="primary" %}}

Możesz też użyć interfejsu [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/), aby zamienić wbudowane kodów kreskowych w dokumentach Word na obrazy. Te wynikowe obrazy można wyodrębnić z dokumentu - zobaczyć artykuł Praca z obrazami dla więcej szczegółów.

{{% /alert %}}

## Wybierz opcje kodu kreskowego

Podczas pracy z kodami kreskowymi można ustawić pewne dodatkowe właściwości. Aspose.Words udostępnia Ci klasę [BarcodeParameters](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/) - klasę dla parametrów kodu do przekazania do generatora kodów kreskowych.

Aspose.Words obsługuje wbudowaną rozdzielczość 96 ppi dla obrazów generowanych za pomocą [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/), co ogranicza minimalny rozmiar obrazu kreskowego. Aby temu zaradzić, deweloperzy mogą ręcznie umieszczać obrazy kodów kreskowych o docelowej rozdzielczości w dokumencie Word i zapisywać je w wymaganym formacie. Więcej szczegółów i przykładów dotyczących pracy z kodami kreskowymi można znaleźć w artykule [Create Custom Barcodes with IBarcodeGenerator](https://docs.aspose.com/barcode/net/how-to-create-custom-barcodes-with-ibarcodegenerator/).