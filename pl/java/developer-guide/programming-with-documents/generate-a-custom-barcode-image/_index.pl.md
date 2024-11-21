---
title: Utwórz kod kreskowy w Java
second_title: Aspose.Words dla Java
articleTitle: Generuj obraz niestandardowego kodu kreskowego
linktitle: Generuj obraz niestandardowego kodu kreskowego
description: "Przykład generowania kształtu kodem kreskowym przy użyciu Java."
type: docs
weight: 350
url: /pl/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

Kod kreskowy to wizualna reprezentacja danych w formie równoległych linii lub wzorców. Kody kreskowe są szeroko stosowane w wielu branżach, takich jak handel detaliczny, logistyka, ochrona zdrowia, bankowość i wiele innych.

Microsoft Word pozwala użytkownikom osadzać kody kreskowe bezpośrednio w dokumentach za pomocą pól. Użytkownicy mogą wstawić konkretnego typu kodu kreskowego, takiego jak kod QR lub kod liniowy, używając pola [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19).

W tym artykule przyjrzymy się temu, jak pole BARCODE jest wdrażane w Aspose.Words oraz w jaki sposób Aspose.Words pozwala użytkownikom pracować z dokumentami Word zawierającymi już dodany kod kreskowy.

## Typy kodów kreskowych obsługiwane przez Aspose.Words

Aspose.Words obsługuje różne typy kodów kreskowych. Typ kodu kreskowego jest przekazywany jako wartość ciągowa w [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType) właściwym.

{{% alert color="primary" %}}

Ponieważ praca z kodami kreskowymi w ramach funkcjonalności Aspose.Words jest ograniczona, użytkownik może użyć dowolnej biblioteki, w tym Aspose.Barcode lub napisać własny render do pracy z kodami kreskowymi. Możesz dowiedzieć się więcej o typach kodów kreskowych [supported by Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

Podczas zapisywania do formatu Word obsługującego kody kreskowe możesz użyć dowolnego typu kodu [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Jeśli niepoprawny typ kodu został przekazany, Word wyświetli błąd.

Podczas zapisywania do innych formatów, takich jak PDF, Aspose.Words deleguje renderowanie kodu kreskowego do kodu użytkownika, więc użytkownik jest ograniczony do typów kodów kreskowych swojej implementacji lub biblioteki używaną.

## Wstawianie kodu kreskowego do dokumentu lub załadowanie dokumentu z dodanym kodem kreskowym

Aspose.Words oferuje możliwość:

1. Programowo wstaw kod kreskowy do dokumentu za pomocą [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) i [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) kodów pola
2. albo załaduj dokument Word z już wstawionymi kodami kreskowymi do dalszej pracy

Aspose.Words ma interfejs do generowania niestandardowych kodów kreskowych, co ułatwia używanie [Aspose.Words](https://products.aspose.com/words/java/) i [Aspose.BarCode](https://products.aspose.com/barcode/java/) razem, aby renderować obrazy kodów kreskowych w dokumentach wyjściowych. Na przykład możesz utworzyć dokument DOC, OOXML lub RTF i dodać pole DISPLAYBARCODE używając Aspose.Words. Lub możesz załadować dokument DOC, OOXML lub RTF z już istniejącym polem DISPLAYBARCODE i podać własną implementację generatora kodów kreskowych.

A typowa FIELD_DISPLAYBARCODE ma następującą składnię:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Oto przykładowy kod wygenerowany za pomocą Aspose.Words i Aspose.BarCode API. Ten przykład pokazuje, jak wstawić obraz bar kodu w polu DISPLAYBARCODE w dokumencie Word:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

Możesz również zapisać dokument z załadowanym lub nowo wstawionym kodem kreskowym w stałych formatach stron takich jak PDF, XPS itp. Przykładowy kod poniżej pokazuje, jak zapisać dokument programu Word do formatu PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

Aby uzyskać więcej informacji na temat konwersji dokumentów z jednego formatu do innego, zapoznaj się z sekcją dokumentacji [Convert a Document](/words/java/convert-a-document/).

{{% /alert %}}

{{% alert color="primary" %}}

Możesz użyć interfejsu [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/), aby przekonwertować kody kreskowe zawarte w dokumentach Word na obrazy. Wynikowe obrazy można wyodrębnić z dokumentu – zapoznaj się z artykułem "Pracując z obrazami", aby uzyskać więcej szczegółów.

{{% /alert %}}

## Specyfikuj opcje kodu kreskowego

Podczas pracy z kodami kreskowymi można ustawić pewne dodatkowe właściwości. Aspose.Words udostępnia klasę [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) - klasę dla parametrów kodu kreskowego do przekazania do BarcodeGenerator.

Aspose.Words obsługuje wbudowane 96 ppi dla obrazów generowanych z [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/), co ogranicza minimalny rozmiar obrazu kodu kreskowego. Aby temu zaradzić, deweloperzy mogą ręcznie wstawiać obrazy kodów kreskowych o docelowej rozdzielczości do dokumentu programu Word i zapisywać je w wymaganym formacie. Więcej szczegółów i przykładów dotyczących pracy z kodami kreskowymi można znaleźć w artykule [Read Barcodes from Word Documents](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
