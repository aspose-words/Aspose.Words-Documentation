---
title: Installasie
second_title: Aspose.Words vir .NET
articleTitle: Installasie
linktitle: Installasie
description: "Installeer Aspose.Words vir .NET gebruik Visual Studio gereedskap Soos Bestuur NuGet Pakkette of Package Manager Console en die MSI installeerder. Gebruik die Full Trust toestemming stel in C#."
type: docs
weight: 10
url: /af/net/installation/
---

Maak seker dat jou masjien voldoen aan die [stelselvereistes](/words/net/system-requirements/) voordat jy begin.

Hierdie artikel verduidelik hoe om te installeer Aspose.Words vir .NET op jou rekenaar.

## Installeer of Werk Op Aspose.Words vir .NET Gebruik Bestuur NuGet Pakkette {#install-or-update-aspose-words-for-net-using-nuget}

NuGet is die maklikste manier om af te laai en te installeer [Aspose.Words vir .NET](https://www.nuget.org/packages/Aspose.Words/) APIs. Om dit te doen, volg hierdie stappe:

1. Open *Microsoft Visual Studio* en *Manage NuGet Packages* vanaf die kieslys om pakketbestuurder oop te maak
2. Soek vir "aspose" of " aspose.woorde " om die gewenste Aspose APIte vind<br>
   <img src="aspose-words-nuget.png" alt="aspose-words-nuget" style="width:800px"/>
3. Kies Die gewenste Aspose API en klik op"Installeer"

Die geselekteerde API sal afgelaai en verwys word in jou projek.

Jy kan ook opdateer Aspose.Words vir .NET na die gewenste weergawe met behulp van *Manage NuGet Packages*.

## Installeer of Werk Aspose.Words Met Package Manager Console

U kan ook installeer of opdateer Aspose.Words vir .NET APIs gebruik die *Package Manager Console*. Om dit te doen, volg hierdie stappe:

1. Open *Microsoft Visual Studio* en *Package Manager Console* vanaf die kieslys om pakketbestuurderkonsole oop te maak<br>
   <img src="aspose-words-nuget-update.png" alt="aspose-words-nuget-update" style="width:600px"/>
2. Tik die opdrag `Install-Package Aspose.Words` en druk Enter om die nuutste volledige weergawe in u toepassing te installeer<br>
   <img src="aspose-words-nuget-update-2.png" alt="aspose-words-nuget-update-2" style="width:600px"/><br>
   {{% alert color="primary" %}}In addition, you can add the `-prerelease` suffix to the command to specify that the latest release, including hotfixes, should also be installed.{{% /alert %}}
3. Sodra dit afgelaai is, sal jy bevestigingsboodskappe sien<br>
   <img src="aspose-words-nuget-istalled.png" alt="aspose-words-nuget-istalled" style="width:600px"/><br>
   {{% alert color="primary" %}}If you are unfamiliar with the [Aspose EULA](https://about.aspose.com/legal/eula/), it is recommended to read the license referenced in the URL.{{% /alert %}}
4. Nou kan jy vind dat Aspose.Words suksesvol bygevoeg en verwys is in jou aansoek vir jou<br>
   <img src="aspose-words-nuget-references.png" alt="aspose-words-nuget-references" style="width:400px"/>

In *Package Manager Console*, kan jy ook die `Update-Package Aspose.Words` opdrag gebruik om te kyk vir updates om die Aspose.Words pakket en installeer hulle indien teenwoordig. U kan ook die `-prerelease` agtervoegsel byvoeg om die nuutste weergawe op te dateer.

## Installeer Aspose.Words vir .NET Gebruik Installeerder

Aspose.Words vir .NET kan geïnstalleer word deur direkte aflaai van die MSI installeerder van die [aflaai afdeling](https://releases.aspose.com/words/).

{{% alert color="primary" %}}

Jy moet ingeteken wees om die installeerder af te laai. As jy nog nie geregistreer is nie, kan jy gratis aanmeld.

{{% /alert %}}

Om Te Installeer Aspose.Words vir .NET, volg hierdie stappe:

1. Aflaai `Aspose.Words_{LatestVersion}.msi` van die [aflaai afdeling](https://releases.aspose.com/words/)
2. Doble-klik op die afgelaaide lêer en begin sodoende die setup wizard, volg die setup wizard-instruksies<br>
   <img src="aspose-words-setup-1.png" alt="aspose-words-setup-1" style="width:500px"/>
3. Wanneer die setup wizard die installasie voltooi, sal die vereiste lêers beskikbaar wees in die gids by die verskafde gids pad<br>
   <img src="aspose-words-setup-4.jpg" alt="aspose-words-setup-4" style="width:500px"/>
4. Open jou oplossing / projek in Visual Studio
5. Regskliek op u projek in *Solution Explorer* en voeg die verwysing na geïnstalleerde samestellings by
6. Aspose.Words vir .NET geïnstalleerde samestellings verskyn in uitbreidings onder die Samestellingsafdeling-kies net die vereiste DLL - komponent<br>
   <img src="aspose-words-setup-5.png" alt="aspose-words-setup-5" style="width:800px"/>
7. Klik op OK

## Oorwegings Wanneer Dit In'n Gedeelde Bediener Omgewing Loop

Alle Aspose .NET komponente word aanbeveel om te hardloop met die *Full Trust* toestemming stel. Dit is omdat Aspose .NET komponent soms toegang tot register instellings en lêers geleë in plekke anders as die virtuele gids, soos lees lettertipes nodig. Verder is `Aspose.NET` komponente gebaseer op kern .NET stelsel klasse, waarvan sommige ook *Full Trust* toestemming vereis om in sommige gevalle te hardloop.

Internetdiensverskaffers wat verskeie toepassings van verskillende maatskappye aanbied, handhaaf meestal *Medium Trust* sekuriteitsvlak. In die geval van .NET 2.0, kan so'n sekuriteitsvlak die volgende beperkings oplê, wat die vermoë van Aspose.Words om behoorlik te presteer, kan beïnvloed:

- **RegistryPermission** is nie beskikbaar nie. Dit beteken dat jy nie toegang tot die register kan kry nie, wat vereis word om geïnstalleerde lettertipes op te tel wanneer dokumente weergegee word.
- **FileIOPermission** is beperk. Dit beteken dat u slegs toegang tot lêers in die virtuele gidshiërargie van u toepassing kan kry. Dit beteken ook moontlik dat lettertipes nie tydens uitvoer gelees kan word nie.

Om hierdie redes hierbo gespesifiseer, word dit aanbeveel om Aspose.Words met Full Trust regte te hardloop. Jy kan vind dat sommige van die biblioteek funksies sal werk wanneer die uitvoering van verskillende take met Medium vertroue, en sommige sal nie, byvoorbeeld, lewering. Dit kan verband hou met GDI+ beeldverwerking oproepe.
