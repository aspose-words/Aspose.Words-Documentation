---
title: Hoe de voorbeelden uit te voeren
second_title: Aspose.Words voor C++
articleTitle: Hoe de voorbeelden uit te voeren
linktitle: Hoe de voorbeelden uit te voeren
description: "Download Aspose.Words voor C++ voorbeelden uit onze GitHub repository en leer hoe u ze kunt uitvoeren om meer vertrouwd te raken met de Aspose.Words mogelijkheden en functies."
type: docs
weight: 110
url: /nl/cpp/how-to-run-the-examples/
timestamp: 2024-07-11-16-13-28
---

Om meer vertrouwd te raken met de Aspose.Words mogelijkheden en functies bieden we voorbeelden die kunnen worden gedownload van onze GitHub repository, uitvoeren en in detail leren.

In dit artikel vindt u de systeemvereisten en informatie over het uitvoeren van de voorbeelden.

## Windows met Nuget pakket

### Software vereisten en vereisten

Zorg ervoor dat u aan de volgende vereisten voldoet voordat u de voorbeelden downloadt en uitvoert:

1. Visual Studio Code, Visual Studio 2022.
2. NuGet Package Manager geïnstalleerd en de laatste NuGet API versie voor Visual Studio. (optioneel)
3. Optie **nuget.org** geselecteerd in het dialoogvenster "Extra → Opties" onder "NuGet pakketbeheer → pakketbronnen".
4. Een actieve internetverbinding om de functie `NuGet` automatisch Pakketherstel te gebruiken in het project voorbeelden. Als u geen actieve internetverbinding hebt op de machine waar de voorbeelden moeten worden uitgevoerd, volg dan de aanwijzingen van Windows met Cmake pakket.

### Download en voer de voorbeelden uit

Alle Aspose.Words voor C++ voorbeelden worden gehost op [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). U kunt de repository klonen met uw favoriete GitHub client of downloaden [het ZIP bestand](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Na het verkrijgen van een kopie van de repository, kunt u vinden dat:

- Alle voorbeelden bevinden zich in de map **Examples**.
- Er zijn Visual Studio oplossingsbestanden voor C++ aangemaakt in Visual Studio 2022.

Als u de voorbeelden wilt uitvoeren, opent u het oplossingsbestand in Visual Studio en bouwt u het project op:

- Voor **API Reference** voorbeelden is de structuur gebaseerd op klassenamen, voor **Docs** voorbeelden is het meestal gebaseerd op de [Ontwikkelaar Guiled](/words/cpp/developer-guide/) documentatie sectie.
- Bij de eerste run worden de afhankelijkheden automatisch gedownload via NuGet.
- De map **Data** in de hoofdmap van **Examples** bevat invoerbestanden die in de voorbeelden zijn gebruikt.
- Alle voorbeelden kunnen als eenheidstests worden uitgevoerd.

## Windows met CMake pakket

### Software vereisten en vereisten

Zorg ervoor dat u aan de volgende vereisten voldoet voordat u de voorbeelden downloadt en uitvoert:

1. Visual Studio Code, Visual Studio 2022.
2. [Cmake](https://cmake.org/download/) >= 3.16.0
3. Download lastest CMake pakket van https://downloads.aspose.com/words/cpp

### Download en voer de voorbeelden uit

Alle Aspose.Words voor C++ voorbeelden worden gehost op [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). U kunt de repository klonen met uw favoriete GitHub client of downloaden [het ZIP bestand](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Plaats mappen `Aspose.Words.Cpp` en `CodePorting.Native.Cs2Cpp_*` in de hoofdmap van een kopie van de repository.

Alle voorbeelden bevinden zich in de map **Examples**.

Om de voorbeelden uit te voeren, voert u de volgende commando ' s uit vanaf de root van een kopie van de repository:
{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S Examples\DocsExamples\ -B Examples\DocsExamples\build
{{< /highlight >}}

De oplossing voor Visual Studio wordt gegenereerd in de `Examples\DocsExamples\build`

Als u de voorbeelden wilt uitvoeren, opent u het oplossingsbestand in Visual Studio en bouwt u het project op:

- Voor **API Reference** voorbeelden is de structuur gebaseerd op klassenamen, voor **Docs** voorbeelden is het meestal gebaseerd op de [Ontwikkelaar Guiled](/words/cpp/developer-guide/) documentatie sectie.
- De map **Data** in de hoofdmap van **Examples** bevat invoerbestanden die in de voorbeelden zijn gebruikt.
- Alle voorbeelden kunnen als eenheidstests worden uitgevoerd.

## Linux

### Software vereisten en vereisten

Zorg ervoor dat u aan de volgende vereisten voldoet voordat u de voorbeelden downloadt en uitvoert:

1. CLang >= 3.9.1
2. [Ninja](https://ninja-build.org/)
3. [Cmake](https://cmake.org/download/) >= 3.16.0
4. Download lastest CMake pakket van https://downloads.aspose.com/words/cpp

### Download en voer de voorbeelden uit

Alle Aspose.Words voor C++ voorbeelden worden gehost op [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). U kunt de repository klonen met uw favoriete GitHub client of downloaden [het ZIP bestand](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Plaats mappen `Aspose.Words.Cpp` en `CodePorting.Native.Cs2Cpp_*` in de hoofdmap van een kopie van de repository.

Alle voorbeelden bevinden zich in de map **Examples**.

Om de voorbeelden uit te voeren, voert u de volgende commando ' s uit vanaf de root van een kopie van de repository:
{{< highlight bash >}}
cmake -S Examples/DocsExamples -B Examples/DocsExamples/build -D CMAKE_BUILD_TYPE=Release
cmake --build Examples/DocsExamples/build

cmake -E chdir Examples/DocsExamples/build ctest --verbose
{{< /highlight >}}

- Voor **API Reference** voorbeelden is de structuur gebaseerd op klassenamen, voor **Docs** voorbeelden is het meestal gebaseerd op de [Ontwikkelaar Guiled](/words/cpp/developer-guide/) documentatie sectie.
- De map **Data** in de hoofdmap van **Examples** bevat invoerbestanden die in de voorbeelden zijn gebruikt.
- Alle voorbeelden kunnen als eenheidstests worden uitgevoerd.

{{% alert color="primary" %}}

Voel je vrij om contact op te nemen met onze [Aspose.Words Product Familie Forum](https://forum.aspose.com/c/words/8) als je problemen hebt met het opzetten of uitvoeren van de voorbeelden.

{{% /alert %}}

## Bijdragen aan het verbeteren van de voorbeelden

Als je een voorbeeld wilt toevoegen of verbeteren, moedigen we je aan om een bijdrage te leveren aan het project. Alle voorbeelden en showcase projecten in deze repository zijn open source en kunnen vrij worden gebruikt in uw applicaties.

Je kunt de repository forken, de broncode bewerken en een pull request maken om bij te dragen. We zullen de wijzigingen bekijken en opnemen in de repository indien nuttig gevonden.

## Zie Ook

- [Details over het installeren van NuGet Package Manager](https://docs.microsoft.com/nuget/guides/install-nuget)
