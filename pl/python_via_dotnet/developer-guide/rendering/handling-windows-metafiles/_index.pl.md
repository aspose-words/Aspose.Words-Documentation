---
title: Obsługa metaplików Windows
second_title: Aspose.Words dla Python via .NET
articleTitle: Obsługa metaplików Windows
linktitle: Obsługa metaplików Windows
description: "Aspose.Words for Python via .NET implementuje własny odtwarzacz metaplików Windows do odtwarzania formatu metaplików na wszystkich platformach i obsługuje obsługę podstawowych funkcji metaplików oraz może wykonać awarię do innego typu odtwarzacza metaplików."
type: docs
weight: 30
url: /pl/python-net/handling-windows-metafiles/
---

Format metapliku Windows to format pliku obrazu, który może zawierać zarówno grafikę wektorową, jak i rastrową. Ten format służy do przechowywania danych graficznych w pamięci lub plikach na dysku. Metaplik przechowuje listę wywołań funkcji w interfejsie urządzenia graficznego Windows (GDI), które muszą zostać wykonane, aby wyświetlić obraz na ekranie. System interpretuje i wykonuje te polecenia w kontekście wyświetlacza.

Dawniej Windows Metafile był jedynym formatem obrazu wektorowego obsługiwanym przez Microsoft Word. Microsoft Word obsługuje teraz także format SVG, ale format metapliku jest nadal powszechnie używany w dokumentach Word. Ponadto Metafile może być formatem wymiany dla niektórych innych aplikacji, takich jak Microsoft Visio. Zasadniczo głównym celem Metafile jest zapewnienie wymiany informacji graficznych pomiędzy aplikacjami Windows.

Istnieją 3 wersje metapliku Windows:

- WMF – przechowuje wywołanie do 16-bitowego GDI.
- EMF – sklepy wywołują wywołanie Win32/GDI.
- Magazyny metaplików EMF+ wywołują wywołanie GDI+. Metaplik EMF+ może być również podwójny, opisując tę samą grafikę zarówno z częściami EMF, jak i EMF+.

Istniejący problem z metaplikiem Windows polega na tym, że nie jest on obsługiwany przez większość formatów innych niż Word, w których zwykle zapisywane są dokumenty. Dlatego wymagana jest konwersja formatu Metafile na inne formaty rastrowe lub wektorowe. Łatwo jest przekonwertować metaplik Windows na obraz rastrowy w formacie .NET, po prostu przekazując go do GDI+, ale nie jest to możliwe na innych platformach, ponieważ nawet GDI+ nie zapewnia funkcjonalności wyodrębniania grafiki wektorowej z Metapliku. Aby rozwiązać te problemy, Aspose.Words wdraża własny odtwarzacz Windows Metafile, który jest w stanie odtwarzać grafikę wektorową i rastrową w formacie Metafile na wszystkich platformach.

## Sterowanie odtwarzaczem metaplików Aspose.Words

Klasa [MetafileRenderingOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/) umożliwia sterowanie odtwarzaczem metaplików. Na przykład możesz określić, w jaki sposób obrazy metaplików powinny być renderowane za pomocą właściwości [rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/rendering_mode/), która ma specjalne znaczenie podczas konwersji do bitmap (patrz także właściwość [ImageSaveOptions.metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/)).

Zapisywanie do mapy bitowej działa inaczej na platformach innych niż .NET. Chociaż renderowanie .NET GDI+ jest odniesieniem, które działa niemal idealnie nawet w przypadku najbardziej złożonych formatów metaplików, na innych platformach może powodować problemy lub w ogóle nie być obsługiwane.

## Wspieranie operacji rastrowych

Operacje rastrowe to złożona funkcja metaplików, która obecnie jest obsługiwana w ograniczonym zakresie. Operacje rastrowe są dostępne w formatach metaplików WMF i EMF. Format metapliku EMF+ nie wykorzystuje bezpośrednio operacji rastrowych, ale może zawierać części EMF, osadzone metapliki WMF lub EMF.

Istnieją operacje rastrowe binarne i trójskładnikowe:

- Binarne operacje rastrowe są stosowane do poleceń rysowania piórem, takich jak rysowanie linii i krzywych. Podczas rysowania linii kolor pióra jest łączony z docelowym kolorem mapy bitowej (kolorem odpowiedniego piksela na powierzchni urządzenia) za pomocą określonych bitowych operacji logicznych z wartościami kolorów szesnastkowych. Poniższy przykład obrazu ilustruje efekt wszystkich 16 binarnych operacji rastrowych zastosowanych do 20 różnych pasków kolorów. Pionowe kolorowe paski są rysowane jako pierwsze, poziome paski są rysowane po zastosowaniu każdej binarnej operacji rastrowej. W prostych przypadkach R2_BLACK rysuje kolor czarny, R2_NOT odwraca kolor, R2_NOP nie zmienia tła, a R2_WHITE rysuje kolor biały.

