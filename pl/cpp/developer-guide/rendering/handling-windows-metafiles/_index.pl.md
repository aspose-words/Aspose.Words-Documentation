---
title: Obsługa Windows metaplików w C++
second_title: Aspose.Words dla C++
articleTitle: Obsługa Windows Metaplików
linktitle: Obsługa Windows Metaplików
description: "Aspose.Words for C++ implementuje własny Windows Metafile player do odtwarzania formatu Metafile na wszystkich platformach i obsługuje obsługę podstawowych funkcji metafile i może wykonać rezerwę do innego typu odtwarzacza metafile."
type: docs
weight: 30
url: /pl/cpp/handling-windows-metafiles/
timestamp: 2024-01-30-16-22-34
---

Windows format Metafile to format pliku obrazu, który może zawierać zarówno grafikę wektorową, jak i rastrową. Ten format służy do przechowywania danych graficznych w pamięci lub plikach na dysku. Metaplik przechowuje listę wywołań funkcji w interfejsie urządzenia graficznego Windows (GDI), które należy wykonać, aby wyświetlić obraz na ekranie. System interpretuje i wykonuje te polecenia w kontekście wyświetlania.

Dawniej Windows Metafile był jedynym formatem obrazu wektorowego obsługiwanym przez Microsoft Word. Microsoft Word obsługuje teraz również format SVG, ale format metapliku jest nadal powszechnie używany w dokumentach Word. Ponadto Metafile może być formatem wymiany dla niektórych innych aplikacji, takich jak Microsoft Visio. Zasadniczo głównym celem Metafile jest zapewnienie wymiany informacji graficznych między aplikacjami Windows.

Istnieją 3 wersje Windows Metafile:

- WMF - przechowuje wywołanie do 16bit GDI.
- EMF - przechowuje wywołanie Win32 / GDI.
- EMF+ Metafile przechowuje wywołanie do GDI+. EMF+ metaplik może być również podwójny, opisując tę samą grafikę z częściami EMF i EMF+.

Istniejący problem z metaplikiem Windows polega na tym, że nie jest on obsługiwany przez większość formatów innych niżWord, w których zwykle zapisywane są dokumenty. Dlatego wymagana jest konwersja formatu Metafile na inne formaty rastrowe lub wektorowe. Łatwo jest przekonwertować Windows Metafile na obraz rastrowy na .NET, po prostu przekazując go do GDI+, ale nie jest to możliwe na innych platformach, ponieważ nawet GDI+ nie zapewnia funkcji wyodrębniania grafiki wektorowej z Metafile. Aby rozwiązać te problemy, Aspose.Words implementuje własny Windows Metafile player, który jest w stanie odtwarzać Format Metafile zarówno grafikę wektorową, jak i rastrową na wszystkich platformach.

## Sterowanie Aspose.Words Metafile Player

Klasa [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/) umożliwia sterowanie odtwarzaczem metafile. Na przykład można określić sposób renderowania obrazów metaplików przy użyciu właściwości [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/), która ma specjalne znaczenie podczas konwersji na mapy bitowe (Zobacz także właściwość [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/metafilerenderingoptions/)).

Zapisywanie w mapie bitowej działa inaczej na platformach innych niż .NET. Podczas gdy .NET GDI+ renderowanie jest odniesieniem, które działa prawie idealnie nawet dla najbardziej złożonego formatu metapliku, na innych platformach może powodować problemy lub nie być w ogóle obsługiwane.

## Wspieranie Operacji Rastrowych

Operacje rastrowe to złożona funkcja metapliku, która obecnie ma ograniczone wsparcie. Operacje rastrowe są dostępne w formatach metaplików WMF i EMF. Format metapliku EMF+ nie używa operacji rastrowych bezpośrednio, ale może zawierać EMF części, osadzone WMF LUB EMF metapliki.

Istnieją binarne i trójskładnikowe operacje rastrowe:

- Binarne operacje rastrowe są stosowane do poleceń rysowania piórem, takich jak rysowanie linii i krzywych. Podczas rysowania linii kolor pióra jest łączony z docelowym kolorem mapy bitowej (kolorem odpowiedniego piksela na powierzchni urządzenia) przy użyciu określonych bitowych operacji logicznych z wartościami kolorów szesnastkowych. Poniższy przykład obrazkowy ilustruje efekt wszystkich 16 binarnych operacji rastrowych zastosowanych do 20 różnych pasków kolorów. Pionowe paski kolorów są rysowane jako pierwsze, poziome paski są rysowane po zastosowaniu każdej binarnej operacji rastrowej. W prostych przypadkach R2_BLACK rysuje czerń, R2_NOT odwraca Kolor, R2_NOP nie zmienia tła, a R2_WHITE rysuje Biel.

