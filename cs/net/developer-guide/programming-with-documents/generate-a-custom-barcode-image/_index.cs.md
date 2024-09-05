---
title: Jak vytvořit čárový kód
second_title: Aspose.Words za .NET
articleTitle: Vygenerovat vlastní kódovou čárou obrázek
linktitle: Vygenerovat vlastní kódovou čárou obrázek
description: "Příklad vytváření čárového kódu pomocí C#."
type: docs
weight: 350
url: /cs/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Čárový kód je vizuální zobrazení dat ve formě paralelních čar nebo vzorů. Čárové kódy se široce používají v různých odvětvích, jako jsou maloobchod, logistika, zdravotnictví, bankovnictví a mnoho dalších.

Microsoft Word uživatelům umožňuje vložit čáry přímo do dokumentů pomocí polí. Uživatelé mohou vložit konkrétní typ čárového kódu, například kód QR nebo lineární čárkový kód, pomocí pole [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19).

V tomto článku se podíváme na to jak je pole BARCODE implementováno v Aspose.Words a jak Aspose.Words umožňuje uživatelům pracovat s dokumenty Word, ke kterým již byl přidán kód čárového kódu.

## Typy čárového kódu podporované Aspose.Words:

Aspose.Words podporuje různé typy čárových kódů. Typ čárového kódu je předán jako řetězec ve vlastnosti [BarcodeType](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/barcodetype/).

{{% alert color="primary" %}}

Od práce s čárovými kódy v rámci funkcí Aspose.Words je omezená, uživatel může použít jakoukoli knihovnu, včetně aspose. Barcode, nebo napsat své vlastní vykreslení pracovat s čárovými kódy. Můžete se dozvědět více o typy čárových kódů [supported by Aspose.BarCode](https://docs.aspose.com/barcode/net/barcode-types/).

{{% /alert %}}

Při ukládání do formátů Wordu podporujících kódy, můžete použít jakýkoliv typ kódu, že je [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Pokud byl předán nesprávný typ kódu, Word zobrazí chybu.

Při ukládání do jiných formátů, jako je PDF, Aspose.Words deleguje vykreslování čárového kódu na kód uživatele, takže se uživatel omezí na čárové kódy své implementace nebo knihovny použité.

## Vložte do dokumentu čárový kód nebo načtěte dokument s přidaným čárovým kódem

Aspose.Words nabízí možnost:

1. Programově vložíte čárový kód do dokumentu pomocí [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) a [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) kódu pole
2. Nebo načtěte dokument Word s již vloženými čárovými kódy pro další práci.

Aspose.Words má rozhraní pro generování vlastních čárových kódů, které usnadňuje používání [Aspose.Words](https://products.aspose.com/words/net/) a [Aspose.BarCode](https://products.aspose.com/barcode/net/) společně k vykreslení obrázků čárových kódů do výstupních dokumentů. Například můžete vytvořit dokument DOC, OOXML nebo RTF a přidat pole DISPLAYBARCODE pomocí Aspose.Words. Nebo můžete načíst dokument DOC, OOXML nebo RTF s již existujícím polem DISPLAYBARCODE a poskytnout vlastní implementaci generátoru čárových kódů.

Typické pole DISPLAYBARCODE má následující syntaxi:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Níže je příklad generátoru kódu využívající Aspose.Words a Aspose.BarCode APIy. Tento příklad ukazuje, jak vložit obrázky čárových kódů na pozici DISPLAYBARCODE ve wordovém dokumentu:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}

Můžete také uložit dokument s načteným nebo nově vloženým čárovým kódem do pevných formátů stránek, jako je PDF, XPS, atd. Následující příklad kódu ukazuje, jak uložit dokument Wordu ve formátu PDF:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

{{% alert color="primary" %}}

Pro více informací o převodu dokumentů z jednoho formátu do druhého, viz dokumentaci sekce [Convert a Document](/words/net/convert-a-document/).

{{% /alert %}}

{{% alert color="primary" %}}

Můžete také použít rozhraní [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/) pro převod čárových kódů v dokumentech Word do obrázků. Získané obrázky lze z dokumentu extrahovat – viz článek Práce s obrázky pro podrobnosti.

{{% /alert %}}

## Specifikovat možnosti čárového kódu

Při práci s čárovými kódy můžete nastavit některé další vlastnosti. Aspose.Words vám poskytuje třídu [BarcodeParameters](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/) – třídu pro parametry čárového kódu, které máte předat do BarcodeGeneratoru.

Aspose.Words podporuje vloženou 96 ppi rozlišení pro obrázky generované [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/), což omezuje minimální velikost obrázku čárového kódu. Abychom se s tím vypořádali, mohou vývojáři ručně vložit obrázky čárových kódů s požadovaným rozlišením do dokumentu Word a uložit je ve formátu, který je vyžadován. Další podrobnosti a příklady práce s čárovými kódy naleznete v článku [Create Custom Barcodes with IBarcodeGenerator](https://docs.aspose.com/barcode/net/how-to-create-custom-barcodes-with-ibarcodegenerator/).