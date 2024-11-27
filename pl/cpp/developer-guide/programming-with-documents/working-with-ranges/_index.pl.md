---
title: Praca z zakresami w C++
second_title: Aspose.Words dla C++
articleTitle: Praca z zakresami
linktitle: Praca z zakresami
description: "Wprowadzenie do funkcji zakresu w Aspose.Words dla C++."
type: docs
weight: 130
url: /pl/cpp/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

W Aspose.Words zakres jest "płaskim oknem" w innym drzewiastym modelu dokumentu.

{{% /alert %}}

Jeśli pracowałeś z automatyzacją Microsoft Word, prawdopodobnie wiesz, że jednym z głównych narzędzi do sprawdzania i modyfikowania zawartości dokumentu jest obiekt **Range**. **Range** jest jak "okno" do zawartości dokumentu i formatowania.

Aspose.Words ma również klasę [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) i jest zaprojektowany tak, aby wyglądał i działał podobnie do **Range** w Microsoft Word. Chociaż **Range** nie może obejmować dowolnej części dokumentu i nie ma **Start** i **End**, możesz uzyskać dostęp do zakresu objętego dowolnym węzłem dokumentu, w tym samym [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Innymi słowy, każdy węzeł ma swój własny zakres. Obiekt **Range** umożliwia dostęp i modyfikowanie tekstu, zakładek i pól formularzy w zakresie.

## Pobierz Zwykły Tekst

Użyj właściwości [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/), aby pobrać zwykły, niesformatowany tekst zakresu.

Poniższy przykład kodu pokazuje, jak uzyskać zwykły, niesformatowany tekst z zakresu:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cpp" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Usuwanie Tekstu

Zakres umożliwia usunięcie wszystkich znaków zakresu poprzez wywołanie [Delete](https://reference.aspose.com/words/cpp/aspose.words/range/delete/).

Poniższy przykład kodu pokazuje, jak usunąć wszystkie znaki z zakresu:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cpp" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
