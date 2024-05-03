---
title: Práce s Ole objekty
second_title: Aspose.Words místo Java
articleTitle: Práce s Ole objekty
linktitle: Práce s Ole objekty
description: "Vytvořit a upravit OLE vkládání do dokumentu pomocí Java."
type: docs
weight: 360
url: /cs/java/working-with-ole-objects/
---

OLE znamená "Object Linking and Embedding." Jedná se o technologii, pomocí které mohou uživatelé pracovat s dokumenty obsahujícími "objekty" vytvořené nebo editované aplikacemi třetích stran. To znamená, že OLE umožňuje aplikaci exportovat tyto "objekty" do jiné aplikace pro editaci, a pak je importovat zpět s nějakým dalším obsahem.

V tomto článku budeme hovořit o vložení OLE objektu a nastavení jeho vlastností do dokumentu.

## Vložit Ole objekt

Pokud chcete OLE Object, volejte [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) způsob a předat **ProgId** explicitně s jinými parametry.

Následující příklad kódu ukazuje, jak vložit OLE Objekt do dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### Nastavit název souboru a příponu při vkládání OLE objektu

OLE balíček je odkaz a "nedokumentovaný" způsob uložení vložených objektů, pokud je OLE manipulátor neznámý.

Brzy Windows verze jako např. Windows 3.1, 95 a 98 měli Balič. exe aplikace, která by mohla být použita k vložení jakéhokoli typu dat do dokumentu. Tato žádost je nyní vyloučena Windows, ale Microsoft Word a další aplikace ji stále používají k vložení dat, pokud OLE manipulátor chybí nebo není znám. The `OlePackage` třída umožňuje uživatelům přístup k vlastnostem OLE balíčku.

Následující příklad kódu ukazuje, jak nastavit název souboru, příponu a název displeje pro OLE Package:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### Získejte přístup k Raw data objektu OLE

Uživatelé mohou přistupovat k OLE objektům pomocí různých vlastností a metod `OleFormat` třída. Například, je možné získat `OLE` objekt surových dat nebo cesta a název zdrojového souboru pro propojený OLE objekt.

Následující příklad kódu ukazuje, jak získat OLE Objekt surové údaje pomocí [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData) metoda:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### Vložit OLE Objekt jako ikona

OLE objekty mohou být také vloženy do dokumentů jako obrázky.

Následující příklad kódu ukazuje, jak vložit OLE Object jako ikonu. Za tímto účelem **DocumentBuilder** třída odhaluje [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String) metoda.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

Následující příklad kódu ukazuje, jak vložit vložený OLE objekt jako ikonu z proudu do dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## Vložit online video

Online video lze vložit do dokumentu Word z záložky *"Insert" > "Online Video"*. Můžete vložit online video do dokumentu na aktuálním místě voláním [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double) metoda:

The [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) třída zavádí čtyři přetížení této metody. První z nich pracuje s nejoblíbenější video zdroje a bere `URL` video jako parametr. Například první přetížení podporuje jednoduché vložení online videí z [YouTube](https://www.youtube.com/) a [Vimeo](https://vimeo.com/) zdroje.

Následující příklad kódu ukazuje, jak vložit online video z *Vimeo* do dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

Druhé přetížení pracuje se všemi ostatními video zdroji a bere vložený HTML kód jako parametr. HTML kód pro vložení videa se může lišit v závislosti na poskytovateli, takže kontaktujte příslušného poskytovatele pro podrobnosti.

{{% alert color="primary" %}}

Vezměte prosím na vědomí, že dokument bude automaticky optimalizován pro MS Word 2013 zobrazovat video.

{{% /alert %}}

Následující příklad kódu ukazuje, jak vložit online video do dokumentu pomocí takového HTML kódu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
