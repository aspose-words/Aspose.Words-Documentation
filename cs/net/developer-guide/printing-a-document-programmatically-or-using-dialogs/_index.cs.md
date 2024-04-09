---
title: Tisk dokumentu C#
second_title: Aspose.Words místo .NET
articleTitle: Tisk dokumentu Programově nebo pomocí dialogů
linktitle: Tisk dokumentu Programově nebo pomocí dialogů
description: "Vytisknout dokument na Server pomocí neřízeného XpsPrintu API nebo pomocí vybrané tiskárny s Dialogy Nastavení a náhledu tisku v C#."
type: docs
weight: 55
url: /cs/net/print-a-document-programmatically-or-using-dialogs/
---

Tento článek popisuje, jak tisknout dokument o zpracování slov z ASP.NET nebo Windows Servisní aplikace Aspose.Words a `XpsPrint` API. Ukazuje také metody tisku dokumentu pomocí dialogů Nastavení, náhledu tisku a postupu tisku a vysvětluje, jak snížit čas první výzvy k tisku dokumentu.

## Tisknout dokument na Server prostřednictvím `XpsPrint` API

Tento oddíl je určen pro uživatele, kteří chtějí předložit XPS dokument pro nespravovaný XpsPrint API z .NET aplikace Aspose.Words.

### Omezení tisku dokumentu ASP.NET nebo Windows Žádosti o služby

Při vývoji .NET aplikace, která vytváří nějaký tištěný výstup, můžete obvykle používat třídy uvedené v *System.Drawing.Printing* jmenný prostor nebo Windows Třída Prezentační nadace (WPF). Pokud se však žádost týká ASP.NET nebo Windows Servisní aplikace, možnosti tisku jsou omezené, protože Microsoft odrazuje od používání tohoto přístupu. • .NET Framework Tiskové třídy nejsou podporovány aplikací služeb. To zahrnuje ASP stránky, které obvykle běží v rámci serverové služby.

Třídy v rámci *System.Drawing.Printing* nejsou podporovány pro použití v rámci Windows služba nebo ASP.NET aplikace nebo služby, a pokus o jejich použití může způsobit snížení výkonu služeb, časové výjimky a další problémy. Využití WPF k budování Windows Rovněž služby nejsou podporovány. Vzhledem k tomu, WPF je prezentační technologie, Windows služba vyžaduje vhodná oprávnění k provádění vizuálních operací zahrnujících interakci uživatelů. Pokud Windows služba nemá taková povolení, mohou být neočekávané výsledky.

