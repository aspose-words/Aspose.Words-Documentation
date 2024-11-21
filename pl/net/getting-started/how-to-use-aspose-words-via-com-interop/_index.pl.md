---
title: Aspose.Words dla .NET poprzez COM Interop
second_title: Aspose.Words dla .NET
articleTitle: Jak używać Aspose.Words dla .NET za pośrednictwem COM Interop
linktitle: Jak używać Aspose.Words dla .NET za pośrednictwem COM Interop
type: docs
description: "Używaj Aspose.Words dla .NET poprzez COM Interop w Python, PHP, VBScript, JScript i innych językach programowania."
weight: 130
url: /pl/net/how-to-use-aspose-words-via-com-interop/
timestamp: 2024-09-25-11-08-55
---

Informacje zawarte w tym temacie dotyczą scenariuszy, w których chcesz używać Aspose.Words dla .NET za pośrednictwem COM Interop w dowolnym z następujących języków programowania:

- ASP
- Delphi ([Przykład](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/ReleasePreparation/Showcases/Aspose_Words_for_NET_via_COM_Delphi))
-JScript
- Perl
- PHP
- Konstruktor mocy
- Python
-Skrypt VB
- Visual Basic

## Pracuj z COM Interop

Aspose.Words dla .NET jest wykonywany pod kontrolą pliku .NET Framework i nazywa się to kodem zarządzanym. Kod napisany we wszystkich powyższych językach działa poza formatem .NET Framework i nazywany jest kodem niezarządzanym. Interakcja między kodem niezarządzanym a Aspose.Words odbywa się za pośrednictwem narzędzia .NET zwanego COM Interop.

Obiekty Aspose.Words są obiektami .NET, ale użyte w formacie COM Interop w Twoim języku programowania pojawiają się jako obiekty COM. Dlatego najlepiej jest upewnić się, że wiesz, jak tworzyć i używać obiektów COM w swoim języku programowania, zanim zaczniesz używać Aspose.Words.

Oto tematy, które ostatecznie będziesz musiał opanować:

- Używanie obiektów COM w swoim języku programowania. Zobacz dokumentację języka programowania i tematy dotyczące poszczególnych języków w dalszej części tej dokumentacji.
- Praca z obiektami COM eksponowanymi przez .NET COM Interop. Zobacz [Interoperowanie za pomocą kodu niezarządzanego](https://learn.microsoft.com/en-us/dotnet/framework/interop/) i [Ekspozycja komponentów .NET Framework na COM](https://learn.microsoft.com/en-us/dotnet/framework/interop/exposing-dotnet-components-to-com) w MSDN.
- Obiektowy model dokumentu Aspose.Words. Zobacz Aspose.Words [Przewodnik programisty](/words/pl/net/developer-guide/) i [API Reference](https://reference.aspose.com/words/net/).

## Zarejestruj Aspose.Words dla .NET z COM Interop

Po [Instalacja](/words/pl/net/installation/) musisz zarejestrować Aspose.Words dla COM Interop za pomocą narzędzia `regasm.exe`.

`regasm.exe` to narzędzie zawarte w formacie .NET Framework SDK. Wszystkie narzędzia .NET Framework SDK znajdują się w katalogu `%windir%\Microsoft .NET\Framework\<FrameworkVersion>\`, na przykład *C:\Windows\Microsoft .NET\Framework\v4.0.30319*.

Aby uzyskać plik tlb, uruchom `C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe <installdir>\lib\net40-client\Aspose.Words.dll /tlb /codebase` w cmd, gdzie `<installdir>` to katalog, w którym zainstalowałeś Aspose.Words, zazwyczaj `%USERPROFILE%\.nuget\packages\aspose.words\`.

## Pracuj z Aspose.Words poprzez COM Interop

### ProgIDs

ProgID oznacza "identyfikator programowy", jest to nazwa klasy `COM`, której należy użyć, aby utworzyć obiekt.

Obecnie Aspose.Words definiuje cztery publicznie tworzone obiekty COM. Ich ProgIDs to:

- ComHelper
- Dokument
- Kreator dokumentów
- Licencja

ProgIDs składa się z nazwy biblioteki ("Aspose.Words") i nazwy klasy.

### Wpisz bibliotekę

Podczas instalacji plik Aspose.Words.tlb (biblioteka typów COM) jest kopiowany na komputer do:

-Dla .NET Framework 4.0 do **<installdir>Klient \lib\net40**

Jeśli Twój język programowania (na przykład Visual Basic lub Delphi) pozwala na odwoływanie się do biblioteki typów `COM`, dodaj odwołanie do **Aspose.Words.tlb**, a będziesz mógł zobaczyć wszystkie klasy, metody, właściwości i wyliczenia Aspose.Words w swojej przeglądarce obiektów.

### Tworzenie obiektów COM

Tworzenie obiektu .NET przebiega podobnie do tworzenia normalnego obiektu COM:

**VBScript**

```
Słaby pomocnik
Ustaw pomocnika = CreateObject("Aspose.Words.ComHelper")
 
```

Po utworzeniu możesz uzyskać dostęp do metod i właściwości obiektu, tak jakby był to obiekt `COM`:

**VBScript**

```
Ciemny doktor
Ustaw doc = pomocnik.Open("C:\my.doc")
 
```

Niektóre metody mają przeciążenia i zostaną ujawnione przez COM Interop z dodanym sufiksem numerycznym, z wyjątkiem pierwszej metody, która pozostaje niezmieniona. Na przykład przeciążenia metod `Document.Save` stają się `Document.Save`, `Document.Save_2`, `Document.Save_3` i tak dalej.

Aby uzyskać więcej informacji, zobacz artykuły dotyczące poszczególnych języków w dalszej części tej dokumentacji.

### Tworzenie zespołu opakowania

Jeśli chcesz użyć wielu klas, metod i właściwości Aspose.Words, rozważ utworzenie zestawu opakowania (przy użyciu C# lub dowolnego innego języka programowania .NET), który pomoże uniknąć używania Aspose.Words bezpośrednio z kodu niezarządzanego.

Dobrym podejściem jest opracowanie zestawu .NET, który odwołuje się do Aspose.Words i wykonuje z nim całą pracę, a jednocześnie udostępnia niezarządzany kod jedynie minimalny zestaw klas i metod. Twoja aplikacja powinna wtedy działać tylko z biblioteką opakowań.

Zmniejszenie liczby klas i metod, które należy wywołać za pośrednictwem COM Interop, może uprościć projekt, ponieważ używanie klas .NET za pośrednictwem COM Interop często wymaga zaawansowanych umiejętności.
