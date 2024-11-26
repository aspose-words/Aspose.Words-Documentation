---
title: OLE objekty a online video
second_title: Aspose.Words místo Python via .NET
articleTitle: Práce s OLE objekty a online video
linktitle: Práce s OLE objekty a online video
description: "Vložit ole objekty nebo onlin vodo do dokumentu pomocí Python."
type: docs
weight: 360
url: /cs/python-net/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (Object Linking and Embedding) je technologie, pomocí které mohou uživatelé pracovat s dokumenty obsahujícími "objekty" vytvořené nebo editované aplikacemi třetích stran. To znamená, že OLE umožňuje editační aplikaci exportovat tyto "objekty" do jiné editační aplikace a pak je importovat s dodatečným obsahem.

V tomto článku budeme hovořit o vložení OLE objektu a nastavení jeho vlastností, stejně jako vložení online videa do dokumentu.

## Vložit OLE Předmět

Pokud chcete OLE Objekt, volejte [insert_ole_object](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object/) způsob a předat **ProgId** explicitně s jinými parametry.

Následující příklad kódu ukazuje, jak vložit OLE Objekt do dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-DocumentBuilderInsertOleObject.py" >}}

### Nastavit název a příponu souboru při vkládání OLE objektu

OLE balíček je odkaz a "nedokumentovaný" způsob uložení vložených objektů, pokud je OLE manipulátor neznámý.

Brzy Windows verze jako např. Windows 3.1, 95 a 98 měli Balič. exe aplikace, která by mohla být použita k vložení jakéhokoli typu dat do dokumentu. Tato žádost je nyní vyloučena Windows, ale Microsoft Word a další aplikace je stále používají k vložení dat, pokud OLE manipulátor chybí nebo není znám. • `OlePackage` třída umožňuje uživatelům přístup k vlastnostem OLE balíčku.

Následující příklad kódu ukazuje, jak nastavit název souboru, příponu a název displeje pro OLE Package:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOleObjectwithOlePackage.py" >}}

### Získejte přístup k Raw data objektu OLE

Uživatelé mohou přistupovat k OLE objektům pomocí různých vlastností a metod `OleFormat` třída. Například, je možné získat `OLE` objekt surových dat nebo cesta a název zdrojového souboru pro propojený OLE objekt.

Následující příklad kódu ukazuje, jak získat OLE Objekt surové údaje pomocí [get_raw_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/oleformat/get_raw_data/) metoda:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-GetAccessToOLEObjectRawData.py" >}}

### Vložit OLE Objekt jako ikona

OLE objekty mohou být také vloženy do dokumentů jako obrázky.

Následující příklad kódu ukazuje, jak vložit OLE Object jako ikonu. Za tímto účelem [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) třída odhaluje [insert_ole_object_as_icon](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object_as_icon/) metoda:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

Následující příklad kódu ukazuje, jak vložit vložený OLE objekt jako ikonu z proudu do dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIconUsingStream.py" >}}

## Vložit online video

Online video lze vložit do dokumentu Word z záložky *"Insert" > "Online Video"*. Můžete vložit online video do dokumentu na aktuálním místě voláním [insert_online_video](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_online_video/) metoda.

• [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) třída zavádí čtyři přetížení této metody. První pracuje s nejpopulárnější video zdroje a bere `URL` video jako parametr. Například první přetížení podporuje jednoduché vložení online videí z [YouTube](https://www.youtube.com/) a [Vimeo](https://vimeo.com/) zdroje.

Následující příklad kódu ukazuje, jak vložit online video z *Vimeo* do dokumentu:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Pass direct url from youtu.be.
url = "https://www.youtube.com/watch?v=t_1LYZ102RA"

width = 360
height = 270

shape = builder.insert_online_video(url, width, height)

doc.save(docs_base.artifacts_dir + "WorkingWithOleObjectsAndActiveX.insert_online_video.docx")
{{< /highlight >}}

Druhé přetížení pracuje se všemi ostatními video zdroji a bere vložený HTML kód jako parametr. HTML kód pro vložení videa se může lišit v závislosti na poskytovateli, takže kontaktujte příslušného poskytovatele pro podrobnosti.

{{% alert color="primary" %}}

Vezměte prosím na vědomí, že dokument bude automaticky optimalizován pro MS Word 2013 zobrazovat video.

{{% /alert %}}

Následující příklad kódu ukazuje, jak vložit online video do dokumentu pomocí takového HTML kódu:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Shape width/height.
width = 360
height = 270

# Poster frame image.
f = open(docs_base.images_dir + "Logo.jpg", "rb")
imageBytes = f.read()
f.close()

# Visible url
vimeoVideoUrl = "https://vimeo.com/52477838"

# Embed Html code.
vimeoEmbedCode = ""

builder.insert_online_video(vimeoVideoUrl, vimeoEmbedCode, imageBytes, width, height)

doc.save(docs_base.artifacts_dir + "WorkingWithOleObjectsAndActiveX.insert_online_video_with_embed_html.docx")
{{< /highlight >}}
