---
title: Licence
second_title: Aspose.Words místo Java
articleTitle: Licence
linktitle: Licence
description: "Licence Aspose.Words místo Android přes Java."
type: docs
weight: 60
url: /cs/java/licensing-android/
---

Někdy, abyste mohli lépe studovat systém, chcete se co nejrychleji ponořit do kódu. Aby to bylo jednodušší, Aspose.Words poskytuje různé plány na nákup nebo nabízí Free Trial a 30-denní dočasnou licenci na hodnocení.

{{% alert color="primary" %}}

Všimněte si, že existuje řada obecných zásad a postupů, které vás vedou k tomu, jak hodnotit, řádně licence a nákup našich produktů. Můžete je najít v [Politiky nakupu a FAQ](https://purchase.aspose.com/policies/) sekce.

{{% /alert %}}

## Volná zkušební nebo dočasná licence

Aspose.Words je neuvěřitelný software, který vývojáři mohou vyzkoušet před nákupem. Můžete snadno stáhnout/instalovat Aspose.Words místo Java a Aspose.Words místo Android přes Java [ze stránky ke stažení](https://releases.aspose.com/words/androidjava/) pro hodnocení.

Vyhodnocovací verze je shodná s zakoupenou verzí Trial verze jednoduše získá licenci, když přidáte několik řádků kódu pro použití licence.

{{% alert color="primary" %}}

Více informací o bezplatném procesu nebo dočasné licenci pro Aspose.Words místo Android přes Java na [Licence a předplatn é](/words/cs/java/licensing/).

{{% /alert %}}

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
* Vložený zdroj
* Vzhledem k tomu, že společnost Metered License je novým licenčním mechanismem

#### Načítání licenčního souboru

In Aspose.Words místo Android přes Java, licence může být [Licence a předplatn é](/words/cs/java/licensing/), nebo naloženo z potoka:

1. Dejte licenční soubor na libovolném místě **/mnt/sdcard/**.
1. Vytvořit proud, který odkazuje na soubor.
1. Pošlete proud (s obsahem licenčního souboru) do `SetLicense` metoda.

**Java**

{{< highlight java >}}
String dataDir = Environment.getExternalStorageDirectory().getPath() + "/";

// Create a stream object containing the license file
FileInputStream fstream = new FileInputStream(dataDir + "Aspose.Email.Android.Java.lic");

// Instantiate the `License` class
License license = new License();
//Set the license through the stream object
license.setLicense(fstream);
{{< /highlight >}}

Aplikace licence z Embedded Resource. Přístup k licenci jako zdroji jménem Android soubor s balíkem:

1. Přidat licenční soubor jako zdroj do aplikace **res/raw** Složka.
   Licenční soubor by měl být viditelný v **res/raw** Složka.
1. Přístup/načíst licenci ze zdroje s následujícím vzorkem kódu.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### Použít řízenou licenci

Aspose.Words umožňuje vývojářům použít měřený klíč. Jedná se o nový licenční mechanismus. Nový licenční mechanismus bude použit spolu se stávající licenční metodou. Zákazníci, kteří chtějí být účtovány na základě použití API funkce mohou používat měřené licence.

**Java**

{{< highlight java >}}
Metered metered = new Metered();
try
{
	// Access the setMeteredKey property and pass public and private keys as parameters
    metered.setMeteredKey(publicKey, privateKey);
	Log.i("Metered License", "Ok. Metered License has been applied successfully.");
}
catch (Exception ex)
{
    ex.printStackTrace();
    Log.e("Metered License", "Setting metered key has failed: " + ex.getMessage());
}
{{< /highlight >}}

### Změna názvu licenčního souboru

Název licenčního souboru nemusí být 'Aspose.Words.Android.Java.lic." Můžete to přejmenovat na cokoliv chcete a používat to jméno při volání `License.SetLicense`.

### Výjimka - Nelze najít název licenčního souboru

Když si stáhnete licenci, kterou jste koupili, licenční soubor se jmenuje **Aspose.Words.Android.Java.lic** ve výchozím nastavení. Licenční soubor je stažen přes váš prohlížeč a některé prohlížeče uznávají licenční soubor jako XML a připojují příponu .xml k názvu. Stažený soubor se stává **Aspose.Words.Android.Java.lic.XML**.

Kdy? Microsoft Windows je nastavena tak, aby skrývala příponu známých typů souborů (naneštěstí je to ve většině Windows instalace), licenční soubor je uveden jako **Aspose.Words.Android.Java.lic** v Windows Průzkumník. Vypadá to jako očekávaný název souboru. Když zavoláš `License.SetLicense` a projítAspose.Words.Android.Java.lic', uvidíte a výjimku, protože žádný takový soubor neexistuje

Chcete-li problém vyřešit, přejmenovat soubor k odstranění neviditelné přípony .xml. Doporučujeme zakázat možnost "skrýt rozšíření" v Microsoft Windows.

## Používání různých produktů na bázi aspézy

Pokud používáte několik produktů Aspose v aplikaci, například Aspose.Words a `Aspose.Cells`, Zde je několik užitečných tipů.

- Nastavte licenci pro každý produkt Aspose zvlášť.
  I když máte jeden licenční soubor pro všechny komponenty, například 'Aspose. Celkem.Android.Java.lic', stále musíte zavolat `License.SetLicense` metoda zvlášť pro každý produkt Aspose.
- Použijte plně kvalifikované jméno třídy licence.
  Každý Aspose produkt má `License` třída ve svém jmenném prostoru. Například, Aspose.Words má com.aspose.words. Licence a `Aspose.Cells` má com.aspose.buňky. Licenční třída. Použitím plně kvalifikovaného názvu třídy se můžete vyhnout jakékoliv záměně, na kterou licenci se vztahuje.
