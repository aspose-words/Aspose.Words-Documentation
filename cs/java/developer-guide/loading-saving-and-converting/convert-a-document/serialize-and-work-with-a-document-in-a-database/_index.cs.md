---
title: Serializace a práce s dokumentem v databázi
second_title: Aspose.Words místo Java
articleTitle: Serializace a práce s dokumentem v databázi
linktitle: Serializace a práce s dokumentem v databázi
description: "Převést dokument do byte pole pro práci s tímto dokumentem v databázi. Můžete uložit a získat dokument do a z databáze pomocí Java."
type: docs
weight: 40
url: /cs/java/serialize-and-work-with-a-document-in-a-database/
---

Jedním z úkolů, které budete muset udělat při práci s dokumenty, je ukládání a získávání **Document** objekty do a z databáze. To by bylo například nutné, kdybyste prováděli jakýkoliv typ systému řízení obsahu. Všechny předchozí verze dokumentů musí být uloženy v databázovém systému. Schopnost ukládat dokumenty do databáze je také velmi užitečná, když vaše aplikace poskytuje webovou službu.

Aspose.Words poskytuje schopnost převést dokument na pole byte pro následnou práci s tímto dokumentem v databázi.

## Převést dokument na Byte Array

Chcete-li dokument uložit do databáze nebo připravit dokument pro přenos přes web, je často nutné serializovat dokument pro získání pole byte.

Serializovat [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) v Aspose.Words:

1. Uložit do **MemoryStream** s použitím [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) způsob přetížení **Document** třída.
1. Zavolej **ToArray** metoda, která vrací pole bytů představující dokument ve formě byte.

Kroky výše pak lze obrátit na zatížení bajtů zpět do **Document** objekt.

{{% alert color="primary" %}}

Vybraný formát uložení je důležitý pro zajištění zachování nejvyšší věrnosti při ukládání a opětovném načítání do **Document** objekt. Z tohoto důvodu se doporučuje použít řadu formátů OOXML souboru.

{{% /alert %}}

Následující příklad ukazuje, jak serializovat **Document** objekt k získání byte pole, a pak, jak odsérializovat byte pole získat **Document** znovu objekt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Uložit, číst a smazat dokument v databázi

Tato část ukazuje, jak uložit dokument do databáze a pak jej načíst zpět do `Document` objekt pro práci s ním. Pro jednoduchost je název souboru klíčem k ukládání a získávání dokumentů z databáze. Databáze obsahuje dva sloupce. První sloupec "FileName" je uložen jako řetězec a používá se k identifikaci dokumentů. Druhý sloupec je uložen jako `BLOB` objekt, který uloží objekt dokumentu do bajtové formy.

Následující příklad kódu ukazuje, jak nastavit připojení k databázi a provést příkazy:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

V tomto příkladu používáme databázi MySQL k ukládání Aspose.Words dokument.

{{% /alert %}}

Následující příklad kódu ukazuje, jak uložit dokument do databáze, pak znovu přečíst stejný dokument a nakonec smazat záznam obsahující dokument z databáze:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### Uložit dokument do databáze

Uložit dokument v databázi převést tento dokument do pole bajtů, jak je popsáno na začátku tohoto článku. Pak uložte toto pole byte do databázového pole.

Následující příklad kódu ukazuje, jak uložit dokument do zadané databáze:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

Zadejte příkazString, což je SQL výraz, který dělá veškerou práci:

- Pro uložení dokumentu do databáze se používá povel ŁINSERT INTONATION a tabulka zadaná spolu s hodnotami dvou záznamových polí FileName a FileContent. Aby se zabránilo dalším parametrům, je název souboru převzat z **Document** sám objekt. The `FileContent` hodnota pole je přiřazena bajty z paměťového proudu, který obsahuje binární reprezentaci uloženého dokumentu.
- Zbývající řádek kódu provádí příkaz, který ukládá Aspose.Words dokument v databázi.

### Získání dokumentu z databáze

Chcete-li získat dokument z databáze, vyberte záznam, který obsahuje data dokumentu jako pole bytů. Pak načíst byte pole ze záznamu do **MemoryStream** a vytvořit **Document** objekt, který bude načíst dokument z **MemoryStream**.

Následující příklad kódu ukazuje, jak získat a vrátit dokument ze zadané databáze pomocí názvu souboru jako klíč k získání tohoto dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

Příkaz SQL * SELECT * FROM MARPOL se používá k získání příslušného záznamu na základě názvu souboru.

{{% /alert %}}

### Smazat dokument z databáze

Pro odstranění dokumentu z databáze použijte příslušný příkaz SQL bez manipulace na **Document** objekt.

Následující příklad kódu ukazuje, jak odstranit dokument z databáze pomocí názvu souboru pro získání záznamu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
