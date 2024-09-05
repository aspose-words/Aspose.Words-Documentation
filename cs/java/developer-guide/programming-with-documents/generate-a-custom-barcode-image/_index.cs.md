---
title: Vytvořit čárový kód v Java
second_title: Aspose.Words pro Java
articleTitle: Generovat vlastní obrázek čárového kódu
linktitle: Generovat vlastní obrázek čárového kódu
description: "Příklad generování čárového kódu pomocí Java."
type: docs
weight: 350
url: /cs/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Čárový kód je vizuální reprezentace dat ve formě paralelních čar nebo vzorů. Čárové kódy se široce používají v různých odvětvích, jako jsou maloobchod, logistika, zdravotnictví, bankovnictví a mnoho dalších.

Microsoft Word uživatelům umožňuje vložit čárové kódy přímo do dokumentů pomocí políček. Uživatelé mohou vložit konkrétní typ čárového kódu, jako je například kód QR nebo lineární kód, pomocí pole [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19).

V tomto článku se podíváme, jak je pole BARCODE implementováno v Aspose.Words a jak Aspose.Words umožňuje uživatelům pracovat s dokumenty Word, do kterých byl již přidán čárový kód.

## Typy čárových kódů podporované Aspose.Words

"Aspose.Words podporuje různé typy čárových kódů. Typ čárového kódu se předává jako řetězec v [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType) vlastnosti."

{{% alert color="primary" %}}

Protože práce s čárovými kódy v rámci funkcí Aspose.Words je omezena, může uživatel používat jakoukoli knihovnu včetně Aspose.Barcode nebo napsat svůj vlastní vykreslovací kód pro práci s čárovými kódy. Můžete se dozvědět více o typech čárových kódů [supported by Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

Při ukládání do formátů Wordu, které podporují čárové kódy, můžete použít jakýkoliv typ čárového kódu, který je [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Pokud byl předán nesprávný typ čárového kódu, Word zobrazí chybu.

Při ukládání do jiných formátů, např. PDF, Aspose.Words deleguje vykreslování čárových kódů na uživatelský kód, takže uživatel je omezen na typy čárových kódů jejich implementace nebo knihovny použité.

## Vložte čárový kód do dokumentu nebo načtěte dokument s přidaným čárovým kódem

Aspose.Words nabízí možnost:

1. Programaticky vložit čárový kód do dokumentu pomocí [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) a [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) kódu pole
2. nebo načíst dokument Word s již vloženými čárovými kódy pro další práci

Aspose.Words má rozhraní pro generování vlastních čárových kódů, které usnadňuje používání [Aspose.Words](https://products.aspose.com/words/java/) a [Aspose.BarCode](https://products.aspose.com/barcode/java/) spolu k vykreslování obrázků čárových kódů v dokumentech výstupu. Například můžete vytvořit dokument DOC, OOXML nebo RTF a přidat pole DISPLAYBARCODE pomocí Aspose.Words. Nebo můžete načíst dokument DOC, OOXML nebo RTF s polem DISPLAYBARCODE již existujícím a poskytnout vlastní implementaci generátoru čárových kódů.

Typické pole DISPLAYBARCODE má následující syntaxi:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Níže je ukázkový kód generátor pomocí Aspose.Words a Aspose.BarCode API. Tento příklad ukazuje, jak vložit obrazové kódy do polohy DISPLAYBARCODE pole ve wordovém dokumentu:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

Můžete také uložit dokument s naloženým nebo nově vloženým čárovým kódem ve pevných formátech stránek, jako je například PDF, XPS atd. Následující příklad kódu ukazuje, jak uložit dokument ve formátu PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

Pro další informace o převodu dokumentů z jednoho formátu do druhého se podívejte na dokumentaci sekce [Convert a Document](/words/java/convert-a-document/).

{{% /alert %}}

{{% alert color="primary" %}}

Můžete také použít rozhraní [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) k převodu čárových kódů vložených do dokumentů Word do obrázků. Získané obrázky lze extrahovat z dokumentu – podrobnosti naleznete v článku Práce s obrázky.

{{% /alert %}}

## Specifikovat možnosti čárového kódu

Při práci s čárovými kódy můžete nastavit některé další vlastnosti. Aspose.Words poskytuje třídu [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) – třídu pro parametry čárového kódu, které mají být předány do BarcodeGeneratoru.

Aspose.Words podporuje vnořenou 96 ppi rozlišení pro obrázky generované pomocí [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/), což omezuje minimální velikost obrazu čárového kódu. Na řešení tohoto problému mohou vývojáři ručně vložit obrázky čárových kódů s cílovým rozlišením do dokumentu Word a uložit je ve formátu požadovaném. Pro další informace a příklady práce s čárovými kódy, viz článek [Read Barcodes from Word Documents](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
