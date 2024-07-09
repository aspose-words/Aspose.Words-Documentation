---
title: Tryb FIPS
second_title: Aspose.Words zamiast Java
articleTitle: Tryb FIPS
linktitle: Tryb FIPS
description: "Aspose.Words zamiast Java wykorzystuje kilka algorytmów kryptograficznych i haszowych podczas przetwarzania dokumentów w celu spełnienia standardów FIPS."
type: docs
weight: 80
url: /pl/java/fips-mode/
---

Aspose.Words wykorzystuje kilka algorytmów kryptograficznych i haszowych podczas przetwarzania dokumentów i ten artykuł opisuje, w jaki sposób jest on powiązany ze standardami FIPS.

Federalne Standardy Przetwarzania Informacji (FIPS) są zbiorem publicznie opublikowanych standardów opracowanych przez rząd federalny Stanów Zjednoczonych w celu ustanowienia wymogów dla różnych celów, takich jak zapewnienie bezpieczeństwa komputera i interoperacyjności.

## BouncyCastle do Rescue

Aspose.Words zamiast Java oraz Aspose.Words zamiast Android Użyj bouncy Castle FIPS JAR do szyfrowania, odszyfrowania i podpisywania dokumentów. W JAR został zaprojektowany i wdrożony w celu spełnienia wymagań FIPS 140-2, poziom 1.

FIPS 140-2 jest amerykańskim standardem bezpieczeństwa komputera używanym do zatwierdzania modułów kryptograficznych. Norma ta określa wymogi bezpieczeństwa, które zostaną spełnione przez moduł kryptograficzny i zapewnia wysoki poziom bezpieczeństwa, który obejmuje szeroki zakres potencjalnych zastosowań i środowisk. Więcej informacji na temat FIPS 140-2 znajduje się w: [Publikacja NIST](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003).

Aspose.Words zamiast .NET używa generalnej wersji Bouncy Castle bez wsparcia FIPS.

## Aktywacja trybu FIPS

Zaczynając od wersji 18.10 Aspose.Words umożliwia pracę w dwóch trybach: Ogólne i FIPS.

Domyślnie Aspose.Words działa w trybie ogólnym, więc w tym przypadku nie ma ograniczeń w stosowaniu algorytmów i kluczy.

Możesz się zamienić. Aspose.Words od trybu ogólnego do trybu FIPS przy użyciu następującej metody:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

Ze względów bezpieczeństwa nie można zmienić trybu z powrotem na General w czasie biegu.

Należy również zauważyć, że Aspose.Words nie może automatycznie rozpoznać, czy Twój system operacyjny jest w trybie FIPS, dlatego musisz przełączyć Aspose.Words do trybu FIPS wyraźnie

Aby się upewnić, użyj następującej metody: Aspose.Words zamiast Java jest w trybie FIPS:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

Kiedy tryb FIPS jest włączony, Ustaw słowa uniemożliwi Ci użycie niektórych algorytmów kryptograficznych i kluczy o niezatwierdzonej długości.

Na przykład, podczas próby otwarcia zaszyfrowanego dokumentu ODT, gdy tryb FIPS jest aktywny, można zobaczyć następujący wyjątek:

{{% alert color="primary" %}}

Niezatwierdzona operacja SecurityOperation Wyjątek: Próba otwarcia pliku ODT używającego algorytmu Blowfish. Algorytm ten nie znajduje się na liście algorytmów zatwierdzonych przez FIPS.

{{% /alert %}}

Dzieje się tak, ponieważ algorytm Blowfish nie znajduje się na liście zatwierdzonych algorytmów FIPS.

Podobny wyjątek może wystąpić, jeżeli używane są klucze o niewłaściwej długości:

Niezatwierdzona operacja SecurityOperation Wyjątek: Nie można używać klucza o rozmiarze 1024 dla RSA w trybie FIPS.

Więcej informacji na temat zatwierdzonej listy algorytmów można znaleźć na stronie: [Bouncy Castle Przewodnik podatkowy](https://downloads.bouncycastle.org/fips-java/docs/BC-FJA-UserGuide-1.0.1.pdf), "Cipher Algorithms (Symmetric)".


