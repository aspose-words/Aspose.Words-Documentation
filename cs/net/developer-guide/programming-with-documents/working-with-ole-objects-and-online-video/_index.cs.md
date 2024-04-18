---
title: Práce s OLE objekty a online video v C#
second_title: Aspose.Words místo .NET
articleTitle: Práce s OLE objekty a online video
linktitle: Práce s OLE objekty a online video
description: "Vytvořit a upravit OLE vkládání do dokumentu pomocí C#."
type: docs
weight: 360
url: /cs/net/working-with-ole-objects/
---

OLE (Object Linking and Embedding) je technologie, pomocí které mohou uživatelé pracovat s dokumenty obsahujícími "objekty" vytvořené nebo editované aplikacemi třetích stran. To znamená, že OLE umožňuje editační aplikaci exportovat tyto "objekty" do jiné editační aplikace a pak je importovat s dodatečným obsahem.

V tomto článku budeme hovořit o vložení OLE objektu a nastavení jeho vlastností, stejně jako vložení online videa do dokumentu.

## Vložit OLE Předmět

Pokud chcete OLE Objekt, volejte [InsertOleObject](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobject/) způsob a předat **ProgId** explicitně s jinými parametry.

Následující příklad kódu ukazuje, jak vložit OLE Objekt do dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cs" >}}

### Nastavit název a příponu souboru při vkládání OLE objektu

OLE balíček je odkaz a "nedokumentovaný" způsob uložení vložených objektů, pokud je OLE manipulátor neznámý.

Brzy Windows verze jako např. Windows 3.1, 95 a 98 měli Balič. exe aplikace, která by mohla být použita k vložení jakéhokoli typu dat do dokumentu. Tato žádost je nyní vyloučena Windows, ale Microsoft Word a další aplikace je stále používají k vložení dat, pokud OLE manipulátor chybí nebo není znám. • `OlePackage` třída umožňuje uživatelům přístup k vlastnostem OLE balíčku.

Následující příklad kódu ukazuje, jak nastavit název souboru, příponu a název displeje pro OLE Package:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cs" >}}

### Získejte přístup k Raw data objektu OLE

Uživatelé mohou přistupovat k OLE objektům pomocí různých vlastností a metod `OleFormat` třída. Například, je možné získat `OLE` objekt surových dat nebo cesta a název zdrojového souboru pro propojený OLE objekt.

Následující příklad kódu ukazuje, jak získat OLE Objekt surové údaje pomocí [GetRawData](https://reference.aspose.com/words/net/aspose.words.drawing/oleformat/getrawdata/) metoda:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.cs" >}}

### Vložit OLE Objekt jako ikona

OLE objekty mohou být také vloženy do dokumentů jako obrázky.

Následující příklad kódu ukazuje, jak vložit OLE Object jako ikonu. Za tímto účelem [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) třída odhaluje [InsertOleObjectAsIcon](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobjectasicon/) metoda:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cs" >}}

Následující příklad kódu ukazuje, jak vložit vložený OLE objekt jako ikonu z proudu do dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.cs" >}}

{{% alert color="primary" %}}

Maximální velikost ikony musí být 32x32 pro správný displej.

{{% /alert %}}

## Vložit online video

Online video lze vložit do dokumentu Word z záložky *"Insert" > "Online Video"*. Můžete vložit online video do dokumentu na aktuálním místě voláním [InsertOnlineVideo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertonlinevideo/) metoda.

• [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) třída zavádí čtyři přetížení této metody. První pracuje s nejpopulárnější video zdroje a bere `URL` video jako parametr. Například první přetížení podporuje jednoduché vložení online videí z [YouTube](https://www.youtube.com/) a [Vimeo](https://vimeo.com/) zdroje.

Následující příklad kódu ukazuje, jak vložit online video z *Vimeo* do dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideo-InsertOnlineVideo.cs" >}}

Druhé přetížení pracuje se všemi ostatními video zdroji a bere vložený HTML kód jako parametr. HTML kód pro vložení videa se může lišit v závislosti na poskytovateli, takže kontaktujte příslušného poskytovatele pro podrobnosti.

{{% alert color="primary" %}}

Vezměte prosím na vědomí, že dokument bude automaticky optimalizován pro MS Word 2013 zobrazovat video.

{{% /alert %}}

Následující příklad kódu ukazuje, jak vložit online video do dokumentu pomocí takového HTML kódu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideoWithEmbedHtml-InsertOnlineVideoWithEmbedHtml.cs" >}}