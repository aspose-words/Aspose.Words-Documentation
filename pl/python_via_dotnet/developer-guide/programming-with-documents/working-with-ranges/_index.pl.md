---
title: Praca z zakresami w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Praca z zakresami
linktitle: Praca z zakresami
description: "Pracuj z zakresami w dokumencie za pomocą Python."
type: docs
weight: 130
url: /pl/python-net/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

W Aspose.Words [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) to "płaskie okno" na drzewiasty model dokumentu.

{{% /alert %}}

Jeżeli miałeś do czynienia z Microsoft Word Automation, zapewne wiesz, że jednym z głównych narzędzi do badania i modyfikowania treści dokumentów jest obiekt [Range](https://reference.aspose.com/words/python-net/aspose.words/range/). [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) jest jak "okno" na zawartość i formatowanie dokumentu. Aspose.Words ma również klasę [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) i ma wyglądać i działać podobnie do **Range** w Microsoft Word. Chociaż **Range** nie może objąć dowolnej części dokumentu i nie ma **Start** ani **End**, możesz uzyskać dostęp do zakresu objętego dowolnym węzłem dokumentu, w tym samym [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Innymi słowy, każdy węzeł ma swój własny zasięg. Obiekt [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) umożliwia dostęp i modyfikację tekstu, zakładek i pól formularzy w obrębie zakresu.

## Pobierz zwykły tekst

Użyj właściwości [text](https://reference.aspose.com/words/python-net/aspose.words/range/text/), aby pobrać zwykły, niesformatowany tekst zakresu.

Poniższy przykład kodu pokazuje, jak uzyskać zwykły, niesformatowany tekst zakresu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesGetText.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Usuwanie tekstu

Range umożliwia usunięcie wszystkich znaków zakresu poprzez wywołanie [delete](https://reference.aspose.com/words/python-net/aspose.words/range/delete/)

Poniższy przykład kodu pokazuje, jak usunąć wszystkie znaki z zakresu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesDeleteText.py" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
