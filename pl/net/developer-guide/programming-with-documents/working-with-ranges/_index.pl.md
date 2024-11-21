---
title: Praca z zakresami w C#
second_title: Aspose.Words dla .NET
articleTitle: Praca z zakresami
linktitle: Praca z zakresami
description: "Wprowadzenie do funkcji Range w Aspose.Words dla .NET."
type: docs
weight: 130
url: /pl/net/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

W Aspose.Words zakres to "płaskie okno" na drzewiasty model dokumentu.

{{% /alert %}}

Jeżeli miałeś do czynienia z Microsoft Word Automation, zapewne wiesz, że jednym z głównych narzędzi do badania i modyfikowania treści dokumentów jest obiekt **Range**. **Range** jest jak "okno" na zawartość i formatowanie dokumentu.

Aspose.Words ma również klasę [Range](https://reference.aspose.com/words/net/aspose.words/range/) i ma wyglądać i działać podobnie do **Range** w Microsoft Word. Chociaż **Range** nie może obejmować dowolnej części dokumentu i nie ma **Start** ani **End**, możesz uzyskać dostęp do zakresu objętego dowolnym węzłem dokumentu, w tym samym [Document](https://reference.aspose.com/words/net/aspose.words/document/). Innymi słowy, każdy węzeł ma swój własny zasięg. Obiekt **Range** umożliwia dostęp i modyfikację tekstu, zakładek i pól formularzy w obrębie zakresu.

## Pobierz zwykły tekst

Użyj właściwości [Text](https://reference.aspose.com/words/net/aspose.words/range/text/), aby pobrać zwykły, niesformatowany tekst zakresu.

Poniższy przykład kodu pokazuje, jak uzyskać zwykły, niesformatowany tekst zakresu:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Usuń tekst

Range umożliwia usunięcie wszystkich znaków zakresu poprzez wywołanie [Delete](https://reference.aspose.com/words/net/aspose.words/range/delete/).

Poniższy przykład kodu pokazuje, jak usunąć wszystkie znaki z zakresu:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