• Aspose.Words [Document](https://reference.aspose.com/words/net/aspose.words/document/) objekt poskytuje rodinu [Print](https://reference.aspose.com/words/net/aspose.words/document/methods/print/index) metody tisku dokumentů. Tyto metody používají .NET třídy tisku definované v *System.Drawing.Printing* jmenný prostor. Je jich mnoho. Aspose.Words zákazníci, kteří je úspěšně využívají pro tisk v aplikacích na straně serveru. Tento článek však ukazuje alternativní metodu tisku, která je v souladu s MicrosoftDoporučení.

### Metody pro tisk dokumentu na Server

Správný způsob tisku dokumentů podle Microsoft je pomocí nespravované XpsPrint API. Tohle API je k dispozici na Windows 7, Windows Server 2008 R2, a dále Windows Vista za předpokladu aktualizace platformy pro Windows Vista je nainstalován.

Od Aspose.Words lze snadno převést jakýkoli dokument na <span notrans="<span notrans=" XPS"=""></span>,? stačí napsat kód, který prochází XPS dokument k `XpsPrint` API. Jediný problém je, že `XpsPrint` API je nezvládnutelná a vyžaduje znalosti technologie Platform Invoke.

Vytisknout dokument, Aspose.Words poskytuje **XpsPrintHelper** třída obsahuje jednoduchou metodu tisku, kde stačí zadat následující parametry (viz podrobnosti v článku [Vytisknout dokument prostřednictvím XPS API](/words/net/missing-features-in-openxml/)):

- Dokument, který chcete vytisknout.
- Jméno tiskárny.
- Pracovní jméno (nepovinné).
- Booleova hodnota, s uvedením, zda program má počkat, až bude tisk dokončen. Systém proto buď zkontroluje, zda byl dokument úspěšně vytištěn, nebo se vrátí ihned po odeslání tiskového úkolu. V posledním případě není možné určit, zda byl tisk úspěšný.

Po zjištění jakýchkoliv problémů s předložením nebo tiskem dokumentu bude metoda hodit výjimku.

Příklad kódu níže ukazuje, jak tisknout dokument pomocí **XpsPrintHelper** třída:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintDocViaXpsPrint-PrintDocViaXpsPrint.cs" >}}

Při spuštění projektu tiskne vzorový dokument na zadanou tiskárnu a otevře okno konzole pro zobrazení výsledků tisku. Po dokončení tiskové práce nebo chybách zobrazí systém zprávu o úspěchu nebo text vrhané výjimky.

Můžete také nastavit některé nastavení tisku pomocí [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) třída. Například Microsoft Word, Pro každou část jsou definovány zásobníky tiskárny a jsou specifické pro tiskárnu. Proto můžete programově změnit tyto hodnoty pro každou sekci prostřednictvím [FirstPageTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/firstpagetray/) a [OtherPagesTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/otherpagestray/) vlastnosti.

{{% alert color="primary" %}}

V některých případech můžete tento vzorek použít bez Aspose.Words. Například, když již máte XPS dokument a chcete ho jen vytisknout z ASP.NET nebo Windows Servisní žádost. Pak můžete smazat `Print` metoda.

{{% /alert %}}

Existují dvě přetížení **XpsPrintHelper**.**Print** metoda. První přetížení vyžaduje [Document](https://reference.aspose.com/words/net/aspose.words/document/) objekt a ukládá jej do `MemoryStream` v XPS formát. Druhé přetížení přijímá `Stream` objekt. Potok musí obsahovat dokument v XPS formát.

Můžete si stáhnout příklady metody přetížení z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/MissingFeaturesofOpenXMLWordsv1.1/Print.Document.via.XPS.API.zip).

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## Tisk dokumentu s nastavením a náhledem tisku

Při práci s dokumenty je často nutné tisknout do vybrané tiskárny. Je užitečné využít dialogové okno náhledu tisku a vizuálně zkontrolovat, jak se zobrazí tištěný dokument a zvolit příslušné možnosti tisku.

• Aspose.Words nemá vestavěný dialog nebo formuláře, ale provádí [AsposeWordsPrintDocument](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/) třída, na základě .NET **PrintDocument** třída. Příklad této třídy může být předán **PrintPreviewDialog** formulář pro náhled a tisk dokumentu. Také [Dialog tisku](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.printpreviewdialog?view=netframework-4.8) třída definuje výstup pro přenos do tiskárny.

Následující příklad ukazuje, jak použít tyto třídy k tisku dokumentu z Aspose.Words přes dialogy náhledu a nastavení tisku:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialog.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialogEvent.cs" >}}

{{% alert color="primary" %}}

• **AllowSomePages** vlastnost umožňuje vybrat řadu stránek pro tisk, pokud je hodnota této vlastnosti True. Ve výchozím nastavení jsou pro tisk vybrány všechny stránky v rozsahu.

{{% /alert %}}

Pro optimalizaci vzhledu dialogového okna Print Preview zadejte vlastnosti **PrintPreviewDialog** třída.

## Tisk více stránek na jednom listu

Při tisku dokumentů je vždy prospěšné mít větší flexibilitu. Použití .NET a Aspose.Words lze snadno doladit tiskovou operaci k provedení vlastní logiky tím, že definuje způsob, jakým se dokument objeví na tištěné stránce.

Stejně jako v předchozí části, Aspose.Words provádí **MultipagePrintDocument** třída, která je založena na .NET **PrintDocument** třída. To znamená, že stávající .NET tisková infrastruktura může být použita tak, aby dialogy tisku a tisku před tiskem umožnily vizualizaci dokumentu před tiskem. • **MultipagePrintDocument** třída poskytuje možnost tisknout několik stránek na jeden list papíru.

{{% alert color="primary" %}} You can download an example of using the **MultipagePrintDocument** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MultipagePrintDocumentExample). {{% /alert %}}

Výsledek tohoto příkladu kódu je uveden níže:

![print-a-document-programmatically-or-using-dialogs-aspose-words-net](/words/net/print-a-document-programmatically-or-using-dialogs/print-a-document-programmatically-or-using-dialogs-1.png)

## Schovávání Dialogu pokroku tisku při tisku dokumentu

Dialog Progress tisku se neobjeví při tisku dokumentu prostřednictvím [Print](https://reference.aspose.com/words/net/aspose.words/document/print/) metoda. Toto dialogové okno se však objeví při tisku s jiným [Print](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/) metoda. V tomto případě, abyste zabránili zobrazování dialogového okna tisku, měli byste v této metodě zadat platné nastavení tiskárny a standardní tiskový ovladač, jak je uvedeno v následujícím příkladu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintProgressDialog-PrintProgressDialog.cs" >}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## Jak snížit čas první výzvy k tisku dokumentu

Aspose.Words čte a ukládá některé oblasti **PrinterSettings** snížit čas tisku. Můžete toho dosáhnout voláním [CachePrinterSettings](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/cacheprintersettings/) metoda. Tato metoda se volá před zahájením tisku, pokud nebyla provedena dříve. Všimněte si, že celkový čas tisku s a bez volání této metody je téměř stejný. Účelem této metody je snížit čas první výzvy [Print](https://reference.aspose.com/words/net/aspose.words/document/print/) metoda. Následující příklad kódu ukazuje, jak používat tuto metodu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-Print_CachePrinterSettings-CachePrinterSettings.cs" >}}

## Viz také

- [Aktualizace platformy pro Windows Vista](https://docs.microsoft.com/en-us/windows/win32/win7ip/platform-update-for-windows-vista-overview)
