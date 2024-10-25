---
title: Hoe Om Voorbeelde Uit Te voer
second_title: Aspose.Words vir C++
articleTitle: Hoe Om Voorbeelde Uit Te voer
linktitle: Hoe Om Voorbeelde Uit Te voer
description: "Aflaai Aspose.Words vir C++ voorbeelde van ons GitHub bewaarplek en leer hoe om hulle uit te voer om meer vertroud te raak met die Aspose.Words moontlikhede en funksies."
type: docs
weight: 110
url: /af/cpp/how-to-run-the-examples/
---

Om meer vertroud te raak met die Aspose.Words moontlikhede en funksies bied ons voorbeelde wat afgelaai kan word van ons GitHub bewaarplek, hardloop, en leer in detail.

In hierdie artikel kan u die stelselvereistes vind, sowel as inligting oor hoe om die voorbeelde uit te voer.

## Windows Met Nuget Pakket

### Sagteware Vereistes en Voorvereistes

Maak asseblief seker dat u aan die volgende vereistes voldoen voordat u die voorbeelde aflaai en uitvoer:

1. Visual Studio Kode, Visual Studio 2022.
2. Geïnstalleer NuGet Pakketbestuurder en die nuutste NuGet API weergawe vir Visual Studio. (opsioneel)
3. Geselekteerde **nuget.org** opsie in die dialoogkassie" Tools Argentia Options "onder"NuGet Pakketbestuurder Argentia Pakketbronne".
4. 'n aktiewe Internetverbinding om die `NuGet` Outomatiese Pakketherstelfunksie in Die Voorbeeldprojek te gebruik. As jy nie'n aktiewe Internet konneksie op die masjien waar die voorbeelde uitgevoer moet word volg die aanwysings van Windows met Cmake Pakket.

### Laai en Hardloop Die Voorbeelde

Almal Aspose.Words vir C++ voorbeelde word aangebied op [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). U kan die bewaarplek kloon met u gunsteling GitHub - kliënt of aflaai [die ZIP lêer](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Nadat jy'n afskrif van die bewaarplek gekry het, kan jy vind dat:

- Al die voorbeelde is in die **Examples** gids.
- Daar is Visual Studio oplossing lêers vir C++ geskep in Visual Studio 2022.

Om die voorbeelde uit te voer, maak die oplossing lêer in Visual Studio en bou die projek:

- Vir **API Reference** voorbeelde, is die struktuur gebaseer op klas name, vir **Docs** voorbeelde is dit meestal gebaseer op die [Ontwikkelaar Guiled](/words/cpp/developer-guide/) dokumentasie afdeling.
- Op die eerste run, sal die afhanklikhede outomaties afgelaai word via NuGet.
- Die **Data** gids by die wortel gids van **Examples** bevat insette lêers wat gebruik is in die voorbeelde.
- Alle voorbeelde kan as eenheidstoetse uitgevoer word.

## Windows Met CMake Pakket

### Sagteware Vereistes en Voorvereistes

Maak asseblief seker dat u aan die volgende vereistes voldoen voordat u die voorbeelde aflaai en uitvoer:

1. Visual Studio Kode, Visual Studio 2022.
2. [Cmake](https://cmake.org/download/) >= 3.16.0
3. Aflaai lastest CMake Pakket van https://downloads.aspose.com/words/cpp

### Laai en Hardloop Die Voorbeelde

Almal Aspose.Words vir C++ voorbeelde word aangebied op [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). U kan die bewaarplek kloon met u gunsteling GitHub - kliënt of aflaai [die ZIP lêer](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Plaas dopgehou `Aspose.Words.Cpp` en `CodePorting.Native.Cs2Cpp_*` in die wortel van'n kopie van die bewaarplek.

Al die voorbeelde is in die **Examples** gids.

Om die voorbeelde loop die volgende opdragte van die wortel van'n kopie van die bewaarplek:
{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S Examples\DocsExamples\ -B Examples\DocsExamples\build
{{< /highlight >}}

Die oplossing vir Visual Studio sal gegenereer word in die `Examples\DocsExamples\build`

Om die voorbeelde uit te voer, maak die oplossing lêer in Visual Studio en bou die projek:

- Vir **API Reference** voorbeelde, is die struktuur gebaseer op klas name, vir **Docs** voorbeelde is dit meestal gebaseer op die [Ontwikkelaar Guiled](/words/cpp/developer-guide/) dokumentasie afdeling.
- Die **Data** gids by die wortel gids van **Examples** bevat insette lêers wat gebruik is in die voorbeelde.
- Alle voorbeelde kan as eenheidstoetse uitgevoer word.

## Linux

### Sagteware Vereistes en Voorvereistes

Maak asseblief seker dat u aan die volgende vereistes voldoen voordat u die voorbeelde aflaai en uitvoer:

1. CLang >= 3.9.1
2. [Ninja](https://ninja-build.org/)
3. [Cmake](https://cmake.org/download/) >= 3.16.0
4. Aflaai lastest CMake Pakket van https://downloads.aspose.com/words/cpp

### Laai en Hardloop Die Voorbeelde

Almal Aspose.Words vir C++ voorbeelde word aangebied op [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). U kan die bewaarplek kloon met u gunsteling GitHub - kliënt of aflaai [die ZIP lêer](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Plaas dopgehou `Aspose.Words.Cpp` en `CodePorting.Native.Cs2Cpp_*` in die wortel van'n kopie van die bewaarplek.

Al die voorbeelde is in die **Examples** gids.

Om die voorbeelde loop die volgende opdragte van die wortel van'n kopie van die bewaarplek:
{{< highlight bash >}}
cmake -S Examples/DocsExamples -B Examples/DocsExamples/build -D CMAKE_BUILD_TYPE=Release
cmake --build Examples/DocsExamples/build

cmake -E chdir Examples/DocsExamples/build ctest --verbose
{{< /highlight >}}

- Vir **API Reference** voorbeelde, is die struktuur gebaseer op klas name, vir **Docs** voorbeelde is dit meestal gebaseer op die [Ontwikkelaar Guiled](/words/cpp/developer-guide/) dokumentasie afdeling.
- Die **Data** gids by die wortel gids van **Examples** bevat insette lêers wat gebruik is in die voorbeelde.
- Alle voorbeelde kan as eenheidstoetse uitgevoer word.

{{% alert color="primary" %}}

Voel asseblief vry om uit te reik met behulp van ons [Aspose.Words Produkfamilie Forum](https://forum.aspose.com/c/words/8) as u probleme ondervind met die opstel of uitvoer van die voorbeelde.

{{% /alert %}}

## Help Om Die Voorbeelde Te Verbeter

As jy'n voorbeeld wil byvoeg of verbeter, moedig ons jou aan om by te dra tot die projek. Alle voorbeelde en vertoonprojekte in hierdie bewaarplek is open source en kan vrylik in u toepassings gebruik word.

U kan die bewaarplek vurk, die bronkode wysig en'n trekversoek skep om by te dra. Ons sal die veranderinge hersien en dit in die bewaarplek insluit indien dit nuttig gevind word.

## Sien Ook

- [Besonderhede oor hoe om NuGet Pakketbestuurder te installeer](https://docs.microsoft.com/nuget/guides/install-nuget)