<img src="handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-cpp-1" style="width:650px"/>

- Podczas rysowania obrazów bitmapowych stosowane są trójskładnikowe operacje rastrowe. Łączą kolory odpowiednich pikseli obrazu bitmapowego, pędzla i docelowej mapy bitowej, używając bitowych operacji logicznych z określonymi wartościami kolorów szesnastkowych. Jednym z najczęstszych celów korzystania z trójskładnikowych operacji rastrowych jest emulacja przezroczystości. Obraz przedstawiony w poniższym przykładzie pokazuje, jak można emulować przezroczystość ikon. Istnieją dwa rodzaje map bitowych: mapa bitowa maski czarno-białej i mapa bitowa koloru. Najpierw mapa bitowa maski jest rysowana za pomocą operacji rastrowej SRCAND. Zmienia nieprzezroczysty region ikon na czarno-biały, pozostawiając przezroczysty region bez zmian. Następnie rysowana jest druga mapa bitowa z operacją rastrową SRCINVERT. Wyświetla kolorowe piksele w czarnym regionie, pozostawiając przezroczysty region bez zmian.

<img src="handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-cpp-2" style="width:650px"/>

Operacji rastrowych nie można bezpośrednio przekonwertować na grafikę wektorową. Aspose.Words emuluje operacje rastrowe poprzez częściową rasteryzację powierzchni urządzenia dotkniętej operacjami rastrowymi. W tym celu używana jest Właściwość [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/).

{{% alert color="primary" %}}

Chociaż binarne operacje rastrowe nie są obecnie obsługiwane, a ograniczona liczba trójskładnikowych operacji rastrowych jest obsługiwana przez Aspose.Words, może obsługiwać podstawowe przypadki konwersji bezpośrednio na grafikę wektorową, na przykład, R2_BLACK, R2_WHITE, R2_NOP. Ponadto rasteryzacja powierzchni urządzenia znacząco wpływa na wydajność, zwłaszcza gdy zaangażowana jest znaczna liczba zapisów operacji rastrowych.

{{% /alert %}}

Poniższy przykład pokazuje, jak Aspose.Words renderuje metaplik do mapy bitowej, gdy nie jest możliwe prawidłowe renderowanie niektórych rekordów metaplik do grafiki wektorowej:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Doc2Pdf-RenderMetafileToBitmap.cpp" >}}

## Ustawienia Awaryjne Metafile

Aspose.Words nie obsługuje wielu funkcji metaplików, które są najbardziej złożone lub rzadkie. Użytkownicy mogą zaimplementować interfejs [IWarningCallBack](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/) i otrzymywać komunikaty ostrzegawcze. Jeśli Aspose.Words napotka nieobsługiwane funkcje w metaplikuwydaje komunikat ostrzegawczy z [WarningSource](https://reference.aspose.com/words/cpp/aspose.words/warninginfo/get_source/).**Metafile**. W tym przypadku Aspose.Words może wykonać awarię do innego typu odtwarzacza metafile. Pojawia się również komunikat ostrzegawczy dotyczący awarii.

Po pierwsze, Aspose.Words wykonuje fallback z wektorowego odtwarzacza metaplików do rastra, który jest kontrolowany przez właściwość [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/). Jeśli funkcja rezerwowa jest wyłączona, Aspose.Words próbuje renderować niektóre grafiki zastępcze zamiast funkcji, które nie są obsługiwane.

Aspose.Words pomyślnie odtwarza metafile do rastra przy użyciu GDI + on .NET, co sprawia, że ta opcja wywołania zwrotnego jest Bezpieczna.

Po drugie, istnieje opcja EMF + Dual metafile, aby wycofać się z odtwarzania części EMF+ do części EMF. Jest kontrolowany przez [EmfPlusDualRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emfplusdualrenderingmode/). Jeśli podczas odtwarzania części EMF występują pewne problemy, można również wykonać powrót do rastra.

Jeśli chodzi o operacje rastrowe, jeśli [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/) jest wyłączony, to operacje rastrowe są uważane za nieobsługiwane, co powoduje awarię do bitmapowego odtwarzacza metaplików, jeśli jest włączony. Dlatego jeśli masz metaplik z operacjami rastrowymi, ale nie chcesz używać emulacji operacji rastrowych, a mimo to chcesz uzyskać wyjście wektorowe z Grafiką zastępczą, wybierz [MetafileRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/).**Vector**.
