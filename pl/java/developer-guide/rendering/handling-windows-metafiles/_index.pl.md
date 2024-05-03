---
title: Postępowanie Windows Metafile w Java
second_title: Aspose.Words zamiast Java
articleTitle: Postępowanie Windows Metafile
linktitle: Postępowanie Windows Metafile
description: "Aspose.Words zamiast Java wdraża własne Windows Metafile gracz do odtwarzania formatu Metafile na wszystkich platformach i obsługuje obsługę podstawowych funkcji metafile i może wykonywać zwroty do innego typu metafile gracza."
type: docs
weight: 30
url: /pl/java/handling-windows-metafiles/
---

Windows Format Metafile to format pliku obrazu, który może zawierać zarówno grafikę wektorową jak i rasterową. Format ten jest używany do przechowywania danych graficznych w plikach pamięci lub na dysku. Metafile przechowuje listę wywołań funkcji w Windows Graficzny interfejs urządzenia (GDI), który musi być wykonany, aby wyświetlić obraz na ekranie. System interpretuje i wykonuje te polecenia w kontekście wyświetlania.

Wcześniej, Windows Metafile był jedynym format obrazu wektorowego obsługiwany przez Microsoft Word. Microsoft Word teraz również obsługuje format SVG, ale format metafilowy jest nadal powszechnie stosowany w dokumentach Word. Ponadto, Metafile może być format wymiany dla niektórych innych aplikacji, takich jak Microsoft Visio. Zasadniczo głównym celem Metafile jest zapewnienie wymiany informacji graficznych między Windows wniosków.

Istnieją 3 wersje Windows Metafile:

- WMF - sklepy dzwonią do 16bit GDI.
- EMF - sklepy połączenia do Win32 / GDI.
- EMF + Metafile sklepy zadzwonić do GDI +. EMF + Metafile mogą być również podwójne, opisując tę samą grafikę zarówno z części EMF jak i EMF +.

Istniejący problem Windows Metafile jest to, że nie jest obsługiwane przez większość formatów nie Word, do których dokumenty są zwykle zapisywane. Dlatego wymagane jest przekształcenie formatu Metafile do innych formatów rastrowych lub wektorowych. Łatwo jest przekonwertować Windows Metafile do rastrowego obrazu na .NET po prostu przekazać go do GDI +, ale nie jest to możliwe na innych platformach, ponieważ nawet GDI + nie zapewnia funkcjonalności do wydobycia grafiki wektorowej z Metafile. Aby rozwiązać te problemy, Aspose.Words wdraża własne Windows Odtwarzacz metafilowy, który jest w stanie odtwarzać format metafilowy zarówno wektorowe jak i rastrowe grafiki na wszystkich platformach.

## Kontrola Aspose.Words Metafile Player

W [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/) klasa pozwala kontrolować odtwarzacz metafilowy. Na przykład, można określić, jak metafile obrazy powinny być renderowane za pomocą [RenderingMode](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingmode/) właściwość, która ma szczególne znaczenie przy konwersji do bitmaps (patrz również [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions) nieruchomości).

## Wsparcie operacji rastrowych

Operacje rastrowe są złożoną funkcją metafilową, która obecnie ma ograniczone wsparcie. Operacje rastrowe są dostępne w formatach metafilowych WMF i EMF. Format EMF + metafil nie wykorzystuje bezpośrednio operacji rastrowych, ale może zawierać części EMF, wbudowane metafile WMF lub EMF.

Istnieją operacje binarne i rastrowe ternary:

- Operacje rastrowe stosowane są do poleceń rysowania pióra, takich jak linie rysowania i krzywe. Przy rysowaniu linii, kolor długopisu jest połączony z kolorem bitmapy docelowej (kolor odpowiadającego piksela na powierzchni urządzenia) za pomocą określonych operacji logicznych bitwise z wartościami barw hex. Poniższy przykład obrazka ilustruje efekt wszystkich 16 operacji binarnych rastrowych zastosowanych do 20 różnych pasków kolorów. Pionowe paski kolorów są rysowane najpierw, poziome paski są rysowane po każdej operacji binarnej raster jest stosowany. W prostych przypadkach, R2_BLACK czerni, R2_ NIE zmienia koloru, R2_NOP nie zmienia tła, oraz R2_WHITE rysuje biel.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-java-1" style="width:650px"/>

- Ternary raster operacji są stosowane podczas rysowania obrazów bitmap. Łączą one kolory odpowiednich bitmap pikseli obrazu, pędzla i bitmap docelowej za pomocą operacji logicznych bitwise z określonymi wartościami koloru hex. Jednym z najczęstszych celów korzystania z operacji rastrowych jest emulacja przejrzystości. Obraz przedstawiony w poniższym przykładzie pokazuje jak można emulować przejrzystość ikon. Istnieją dwa rodzaje bitmap: bitmap maski b / w i bitmap koloru. Po pierwsze, maska bitmap jest rysowana z operacji SRCAND raster. Zmienia nieprzezroczysty region ikon na czarno-biały, pozostawiając przezroczysty region bez zmian. Drugą mapę bitową rysuje się za pomocą operacji SRCINVERT. Wyświetla kolor pikseli na czarnym obszarze, pozostawiając przezroczysty region bez zmian.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-java-2" style="width:650px"/>

Operacje rastrowe nie mogą być konwertowane bezpośrednio na grafikę wektorową. Aspose.Words emuluje operacje rastrowe poprzez częściowe rasterowanie powierzchni urządzenia dotkniętej operacjami rastrowymi. W tym celu [EmulateRasterOperations](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRasterOperations) nieruchomość jest używana.

{{% alert color="primary" %}}

Podczas gdy operacje rastrowe binarne nie są obecnie obsługiwane, a ograniczona liczba operacji rastrowych jest obsługiwana przez Aspose.Words, może obsługiwać podstawowe przypadki konwersji na grafikę wektorową bezpośrednio, na przykład, R2_BLACK, R2_WHITE, R2_NOP. Rasteryzacja powierzchni urządzenia ma również znaczący wpływ na wydajność, zwłaszcza jeśli chodzi o znaczną liczbę zapisów operacji rastrowych.

{{% /alert %}}

Przykład przedstawiony poniżej pokazuje jak Aspose.Words sprawia, że metafil do mapy bitowej, gdy nie jest możliwe prawidłowe wykonanie niektórych metafilów do grafiki wektorowej:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HandleDocumentWarnings-HandleDocumentWarnings.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderMetafileToBitmap-RenderMetafileToBitmap.java" >}}
