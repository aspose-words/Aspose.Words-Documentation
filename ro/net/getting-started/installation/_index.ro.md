---
title: Instalare
second_title: Aspose.Words pentru .NET
articleTitle: Instalare
linktitle: Instalare
description: "Instalează Aspose.Words pentru .NET folosind Visual Studio instrumente, cum ar fi Manage NuGet Packages sau Package Manager Console și instalatorul MSI. Folosește setul de permisiuni Full Trust în C#."
type: docs
weight: 10
url: /ro/net/installation/
timestamp: 2024-01-27-14-07-04
---

Asigură-te că maşina ta îndeplineşte [system requirements](/words/net/system-requirements/) înainte să începi.

Acest articol explică cum să instalați Aspose.Words pentru .NET pe calculatorul dumneavoastră.

## Instalează sau actualizează Aspose.Words pentru .NET folosind Manage NuGet Packages {#install-or-update-aspose-words-for-net-using-nuget}

NuGet este cea mai ușoară metodă de a descărca și instala [Aspose.Words for .NET](https://www.nuget.org/packages/Aspose.Words/) API-uri. Pentru a face asta, urmaţi aceşti paşi:

1. Deschide *Microsoft Visual Studio* și *Manage NuGet Packages* din meniu pentru a deschide managerul de pachete
2. Căutare pentru "aspose" sau "aspose.words" pentru a găsi Aspose API dorit <br>
      <img src="aspose-words-nuget.png" alt="aspose-words-nuget" style="width:800px"/>
3. Selectați Aspose API dorit și faceți clic pe "Instalare"

Fişierul selectat API va fi descărcat şi referinţiat în proiectul dumneavoastră.

Puteți actualiza, de asemenea, Aspose.Words pentru .NET la versiunea dorită folosind *Manage NuGet Packages*.

## Instalați sau actualizați Aspose.Words utilizând Package Manager Console

Puteți instala sau actualiza, de asemenea, Aspose.Words pentru API-urile .NET utilizând *Package Manager Console*. Pentru a face asta urmați acești pași:

1. Deschideți *Microsoft Visual Studio* și *Package Manager Console* din meniu pentru a deschide consola managerului de pachete <br>
      <img src="aspose-words-nuget-update.png" alt="aspose-words-nuget-update" style="width:600px"/>
2. Tipă comanda `Install-Package Aspose.Words` și apasă Intro pentru a instala cea mai recentă versiune completă în aplicația ta<br>
   <img src="aspose-words-nuget-update-2.png" alt="aspose-words-nuget-update-2" style="width:600px"/><br>
   {{% alert color="primary" %}}În plus, puteți adăuga `-prerelease` la comandă pentru a specifica că cea mai recentă versiune, inclusiv actualizările de tip hotfix, ar trebui să fie instalată. {{% /alert %}}
3. Odată descărcat, vei vedea mesaje de confirmare<br>
   <img src="aspose-words-nuget-istalled.png" alt="aspose-words-nuget-istalled" style="width:600px"/> <br>
   {{% alert color="primary" %}}Dacă nu sunteți familiarizați cu [Aspose EULA](https://about.aspose.com/legal/eula/), se recomandă să citiți licența referită în URL.{{% /alert %}}
4. Acum puteți găsi că Aspose.Words a fost adăugat cu succes și referințe în aplicația dvs. pentru tine <br>
      <img src="aspose-words-nuget-references.png" alt="aspose-words-nuget-references" style="width:400px"/>

În *Package Manager Console*, poți folosi și comanda `Update-Package Aspose.Words` pentru a verifica dacă există actualizări la pachetul Aspose.Words și să îl instalezi, dacă există. Puteți adăuga și sufixul `-prerelease` pentru a actualiza cea mai recentă lansare.

## Instalați Aspose.Words pentru .NET folosind Installer

Aspose.Words pentru .NET poate fi instalat prin descărcarea directă a instalatorului MSI de pe [downloads section](https://releases.aspose.com/words/).

{{% alert color="primary" %}}

Trebuie să fii conectat pentru a descărca instalatorul. Dacă nu sunteți încă înregistrat, puteți să vă înregistrați gratuit.

{{% /alert %}}

Pentru a instala Aspose.Words pentru .NET urmați acești pași:

1. Descarcă `Aspose.Words_`{LatestVersion}.msi din [downloads section](https://releases.aspose.com/words/)
2. Double-click on the downloaded file to start the installation wizard, and follow the installation wizard instructions.<br>
      <img src="aspose-words-setup-1.png" alt="aspose-words-setup-1" style="width:500px"/>
3. Când instalatorul finalizează instalarea, fișierele necesare vor fi disponibile în dosarul la calea de dosar furnizată <br>
      <img src="aspose-words-setup-4.jpg" alt="aspose-words-setup-4" style="width:500px"/>
4. Deschide soluţia/proiectul tău în Visual Studio
5. Faceți clic dreapta pe proiectul dvs. în *Explorer de soluții* și adăugați referința la asamblările instalate
6. Aspose.Words pentru asamblări instalate .NET vor apărea în extensii sub secțiunea Asamblări – selectați pur și simplu componenta DLL necesară <br>
      <img src="aspose-words-setup-5.png" alt="aspose-words-setup-5" style="width:800px"/>
7. În final faceți clic pe OK

## Consideraţii Când Rulăm într-un Mediu Partajat Server

Toate componentele Aspose .NET sunt recomandate să ruleze cu setul de permisiuni *Full Trust*. Aceasta este pentru că uneori Aspose .NET component are nevoie de acces la setările de registru și fișiere situate în locuri altele decât directorul virtual, cum ar fi citirea fonturilor. În plus, `Aspose.NET` componente sunt bazate pe clasele sistemului .NET de bază, unele dintre ele necesitând și permisiunea *Full Trust* pentru a rula în unele cazuri.

Furnizorii de servicii Internet care găzduiesc mai multe aplicații de la diferite companii impun în general nivelul de securitate *Încredeere medie*. În cazul .NET 2.0, un astfel de nivel de securitate poate impune următoarele constrângeri, care pot afecta capacitatea Aspose.Words de a funcționa în mod corespunzător:

- **RegistryPermission** nu este disponibilă. Aceasta înseamnă că nu puteți accesa registrul care este necesar pentru a enumera fonturile instalate atunci când redarea documentelor.
− **FileIOPermission** este restricționat. Aceasta înseamnă că poţi accesa doar fișierele din ierarhia de directoare virtuală a aplicației tale. Acest lucru înseamnă potențial și că fonturile nu pot fi citite în timpul exportului.

Pentru aceste motive menționate mai sus, este recomandat să rulezi Aspose.Words cu Full Trust permisiuni. Poate vei observa că unele caracteristici ale bibliotecii vor funcționa atunci când efectuezi anumite sarcini cu privilegii de nivel mediu, iar altele nu vor funcționa, de exemplu redarea. Acest lucru poate fi legat de apelurile de procesare a imaginilor GDI+.
