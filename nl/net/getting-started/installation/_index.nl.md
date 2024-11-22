---
title: Installatie
second_title: Aspose.Words voor .NET
articleTitle: Installatie
linktitle: Installatie
description: "Installeren Aspose.Words voor .NET gebruik Visual Studio instrumenten zoals Manage NuGet Packages of Package Manager Console en de MSI installateur. Gebruik de Full Trust toestemming ingesteld in C#."
type: docs
weight: 10
url: /nl/net/installation/
timestamp: 2024-01-27-14-07-04
---

Zorg ervoor dat uw machine voldoet aan de [Systeemeisen](/words/nl/net/system-requirements/) Voordat je begint.

Dit artikel legt uit hoe te installeren Aspose.Words voor .NET Op je computer.

## Installeren of bijwerken Aspose.Words voor .NET gebruik Manage NuGet Packages {#install-or-update-aspose-words-for-net-using-nuget}

NuGet is de gemakkelijkste manier om te downloaden en te installeren [Aspose.Words voor .NET](https://www.nuget.org/packages/Aspose.Words/) APIs. Om dit te doen, volg deze stappen:

1. OpenenMicrosoft Visual Studio* en *Manage NuGet Packages* vanuit het menu om pakketbeheer te openen
2. Zoek naar "aspose" of "aspose.words" om de gewenste Aspose te vinden API<br/>
      <img src="/words/net/installation/aspose-words-nuget.png" alt="aspose-words-nuget" style="width:800px"/>
3. Selecteer de gewenste instelling API en klik op "Installeren"

De geselecteerde API zal worden gedownload en referentie in uw project.

U kunt ook updaten Aspose.Words voor .NET naar de gewenste versie met behulp van *Manage NuGet Packages*.

## Installeren of bijwerken Aspose.Words gebruik Package Manager Console

U kunt ook installeren of bijwerken Aspose.Words voor .NET APIsmPackage Manager Console*. Om dit te doen, volg deze stappen:

1. OpenenMicrosoft Visual Studio* en *Package Manager Console* vanuit het menu om pakketbeheerconsole te openen<br/>
      <img src="/words/net/installation/aspose-words-nuget-update.png" alt="aspose-words-nuget-update" style="width:600px"/>
2. Typ het commando `Install-Package Aspose.Words` en druk op Enter om het laatste volledige bericht in uw toepassing te installeren<br/>
   <img src="/words/net/installation/aspose-words-nuget-update-2.png" alt="aspose-words-nuget-update-2" style="width:600px"/><br/>
   {{% alert color="primary" %}}Daarnaast kunt u de `-prerelease` achtervoegsel aan het commando om aan te geven dat de nieuwste release, inclusief hotfixes, ook moet worden geïnstalleerd.{{% /alert %}}
3. Eenmaal gedownload, ziet u bevestigingsberichten<br/>
   <img src="/words/net/installation/aspose-words-nuget-istalled.png" alt="aspose-words-nuget-istalled" style="width:600px"/><br/>
   {{% alert color="primary" %}}Als u onbekend bent met de [EULA](https://about.aspose.com/legal/eula/), het wordt aanbevolen om de licentie waarnaar in de URL wordt verwezen te lezen.{{% /alert %}}
4. Nu kunt u vinden dat Aspose.Words is succesvol toegevoegd en verwezen in uw toepassing voor u<br/>
      <img src="/words/net/installation/aspose-words-nuget-references.png" alt="aspose-words-nuget-references" style="width:400px"/>

In *Package Manager Console*, kunt u ook gebruik maken van de `Update-Package Aspose.Words` opdracht om te controleren op updates van de Aspose.Words pakket en installeer ze indien aanwezig. U kunt ook de `-prerelease` achtervoegsel om de nieuwste versie bij te werken.

## Installeren Aspose.Words voor .NET met Installer

Aspose.Words voor .NET kan worden geïnstalleerd door het direct downloaden van de MSI installatie van de [sectie downloads](https://releases.aspose.com/words/).

{{% alert color="primary" %}}

U moet ingelogd zijn om het installatieprogramma te downloaden. Als u nog niet geregistreerd bent, kunt u zich gratis aanmelden.

{{% /alert %}}

Installeren Aspose.Words voor .NET, volg deze stappen:

1. Downloaden `Aspose.Words_{LatestVersion}.msi` van de [sectie downloads](https://releases.aspose.com/words/)
2. Doble-klik op het gedownloade bestand, waardoor het starten van de setup wizard, volg de instructies setup wizard<br/>
      <img src="/words/net/installation/aspose-words-setup-1.png" alt="aspose-words-setup-1" style="width:500px"/>
3. Wanneer de installatieassistent de installatie heeft voltooid, zullen de benodigde bestanden beschikbaar zijn in de map op het opgegeven mappad<br/>
      <img src="/words/net/installation/aspose-words-setup-4.jpg" alt="aspose-words-setup-4" style="width:500px"/>
4. Open uw oplossing/project in Visual Studio
5. Klik met de rechtermuisknop op uw project in *Solution Explorer* en voeg de verwijzing naar geïnstalleerde assemblages
6. Aspose.Words voor .NET geïnstalleerde assemblages zullen verschijnen in extensies onder de Assemblies sectie <br/>
      <img src="/words/net/installation/aspose-words-setup-5.png" alt="aspose-words-setup-5" style="width:800px"/>
7. Klik tenslotte op OK

## Overwegingen Bij het uitvoeren van een gedeelde Server Milieu

Alle instellingen .NET componenten worden aanbevolen om te draaien met de *Full Trust* toestemming ingesteld. Dit komt omdat Aspose .NET component heeft soms toegang tot registerinstellingen en bestanden op andere plaatsen dan de virtuele directory, zoals het lezen van lettertypen. Voorts: `Aspose.NET` componenten zijn gebaseerd op kern .NET systeemklassen, waarvan sommige ook vereisen *Full Trust* toestemming om te draaien in sommige gevallen.

Internetdienst Providers die meerdere applicaties van verschillende bedrijven hosten, handhaven meestal *Medium Trust* beveiligingsniveau. In geval van .NET 2.0, een dergelijk veiligheidsniveau kan de volgende beperkingen opleggen, die van invloed kunnen zijn op het vermogen van Aspose.Words om goed uit te voeren:

- **RegistryPermission** is niet beschikbaar. Dit betekent dat u geen toegang heeft tot het register, dat nodig is om geïnstalleerde lettertypen op te geven bij het renderen van documenten.
- **FileIOPermission** is beperkt. Dit betekent dat u alleen toegang hebt tot bestanden in uw applicatie. Dit betekent ook dat lettertypen niet kunnen worden gelezen tijdens de export.

Om bovengenoemde redenen wordt aanbevolen Aspose.Words met Full Trust machtigingen. U kunt merken dat sommige bibliotheekfuncties zullen werken bij het uitvoeren van verschillende taken met Medium vertrouwen, en sommige zullen, bijvoorbeeld, niet renderen. Dit kan gerelateerd zijn aan GDI+ beeldverwerking oproepen.
