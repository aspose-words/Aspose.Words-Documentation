---
title: Práce s objekty OLE v C++
second_title: Aspose.Words pro C++
articleTitle: Práce s objekty OLE
linktitle: Práce s objekty OLE
description: "Vytvořte a upravte vložení OLE do dokumentu pomocí C++."
type: docs
weight: 360
url: /cs/cpp/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (Object Linking and Embedding) je technologie, pomocí které mohou uživatelé pracovat s dokumenty obsahujícími "objekty" vytvořené nebo upravené aplikacemi třetích stran. To znamená, že OLE umožňuje editační aplikaci exportovat tyto "objekty" do jiné editační aplikace a poté je importovat s dalším obsahem.

V tomto článku budeme hovořit o vložení objektu OLE a nastavení jeho vlastností do dokumentu.

## Vložit OLE Objekt

Pokud chcete OLE objekt, zavolejte metodu [InsertOleObject](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobject/) a předejte ji **ProgId** explicitně s dalšími parametry.

Následující příklad kódu ukazuje, jak vložit objekt OLE do dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-DocumentBuilderInsertOleObject.h" >}}

### Při vkládání OLE objektu Nastavte název souboru a příponu

OLE balíček je starší a" nezdokumentovaný " způsob ukládání vložených objektů, pokud není známa obslužná rutina OLE.

Rané verze Windows jako Windows 3.1, 95 a 98 měly aplikaci Packager.exe, kterou bylo možné použít k vložení jakéhokoli typu dat do dokumentu. Tato aplikace je nyní vyloučena z Windows, ale Microsoft Word a další aplikace ji stále používají k vložení dat, pokud psovod OLE chybí nebo není znám. Třída `OlePackage` umožňuje uživatelům přístup k vlastnostem OLE Package.

Následující příklad kódu ukazuje, jak nastavit název souboru, příponu a zobrazovaný název pro OLE Package:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOleObjectwithOlePackage.h" >}}

### Získejte přístup k OLE surovým datům objektu

Uživatelé mohou přistupovat k objektovým datům OLE pomocí různých vlastností a metod třídy `OleFormat`. Například je možné získat nezpracovaná data objektu `OLE` nebo cestu a název zdrojového souboru pro propojený objekt OLE.

Následující příklad kódu ukazuje, jak získat nezpracovaná data objektu OLE pomocí metody [GetRawData](https://reference.aspose.com/words/cpp/aspose.words.drawing/oleformat/getrawdata/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-GetAccessToOLEObjectRawData.h" >}}

### Vložit Ole objekt jako ikonu

OLE objekty lze také vkládat do dokumentů jako obrázky.

Následující příklad kódu ukazuje, jak vložit objekt OLE jako ikonu. Za tímto účelem třída [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) vystavuje metodu [InsertOleObjectAsIcon](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobjectasicon/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIcon.h" >}}

Následující příklad kódu ukazuje, jak vložit vložený objekt OLE jako ikonu ze streamu do dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIconUsingStream.h" >}}

## Vložit Online Video

Online video lze vložit do Word dokumentu z karty *"Insert" > "Online Video"*. Online video můžete vložit do dokumentu v aktuálním umístění voláním metody [InsertOnlineVideo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertonlinevideo/).

Třída [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) zavádí čtyři přetížení této metody. První pracuje s nejoblíbenějšími video zdroji a jako parametr bere `URL` videa. Například první přetížení podporuje jednoduché vkládání online videí z [YouTube](https://www.youtube.com/) a [Vimeo](https://vimeo.com/) zdroj.

Následující příklad kódu ukazuje, jak vložit Online video z *Vimeo* do dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideo.h" >}}

Druhé přetížení pracuje se všemi ostatními video prostředky a jako parametr bere vložený kód HTML. Kód HTML pro vložení videa se může lišit v závislosti na poskytovateli, proto kontaktujte příslušného poskytovatele pro podrobnosti.

{{% alert color="primary" %}}

Vezměte prosím na vědomí, že dokument bude automaticky optimalizován pro MS Word 2013 pro zobrazení videa.

{{% /alert %}}

Následující příklad kódu ukazuje, jak vložit online video do dokumentu pomocí takového HTML kódu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideoWithEmbedHtml.h" >}}
