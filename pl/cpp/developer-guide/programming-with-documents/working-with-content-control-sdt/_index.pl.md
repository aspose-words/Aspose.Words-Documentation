---
title: Praca z Content Control SDT
second_title: Aspose.Words dla C++
articleTitle: Praca z Content Control SDT
linktitle: Praca z Content Control SDT
type: docs
description: "Zaawansowane zarządzanie treścią dokumentów, jak tworzyć i manipulować kontrolkami treści (strukturalnymi znacznikami dokumentów) za pomocą C++."
weight: 390
url: /pl/cpp/structured-document-tags-or-content-control/
timestamp: 2024-01-27-14-07-04
---

W Microsoft Word możesz utworzyć formularz, zaczynając od szablonu i dodając kontrolki zawartości, w tym pola wyboru, pola tekstowe, selektory dat i listy rozwijane. W Aspose.Words strukturalny znacznik dokumentu lub kontrolka zawartości z dowolnego dokumentu załadowanego do Aspose.Words jest importowany jako węzeł StructuredDocumentTag. Strukturalne znaczniki dokumentów (SDT lub content control) umożliwiają osadzanie semantyki zdefiniowanej przez Klienta, a także jej zachowania i wyglądu w dokumencie. StructuredDocumentTag może wystąpić w dokumencie w następujących miejscach:

- Block-level-wśród akapitów i tabel, jako dziecko treści, HeaderFooter, komentarza, przypisu lub węzła kształtu
- Row-level-wśród wierszy w tabeli, jako dziecko węzła tabeli
- Cell-level-wśród komórek w wierszu tabeli, jako dziecko węzła wiersza
- Inline-level-wśród treści inline wewnątrz, jako dziecko akapitu
- Zagnieżdżone wewnątrz innego StructuredDocumentTag

## Jak ustawić styl formatowania tekstu wpisywanego do kontrolki treści

Jeśli chcesz ustawić styl kontroli zawartości, możesz użyć właściwości `StructuredDocumentTag.Style` lub `StructuredDocumentTag.StyleName`. Po wpisaniu tekstu do kontrolki treści w dokumencie wyjściowym wpisany tekst będzie miał styl "cytat".

{{% alert color="primary" %}}

Należy pamiętać, że do kontroli zawartości można zastosować tylko Style połączone i znakowe. InvalidOperationException ("nie można zastosować tego stylu do SDT") jest zgłaszane, gdy styl, który istnieje, ale nie jest połączony lub styl znaków jest stosowany.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak ustawić styl kontroli treści:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cpp" >}}

## Praca z powtarzającą się kontrolą zawartości sekcji

Kontrola treści sekcji powtarzalnej umożliwia powtarzanie zawartych w niej treści. Za pomocą Aspose.Words można utworzyć strukturalne węzły znaczników dokumentu powtarzających się sekcji i powtarzających się typów elementów sekcji, w tym celu SdtType Typ wyliczenia zapewnia Właściwość **RepeatingSectionItem**.

Poniższy przykład kodu pokazuje, jak powiązać kontrolkę zawartości sekcji powtarzającej się z tabelą:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cpp" >}}
