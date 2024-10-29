---
title: Geneste Mail Merge Met Streke in C++
second_title: Aspose.Words vir C++
articleTitle: Geneste Mail Merge met die Streek
linktitle: Geneste Mail Merge met die Streek
type: docs
description: "Voer'n mail merge operasie met geneste streke met behulp van C++. Geneste samesmelting is'n funksie wat jou in staat stel om hiërargiese data van jou databron saam te voeg in jou samesmelting sjabloon."
keywords: "mail merge with nested regions c++"
weight: 30
url: /af/cpp/nested-mail-merge-with-regions/
---

In sommige scenario's moet jy dalk geneste mail merge met streke gebruik. Geneste merge is'n funksie waarmee u hiërargiese data van u databron kan saamsmelt in u merge-sjabloon om u dokument maklik in te vul. Basies word die hiërargiese data voorgestel as'n stel data-items, en hiërargiese verhoudings beskryf hoe die data-items met mekaar verband hou (een item data is die ouer van'n ander een).

Aspose.Words stel jou in staat om'n mail merge operasie met geneste streke uit te voer. U kan hierdie funksie gebruik as u'n databron het wat in'n boomagtige struktuur georganiseer is en u'n mail merge-bewerking wil uitvoer om'n sjabloon met hiërargiese data in te vul.

{{% alert color="primary" %}}

Geneste mail merge is slegs relevant wanneer'n mail merge met streke uitgevoer word.

{{% /alert %}}

## Wat is'n Geneste Mail Merge

Die mail merge streek word geneste genoem as jy twee of meer mail merge streke het waar een van hulle binne die ander in'n hiërargiese vorm is. Let daarop dat elke streek data van een tabel bevat.

Die mees algemene voorbeeld van'n geneste mail merge is'n volgorde wat'n paar items bevat waar jy baie data tabelle moet koppel en die inligting in'n sjabloon moet aanbied.

Die onderstaande prentjie toon twee geneste streke waar die *Order* mail merge streek die ouer van die *Item* mail merge streek is.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## Hoe om Mail Merge Met Geneste Streke Te Verwerk

Die data wat in'n sjabloon saamgevoeg moet word, kan uit verskillende bronne kom, hoofsaaklik relasionele databasisse of XML dokumente. In ons voorbeeld gebruik ons'n [SQLite](https://www.sqlite.org/index.html) databasis om ons data te stoor en laai dit met persoonlike data bron implementering.

Die onderstaande beeld toon hoe die data van die *Order* tabel wat aan die geneste samesmelting streke sal gekoppel word aan die *Item* tabel, sowel as die uitset gegenereer tydens die samesmelting operasie.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

Soos jy kan sien uit die uitset dokument, elke orde van die **Order** tabel is ingevoeg in die merge sjabloon met al die orde se verwante items van die **Item** tabel. Die volgende bestelling sal saam met hul items ingevoeg word totdat al die bestellings en items gelys is. Die volgorde van nes mail merge met streke in die sjabloon moet ooreenstem met die data verhoudings tussen die tabelle in die data bron.

## Hoe Om Data Verhoudings Te Skep van'n Persoonlike Data Bron

Implementeer die [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) koppelvlak om verhoudings in die ouer-kind struktuur van u persoonlike databron te skep. Gebruik die [GetChildDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) metode om die relevante kind data van'n huidige ouer rekord terug te keer.

Die volgende kode voorbeeld demonstreer hoe om'n faktuur te genereer met behulp van geneste mail merge met streke van [SQLite](https://www.sqlite.org/index.html) databasis met [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}