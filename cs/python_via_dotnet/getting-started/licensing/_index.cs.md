---
title: Licence a předplatné
second_title: Aspose.Words místo Python via .NET
articleTitle: Licence a předplatné
linktitle: Licence a předplatné
description: "Aspose.Words místo Python via .NET poskytuje různé plány na nákup nebo nabízí bezplatnou zkušební verzi a 30denní dočasnou licenci na hodnocení pomocí licenčních a předplatných zásad."
type: docs
weight: 40
url: /cs/python-net/licensing/
---

Někdy, za účelem lepšího studia systému, chcete ponořit do kódu tak rychle, jak je to možné. Aby to bylo jednodušší, Aspose.Words poskytuje různé plány na nákup nebo nabízí zdarma zkušební a 30-denní dočasné licence na hodnocení.

{{% alert color="primary" %}}

Všimněte si, že existuje řada obecných zásad a postupů, které vás vedou k tomu, jak vyhodnotit, řádně licence a nákup našich produktů. Můžete je najít v [Politiky nákupu a FAQ](https://purchase.aspose.com/policies/) sekce.

{{% /alert %}}

## Volná zkušební nebo dočasná licence

Aspose.Words je neuvěřitelný software, který vývojáři mohou vyzkoušet před nákupem.

### Volný proces

Vyhodnocovací verze je stejná jako zakoupená jedna verze, zkušební verze se prostě stává licencovanou, když přidáte několik řádků kódu pro použití licence.

Zkušební verze Aspose.Words bez zadané licence poskytuje plnou funkčnost produktu, ale po načtení a uložení a omezení maximální velikosti dokumentu na několik set odstavců vloží hodnoticí vodoznak v horní části dokumentu.

### Dočasná licence

Pokud si přejete testovat Aspose.Words bez omezení zkušební verze můžete také požádat o 30denní dočasnou licenci. Další podrobnosti viz [Získání dočasné licence](https://purchase.aspose.com/temporary-license/) stránka.

## Koupená licence

Po zakoupení musíte použít licenční soubor nebo stream. Tento oddíl popisuje možnosti, jak to lze provést, a také připomínky k některým společným otázkám.

{{% alert color="primary" %}}

Musíte nastavit licenci:

* pouze jednou za doménu aplikace

* před použitím jakékoli jiné Aspose.Words třídy

{{% /alert %}}

{{% alert color="primary" %}}

Informace o cenách najdete na [Informace o cenách](https://purchase.aspose.com/pricing/words/family/) stránka.

{{% /alert %}}

### Ochrana zakoupené licence

Po zakoupení licence si musíte pečlivě přečíst informace na stránce [Ochrana zakoupené licence](https://purchase.aspose.com/orders/protecting-your-license-file) k ochraně vaší složky. Upozorňujeme, že tato stránka je k dispozici pouze v případě, že máte placenou licenci.

### Možnosti uplatnění licence

Licence lze uplatnit z různých míst:

* Explicitní cesta
* Složka obsahující python skript, který volá Aspose.Words místo Python via .NET
* Stream
* Jako měřená licence, nový licenční mechanismus

{{% alert color="primary" %}}

Použijte [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) způsob licence součásti.

Volání [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) mnohokrát není škodlivé, jen plýtvá časem procesoru.

Volání [set_metered_key](https://reference.aspose.com/words/python-net/aspose.words/metered/set_metered_key/#str_str) mnohokrát není ani škodlivé, ale jen plýtvá časem procesoru a může akumulovat spotřebu nesprávně.

{{% /alert %}}

#### Použít licenci pomocí souboru nebo Stream objektu

Při vývoji aplikace volejte [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) v kódu spuštění před použitím Aspose.Words třídy.

##### Načíst licenci ze souboru

Použití [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) metoda, můžete se pokusit najít licenční soubor ve vložených zdrojích nebo montážní složky pro další použití.

Následující příklad kódu ukazuje, jak inicializovat licenci ze složky:

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-license-from-file.py" >}}

##### Načíst licenci z `Stream` Předmět

Následující příklad kódu ukazuje, jak inicializovat licenci ze streamu pomocí jiného [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) metoda:

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-license-from-stream.py" >}}

#### Použít řízenou licenci

Aspose.Words umožňuje vývojářům použít měřený klíč. Tohle je nový licenční mechanismus.

Nový licenční mechanismus bude použit společně se stávající licenční metodou. Ti zákazníci, kteří chtějí být účtovány na základě použití API funkce mohou používat Metered Licensing.

Po dokončení všech nezbytných kroků k získání tohoto typu licence obdržíte klíče, ne licenční soubor. Tento měřicí klíč lze použít pomocí [Metered](https://reference.aspose.com/words/python-net/aspose.words/metered/) třída speciálně zavedená pro tento účel.

Nevolejte **SetMeteredKey** metoda často tak, aby tato licenční metoda řádně hromadila spotřebu a oznámila nám ji. Instantiate the Aspose.Words knihovna, volání **SetMeteredKey** Jednou opustíte knihovnu a znovu ji použijete.

Následující příklad kódu ukazuje, jak nastavit naměřené veřejné a soukromé klíče:

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-metered-license.py" >}}

{{% alert color="primary" %}}

Vezměte prosím na vědomí, že pro správné použití licence Metred musíte mít stabilní připojení k internetu, protože Metered mechanizmus vyžaduje pro správné výpočty konstantní interakci s našimi službami. Více informací naleznete v [Měřené licenční FAQ](https://purchase.aspose.com/faqs/licensing/metered/) sekce.

{{% /alert %}}

### Změna názvu licenčního souboru

Název licenčního souboru nemusí být "Aspose.Words.Python.NET.lic." Můžete jej přejmenovat podle svého vkusu a používat toto jméno při nastavování licence ve vaší aplikaci.

### "Není možné najít název licenčního souboru. Výjimka

Když si koupíte a stáhnete licenci, webová stránka Aspose jmenuje licenční soubor *"Aspose.Words.Python.NET.lic"*. Stáhnete licenční soubor pomocí prohlížeče. V tomto případě některé prohlížeče uznávají licenční soubor jako XML a připojují k němu příponu .xml, takže celý název souboru ve vašem počítači se stane *"Aspose.Words.Python.NET.lic.XML"*.

Kdy? Microsoft Windows je nakonfigurována tak, aby skrývala přípony pro známé typy souborů (naneštěstí je to ve většině Windows instalace), licenční soubor se objeví jako *"Aspose.Words.Python.NET.lic"* in Windows Průzkumník. Pravděpodobně si budete myslet, že tohle je skutečný název souboru a zavoláte [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) #"Aspose.Words.Python.NET.lic"*, ale takový soubor neexistuje, proto výjimka.

Chcete-li problém vyřešit, přejmenovat soubor k odstranění neviditelné přípony .xml. Doporučujeme také zakázat možnost "skrýt rozšíření" v Microsoft Windows.

## Používání více výrobků z aspézy

Pokud používáte více produktů Aspose ve vaší aplikaci, jako například Aspose.Words a `Aspose.Cells`, Zde je několik užitečných tipů:

* Nastavte licenci pro každý produkt Aspose zvlášť. I když máte jediný licenční soubor pro všechny komponenty, například "Aspose.Celkem.lic," stále musíte zavolat [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) samostatně pro každý produkt Aspose, který používáte ve své aplikaci.
* Použijte plně kvalifikovaný název třídy licence. Každý Aspose produkt má **License** třída ve vlastním jmenném prostoru. Například: Aspose.Words má [aspose.words.License](https://reference.aspose.com/words/python-net/aspose.words/license/) a `Aspose.Cells` má **Aspose.buňky. Licence** třída. Používání plně kvalifikovaného názvu třídy vám umožní vyhnout se záměně, na kterou licenci se vztahuje, na který produkt.
