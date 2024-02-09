---
title: Włącz funkcje OpenType w C#
second_title: Aspose.Words dla .NET
articleTitle: Włącz funkcje OpenType
linktitle: Włącz funkcje OpenType
description: "Zaawansowane funkcje typograficzne wykorzystujące C#."
type: docs
weight: 25
url: /pl/net/enable-opentype-features/
---

OpenType to format czcionki wprowadzony w celu zapewnienia lepszej obsługi międzynarodowych języków i systemów pisma w porównaniu z PostScript i TrueType. Funkcje układu OpenType są powszechnie znane jako funkcje OpenType. Pakiet Aspose.Words.Shaping.HarfBuzz zapewnia obsługę funkcji OpenType w Aspose.Words przy użyciu silnika kształtowania tekstu HarfBuzz.

Aspose.Words może korzystać z obiektów do kształtowania tekstu dostarczonych zewnętrznie. Narzędzie do kształtowania tekstu reprezentuje czcionkę i oblicza informacje o kształtowaniu tekstu. Dokument zazwyczaj odnosi się do wielu czcionek, dlatego konieczna jest fabryka kształtowania tekstu. Ten pakiet zawiera implementację fabryki kształtowania tekstu wykorzystywanej przez właściwość Aspose.Words.Layout.LayoutOptions.TextShaperFactory.

{{% alert color="primary" %}}

Kształtowanie tekstu odbywa się tylko podczas eksportu do formatów PDF lub XPS.

{{% /alert %}}

W typowej aplikacji pojedyncza instancja fabryki narzędzia do kształtowania tekstu jest współdzielona pomiędzy wszystkimi instancjami dokumentu. Za każdym razem, gdy tworzony jest moduł kształtowania tekstu, uzyskiwany jest dostęp do pliku czcionki. Analizowanie pliku czcionki jest kosztowną operacją, dlatego zalecane jest buforowanie. Aspose.Words implementuje klasę BasicTextShaperCache, która otacza implementację fabryki narzędzia do kształtowania tekstu i buforuje instancje narzędzia do kształtowania tekstu zwrócone przez opakowaną fabrykę.

Poniższy przykład kodu pokazuje, jak włączyć obsługę funkcji OpenType.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-OpenType-OpenTypeFeatures-OpenTypeFeatures.cs" >}}
