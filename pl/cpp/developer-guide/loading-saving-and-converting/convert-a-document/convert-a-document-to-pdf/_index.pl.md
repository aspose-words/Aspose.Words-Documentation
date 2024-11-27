---
title: Konwertuj dokument na PDF w C++
second_title: Aspose.Words dla C++
articleTitle: Konwertuj dokument na PDF
linktitle: Konwertuj dokument na PDF
description: "Konwertuj dokument na PDF za pomocą C++. Obsługiwane są różne formaty wejściowe, w tym formaty Word, OpenOffice, Image i eBook."
type: docs
weight: 10
url: /pl/cpp/convert-a-document-to-pdf/
timestamp: 2024-10-21-08-52-03
---

Możliwość łatwej i niezawodnej konwersji dokumentów z jednego formatu na inny jest kluczową cechą Aspose.Words. Jednym z najpopularniejszych formatów konwersji jest PDF – format o stałym układzie, który zachowuje oryginalny wygląd dokumentu podczas jego renderowania na różnych platformach. Termin "renderowanie" jest używany w Aspose.Words do opisania procesu konwersji dokumentu na format pliku, który jest podzielony na strony lub ma pojęcie stron.

## Konwertuj dokument Word na PDF {#convert-a-word-document-to-pdf}

Konwersja z Word na PDF to dość złożony proces, który wymaga kilku etapów obliczeń. Aspose.Words silnik układu naśladuje sposób działania silnika układu strony Microsoft Word, dzięki czemu PDF dokumenty wyjściowe wyglądają jak najbliżej tego, co można zobaczyć w Microsoft Word.

Za pomocą Aspose.Words możesz programowo przekonwertować dokument z formatu DOC lub DOCX na PDF bez użycia Microsoft pakietu Office. W tym artykule wyjaśniono, jak wykonać tę konwersję.

{{% alert color="primary" %}}

Zwróć uwagę, że liczba stron w dokumencie wpływa na czas konwersji.

{{% /alert %}}

### Konwersja DOCX lub DOC na PDF {#converting-doc-or-docx-to-pdf}

Konwersja z formatu dokumentu DOC lub DOCX do formatu PDF w Aspose.Words jest bardzo łatwa i można ją wykonać za pomocą zaledwie dwóch linii kodu, które:

1. Załaduj dokument do obiektu [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) za pomocą jednego z jego konstruktorów, określając nazwę dokumentu z rozszerzeniem formatu.
1. Wywołaj jedną z metod [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) w obiekcie **Document** i określ żądany format wyjściowy jako PDF, wprowadzając Nazwę pliku z".PDF" rozszerzenie.

Poniższy przykład kodu pokazuje, jak przekonwertować dokument z DOCX na PDF przy użyciu metody `Save`:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "docx-to-pdf.h" >}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% alert color="primary" %}}

Czasami konieczne jest określenie dodatkowych opcji, które mogą wpłynąć na wynik zapisywania dokumentu jako PDF. Opcje te można określić za pomocą klasy [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/), zawierającej Właściwości określające sposób wyświetlania danych wyjściowych PDF.

Zauważ, że za pomocą tej samej techniki możesz przekonwertować dowolny dokument w formacie flow-layout na format PDF.

{{% /alert %}}

### Konwertuj na różne standardy PDF {#converting-to-various-pdf-standards}

Aspose.Words zapewnia wyliczenie [PdfCompliace](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/) w celu obsługi konwersji DOC lub DOCX na różne standardy formatu PDF (takie jakPDF 1.7, PDF 1.5, itp.).

Poniższy przykład kodu pokazuje, jak przekonwertować dokument na PDF 1.7 przy użyciu [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) z zgodnością z PDF17:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "conversion-to-pdf17.h" >}}

## Konwertuj obrazy na PDF {#convert-an-image-to-pdf}

Konwersja do formatu PDF nie jest ograniczona formatami dokumentów Microsoft Word. Każdy format obsługiwany przez Aspose.Words, w tym utworzony programowo, można również przekonwertować na PDF. Na przykład możemy konwertować obrazy jednostronicowe, takie jak JPEG, PNG, BMP, EMF, lub WMF, a także obrazy wielostronicowe, takie jak TIFF i GIF, do PDF.

Poniższy przykład kodu pokazuje, jak przekonwertować obrazy JPEG i TIFF na PDF:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "image-to-pdf.h" >}}

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "convert-image-to-pdf.h" >}}

Aby ten kod działał, musisz dodać odwołania do Aspose.Words i `System.Drawing` do swojego projektu.

## Zobacz także

- Artykuł [Rendering](/words/cpp/rendering/) aby uzyskać więcej informacji na temat formatów fixed-page I flow-layout
- Artykuł [Konwersja do formatu stałej strony](/words/cpp/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) aby uzyskać więcej informacji na temat układu strony
- Artykuł [Określ opcje renderowania podczas konwersji na PDF](/words/cpp/specify-rendering-options-when-converting-to-pdf/) aby uzyskać więcej informacji na temat korzystania z klasy `PdfSaveOptions`