<img src="/words/python-net/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="obsługa-metaplików-windows-aspose-words-net-1" style="width:650px"/>

- Podczas rysowania obrazów bitmapowych stosowane są potrójne operacje rastrowe. Łączą kolory odpowiednich pikseli obrazu bitmapowego, pędzla i docelowej mapy bitowej za pomocą bitowych operacji logicznych z określonymi wartościami kolorów szesnastkowych. Jednym z najczęstszych celów stosowania trójskładnikowych operacji rastrowych jest emulacja przezroczystości. Obraz przedstawiony w poniższym przykładzie pokazuje, w jaki sposób można emulować przezroczystość ikony. Istnieją dwa typy map bitowych: mapa bitowa z maską czarno-białą i mapa bitowa z kolorem. Najpierw rysowana jest mapa bitowa maski za pomocą operacji rastrowej SRCAND. Zmienia nieprzezroczysty obszar ikony na czarno-biały, pozostawiając obszar przezroczysty bez zmian. Następnie rysowana jest druga mapa bitowa za pomocą operacji rastrowej SRCINVERT. Wyświetla kolorowe piksele w czarnym obszarze, pozostawiając obszar przezroczysty niezmieniony.

<img src="/words/python-net/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="obsługa-metaplików-windows-aspose-words-net-2" style="width:650px"/>

Operacji rastrowych nie można bezpośrednio konwertować na grafikę wektorową. Aspose.Words emuluje operacje rastrowe, częściowo rasteryzując powierzchnię urządzenia, na którą wpływają operacje rastrowe. W tym celu wykorzystywana jest właściwość [emulate_raster_operations](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_raster_operations/).

{{% alert color="primary" %}}

Chociaż operacje rastrowe binarne nie są obecnie obsługiwane, a Aspose.Words obsługuje ograniczoną liczbę operacji rastrowych trójskładnikowych, może on bezpośrednio obsłużyć podstawowe przypadki konwersji do grafiki wektorowej, na przykład R2_BLACK, R2_WHITE, R2_NOP. Rasteryzacja powierzchni urządzenia znacząco wpływa również na wydajność, zwłaszcza gdy w grę wchodzi znaczna liczba rekordów operacji rastrowych.

{{% /alert %}}

Przykład pokazany poniżej pokazuje, jak Aspose.Words renderuje metaplik do mapy bitowej, gdy nie jest możliwe prawidłowe renderowanie niektórych rekordów metapliku do grafiki wektorowej:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir +  "Rendering.docx")

metafileRenderingOptions = aw.saving.MetafileRenderingOptions()
metafileRenderingOptions.emulate_raster_operations = False
metafileRenderingOptions.rendering_mode = aw.saving.MetafileRenderingMode.VECTOR_WITH_FALLBACK

saveOptions = aw.saving.PdfSaveOptions()
saveOptions.metafile_rendering_options = metafileRenderingOptions

doc.save(docs_base.artifacts_dir +"PdfSaveOptions.HandleRasterWarnings.pdf", saveOptions)
{{< /highlight >}}

## Ustawienia zastępcze metapliku

Aspose.Words nie obsługuje wielu funkcji metaplików, które są najbardziej złożone lub rzadkie. W takim przypadku Aspose.Words może zastosować inny typ odtwarzacza metaplików

Po pierwsze, Aspose.Words wykonuje powrót z odtwarzacza metaplików wektorowych do rastra, który jest kontrolowany przez właściwość [rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/rendering_mode/). Jeśli funkcja zastępcza jest wyłączona, Aspose.Words próbuje wyrenderować grafikę zastępczą zamiast funkcji, które nie są obsługiwane.

Aspose.Words pomyślnie odtwarza metaplik do rastra przy użyciu GDI+ na .NET, co sprawia, że ta opcja wywołania zwrotnego jest bezpieczna.

Po drugie, istnieje opcja dla metapliku EMF+ Dual, aby cofnąć się z odtwarzania części EMF+ do części EMF. Jest kontrolowany przez [emf_plus_dual_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emf_plus_dual_rendering_mode/). Jeśli podczas odtwarzania partii EMF wystąpią pewne problemy, można również wykonać powrót do trybu rastrowego.

Jeśli chodzi o operacje rastrowe, jeśli [emulate_raster_operations](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_raster_operations/) jest wyłączony, operacje rastrowe są uznawane za nieobsługiwane, co powoduje powrót do odtwarzacza metaplików bitmap, jeśli jest włączony. Dlatego jeśli masz metaplik z operacjami rastrowymi, ale nie chcesz używać emulacji operacji rastrowych, a jednocześnie chcesz uzyskać wynik wektorowy z grafiką podstawieniową, wybierz [MetafileRenderingMode.VECTOR](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingmode/#vector).
