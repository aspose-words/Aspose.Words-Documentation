---
title: Sériový dokument v databázi
second_title: Aspose.Words místo .NET
articleTitle: Sérializovat a pracovat s dokumentem v databázi
linktitle: Sérializovat a pracovat s dokumentem v databázi
description: "Převést dokument do pole byte pro práci s tímto dokumentem v databázi pomocí C#. Můžete uložit a získat dokument do a z databáze."
type: docs
weight: 10
url: /cs/net/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-07-09-19-00-42
---

Jedním z úkolů, které budete muset udělat při práci s dokumenty je ukládání a získávání **Document** objekty do a z databáze. To by bylo například nezbytné, kdybyste prováděli jakýkoliv typ systému řízení obsahu. Všechny předchozí verze dokumentů musí být uloženy v databázovém systému. Schopnost ukládat dokumenty v databázi je také velmi užitečná, když vaše aplikace poskytuje webovou službu.

Aspose.Words poskytuje schopnost převést dokument do pole byte pro následnou práci s tímto dokumentem v databázi.

## Převést dokument na Byte Array

Chcete-li dokument uložit do databáze nebo připravit dokument pro přenos přes web, je často nutné serializovat dokument pro získání byte pole.

Serializovat [Document](https://reference.aspose.com/words/net/aspose.words/document/) objekt v Aspose.Words:

1. Uložit do **MemoryStream** s použitím [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) způsob přetížení **Document** třída.
1. Zavolejte **ToArray** metoda, která vrací pole bytů představující dokument ve formě byte.

Schody nad ním pak mohou být obráceny k načtení bytů zpět do **Document** objekt.

{{% alert color="primary" %}}

Vybraný formát uložení je důležitý pro zajištění zachování nejvyšší věrnosti při ukládání a opětovném načítání do **Document** objekt. Z tohoto důvodu se doporučuje použít řadu formátů OOXML souboru.

{{% /alert %}}

Následující příklad ukazuje, jak serializovat **Document** objekt k získání byte pole, a pak, jak odsérializovat byte pole získat **Document** znovu objekt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToByte-ConvertDocumentToByte.cs" >}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

## Uložit, číst a smazat dokument v databázi

Tato sekce ukazuje, jak uložit dokument do databáze a pak jej načíst zpět do `Document` objekt pro práci s ním. Pro jednoduchost je název souboru klíčem k ukládání a získávání dokumentů z databáze. Databáze obsahuje dva sloupce. První sloupec "FileName" je uložen jako řetězec a používá se k identifikaci dokumentů. Druhý sloupec je uložen jako `BLOB` objekt, který uloží objekt dokumentu do bajtové formy.

Následující příklad kódu ukazuje, jak nastavit připojení k databázi a provést příkazy:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenDatabaseConnection.cs" >}}

{{% alert color="primary" %}}

V tomto příkladu používáme Microsoft Přístup .mdb databáze pro ukládání Aspose.Words dokument.

{{% /alert %}}

Následující příklad kódu ukazuje, jak uložit dokument do databáze, pak znovu přečíst stejný dokument a nakonec odstranit záznam obsahující dokument z databáze:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenRetrieveAndDelete.cs" >}}

### Uložit dokument do databáze

Uložit dokument v databázi převést tento dokument do pole bytů, jak je popsáno na začátku tohoto článku. Pak uložte toto pole byte do databázového pole.

Následující příklad kódu ukazuje, jak uložit dokument do zadané databáze:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-StoreToDatabase.cs" >}}

Zadejte příkazString, což je SQL výraz, který dělá všechnu práci:

- Pro uložení dokumentu do databáze se používá příkaz Aby se zabránilo dalším parametrům, je název souboru převzat z **Document** sám objekt. • `FileContent` hodnota pole je přiřazena byte z paměti proud, který obsahuje binární reprezentaci uloženého dokumentu.
- Zbývající řádek kódu provádí příkaz, který ukládá Aspose.Words dokument v databázi.

### Získání dokumentu z databáze

Chcete-li získat dokument z databáze, vyberte záznam, který obsahuje data dokumentu jako pole bajtů. Pak načíst byte pole ze záznamu do **MemoryStream** a vytvořit **Document** objekt, který bude načíst dokument z **MemoryStream**.

Následující příklad kódu ukazuje, jak získat a vrátit dokument ze zadané databáze pomocí názvu souboru jako klíč k získání tohoto dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-ReadFromDatabase.cs" >}}

{{% alert color="primary" %}}

Příkaz SQL * SELECT * FROM MARPOL se používá k získání příslušného záznamu na základě názvu souboru.

{{% /alert %}}

### Smazat dokument z databáze

Pro odstranění dokumentu z databáze použijte příslušný příkaz SQL bez manipulace na **Document** objekt.

Následující příklad kódu ukazuje, jak odstranit dokument z databáze pomocí názvu souboru pro získání záznamu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-DeleteFromDatabase.cs" >}}
