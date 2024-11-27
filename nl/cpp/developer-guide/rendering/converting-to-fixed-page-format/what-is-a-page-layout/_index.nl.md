---
title: Wat is een pagina-indeling in C++
second_title: Aspose.Words voor C++
articleTitle: Wat is een Page Layout
linktitle: Wat is een Page Layout
description: "Laten we eens uitzoeken wat een pagina-indeling is. Een pagina-indeling beschrijft de geometrie van de inhoud in een document."
type: docs
weight: 5
url: /nl/cpp/what-is-a-page-layout/
timestamp: 2024-09-24-14-35-44
---

Een **document page layout** is een gegevensstructuur die beschrijft waar een bepaald object zich bevindt op pagina ' s voor alle documentobjecten. Aangezien objecten eigenschappen hebben die van invloed zijn op hun uiterlijk, zoals tekengrootte, schaduw-of tekeneffecten, moet u bovendien niet alleen weten waar het object zich bevindt, maar ook welk (e) gebied (en) van de pagina het inneemt en of het op meerdere pagina ' s van toepassing is, zodat andere objecten niet hetzelfde (e) gebied (en) overlappen.

## Waar is een Page Layout voor?

Aspose.Words implementeert de paginalay-outfunctionaliteit intern waardoor het alle vaste paginaformaten kan produceren, zoals PDF, XPS en verschillende afbeeldingsformaten. Zonder Pagina-indeling zou de informatie die is opgeslagen in het documentbestand van de vaste pagina niet beschikbaar zijn en zouden al deze indelingen niet worden ondersteund.

De relatie tussen een document en een pagina-indeling is vrij eenvoudig. Terwijl een document de inhoud beschrijft, beschrijft de overeenkomstige paginalay-out de geometrie van die inhoud. Merk op dat een pagina-indeling niet kan bestaan zonder een document, omdat er geen inhoud zou zijn voor het berekenen van de geometrie, maar een document kan bestaan zonder een pagina-indeling. Wanneer een DOCX - document bijvoorbeeld wordt omgezet in een RTF - document, is het meestal niet nodig om de geometrie te kennen, omdat geen van beide formaten deze opslaat.

## Zie Ook

* [Een pagina-indeling maken](/words/cpp/creating-a-page-layout/)
* [Een Document opslaan in een vaste paginaindeling](/words/cpp/saving-a-document-to-fixed-page-format/)
* [Opmaakopties Opgeven](/words/cpp/specify-layout-options/)
