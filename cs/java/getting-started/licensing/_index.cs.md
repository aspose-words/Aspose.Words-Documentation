---
title: Licence a předplatné
second_title: Aspose.Words místo Java
articleTitle: Licence a předplatné
linktitle: Licence a předplatné
description: "Aspose.Words místo Java poskytuje různé plány na nákup nebo nabízí bezplatnou zkušební verzi a 30-denní dočasnou licenci pro hodnocení pomocí licenčních a předplatných zásad."
type: docs
weight: 60
url: /cs/java/licensing/
---

Někdy, abyste mohli lépe studovat systém, chcete se co nejrychleji ponořit do kódu. Aby to bylo jednodušší, Aspose.Words poskytuje různé plány na nákup nebo nabízí Free Trial a 30-denní dočasnou licenci na hodnocení.

{{% alert color="primary" %}}

Všimněte si, že existuje řada obecných zásad a postupů, které vás vedou k tomu, jak hodnotit, řádně licence a nákup našich produktů. Můžete je najít v [Politiky nakupu a FAQ](https://purchase.aspose.com/policies/) sekce.

{{% /alert %}}

## Volná zkušební nebo dočasná licence

Aspose.Words je neuvěřitelný software, který vývojáři mohou vyzkoušet před nákupem. Můžete snadno stáhnout/instalovat Aspose.Words místo Java a Aspose.Words místo Android přes Java [tro Maven](https://releases.aspose.com/words/java/) pro hodnocení.

### Volný proces

Vyhodnocovací verze je shodná s zakoupenou verzí Trial verze jednoduše získá licenci, když přidáte několik řádků kódu pro použití licence.

Zkušební verze Aspose.Words místo Java a Aspose.Words místo Android přes Java bez zadané licence poskytuje plnou funkčnost produktu, ale po načtení a uložení a omezení maximální velikosti dokumentu vloží hodnoticí vodoznak v horní části dokumentu do několika stovek odstavců.

### Dočasná licence

Pokud chcete testovat Aspose.Words místo Java a Aspose.Words místo Android přes Java bez omezení zkušební verze můžete také požádat o 30denní dočasnou licenci. Další podrobnosti viz [Získat dočasnou licenci](https://purchase.aspose.com/temporary-license/) Strana.

## Koupená licence

Po zakoupení, musíte použít licenční soubor nebo zahrnout licenční soubor jako vložený zdroj. V této části jsou popsány možnosti, jak to udělat, a také připomínky k některým společným otázkám.

{{% alert color="primary" %}}

Licence je textový XML soubor, který obsahuje podrobnosti, jako je název produktu, počet licencovaných vývojářů, datum platnosti předplatného a tak dále.

Soubor je digitálně podepsán, takže soubor neměňte. I neúmyslné přidání dalšího vloupání do souboru to zneplatní.

{{% /alert %}}

{{% alert color="primary" %}}

Musíte nastavit licenci:

* pouze jednou za doménu aplikace
* před použitím jakékoli jiné Aspose.Words třídy

{{% /alert %}}

{{% alert color="primary" %}}

Informace o cenách najdete na [Informace o cenách](https://purchase.aspose.com/pricing/words/family/) Strana.

{{% /alert %}}

### Ochrana zakoupené licence

Po zakoupení licence si pečlivě přečtěte informace na stránce [Ochrana zakoupené licence](https://purchase.aspose.com/orders/protecting-your-license-file) k ochraně vaší licenční složky. Upozorňujeme, že tato stránka je k dispozici pouze v případě, že máte placenou licenci.

### Možnosti uplatnění licence

Licence lze uplatnit z různých míst:

* Explicitní cesta
* Složka obsahující *Aspose.Words JAR* soubor
* Vložený zdroj JAR se jmenuje *Aspose.Words JAR*
* Vzhledem k tomu, že společnost Metered License je novým licenčním mechanismem

Často nejjednodušší způsob, jak nastavit licenci, je umístit licenční soubor do stejné složky jako *Aspose.Words JAR* a zadejte pouze název souboru bez cesty.

{{% alert color="primary" %}}

Použijte [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream) způsob, jak licence komponentu.

Volání **SetLicense** mnohokrát není škodlivé, jen plýtvá časem procesoru.

Volání [SetMeteredKey](https://reference.aspose.com/words/java/com.aspose.words/metered/#setMeteredKey-java.lang.String-java.lang.String) mnohokrát není ani škodlivé, ale jen plýtvá časem procesoru a může akumulovat spotřebu nesprávně.

{{% /alert %}}

#### Použít licenci pomocí souboru nebo Stream objektu

{{% alert color="primary" %}}

Volat **SetLicense** v kódu spuštění před použitím Aspose.Words třídy.

{{% /alert %}}

Při vývoji třídní knihovny můžete zavolat **SetLicense** od statického konstruktéra vaší třídy, který používá Aspose.Words. Statický konstruktér bude proveden před instruktáží vaší třídy, aby bylo zajištěno, že Aspose.Words Licence je nainstalována správně.

##### Načíst licenci ze souboru

Použití [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.lang.String) metoda, můžete se pokusit najít licenční soubor ve vložených zdrojích nebo složky, které obsahují JARs aplikací pro další použití.

Následující příklad kódu ukazuje, jak inicializovat licenci ze složky:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-file.java" >}}

##### Načíst licenci z `Stream` Předmět

Následující příklad kódu ukazuje, jak inicializovat licenci z potoka pomocí jiného [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream) metoda:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-stream.java" >}}

#### Zahrnout licenční soubor jako vložený zdroj

Pěkný způsob, jak si s aplikací sbalit licenci a ujistit se, že se neztratí, je zahrnout ji jako vložený zdroj. Můžete jednoduše zkopírovat soubor LIC do složky zdrojů vašeho projektu.

Přestavba projektu by měla vložit soubor .lic do souboru .jar. Poté můžete požádat o licenci pomocí následujícího kódu:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-resources.java" >}}

#### Použít řízenou licenci

Aspose.Words umožňuje vývojářům použít měřený klíč. Tohle je nový licenční mechanismus.

Nový licenční mechanismus bude použit společně se stávající licenční metodou. Zákazníci, kteří chtějí být fakturováni na základě použití API funkce mohou používat Metered Licensing.

Po dokončení všech nezbytných kroků k získání tohoto typu licence obdržíte klíče, ne licenční soubor. Tento měřicí klíč lze použít pomocí [Metered](https://reference.aspose.com/words/java/com.aspose.words/metered/) třída speciálně zavedená pro tento účel.

Nevolejte **SetMeteredKey** metoda často tak, aby tato licenční metoda řádně hromadila spotřebu a oznámila nám ji. Instantiate the Aspose.Words knihovna, volání **SetMeteredKey** Jednou opusťte knihovnu a znovu ji použijte.

Následující příklad kódu ukazuje, jak nastavit naměřené veřejné a soukromé klíče:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-metered-license.java" >}}

{{% alert color="primary" %}}

Vezměte prosím na vědomí, že pro správné použití licence Metered musíte mít stabilní připojení k internetu, protože Metered mechanizmus vyžaduje stálou interakci s našimi službami pro správné výpočty

Více informací naleznete v [Městské licenční FAQ](https://purchase.aspose.com/faqs/licensing/metered/) sekce.

{{% /alert %}}

### Změna názvu licenčního souboru

Licenční název souboru nemusí být:Aspose.Words- LIC. Můžete jej přejmenovat podle svého vkusu a používat toto jméno při nastavení licence ve vaší aplikaci.

### "Nelze najít název licenčního souboru. Výjimka

Když si koupíte a stáhnete licenci, webová stránka Aspose jmenuje licenční soubor *"Aspose.Words.LIC"*. Stáhnete licenční soubor pomocí prohlížeče. V tomto případě některé prohlížeče uznávají licenční soubor jako XML a připojují k němu příponu .xml, takže celý název souboru ve vašem počítači se stane *"Aspose.Words.lic.XML"*.

Kdy? Microsoft Windows je nastavena tak, aby skryla přípony pro známé typy souborů (naneštěstí je to ve většině Windows instalace), licenční soubor se objeví jako *"Aspose.Words. LIC"* in Windows Průzkumník. Pravděpodobně si budete myslet, že tohle je skutečný název souboru a zavolejte **SetLicense** #"Aspose.Words.LIC"*, ale takový soubor neexistuje, proto výjimka.

Chcete-li problém vyřešit, přejmenovat soubor k odstranění neviditelné přípony .xml. Doporučujeme také zakázat možnost "skrýt rozšíření" v Microsoft Windows.

## Používání různých produktů na bázi aspézy

Pokud používáte více produktů Aspose ve vaší aplikaci, jako například Aspose.Words a `Aspose.Cells`, Zde je několik užitečných tipů:

* Nastavte licenci pro každý produkt Aspose zvlášť. I když máte jediný licenční soubor pro všechny komponenty, například "Aspose.Celkem.lic," stále musíte zavolat **SetLicense** samostatně pro každý produkt Aspose, který používáte ve své aplikaci.
* Použijte plně kvalifikovaný název třídy licence. Každý Aspose produkt má `License` třída ve vlastním jmenném prostoru. Například, Aspose.Words má **com.aspose.words.Licence** a `Aspose.Cells` má com.aspose.buňky. Licenční třída. Používání plně kvalifikovaného názvu třídy vám umožní vyhnout se záměně, pokud jde o to, která licence se vztahuje na který produkt.
