---
title: Vaše první žádost o Android přes Java
second_title: Aspose.Words místo Java
articleTitle: Vaše první žádost
linktitle: Vaše první žádost
description: "Instalace Aspose.Words místo Android přes Java."
type: docs
weight: 30
url: /cs/java/your-first-application/
timestamp: 2024-01-27-14-07-04
---

Tento článek vám dává představu, jak začít s Aspose.Words místo Android přes Java. Bude demonstrovat, jak vytvořit nový Android projekt od nuly, přidejte odkaz na Aspose.Words JAR a vytvořit nový dokument, který je uložen na disk ve formátu DOCX. Tento příklad používá [Android Studio](https://developer.android.com/studio/index.html) pro vývoj a aplikaci běží na Android Emulátor. Začít s Aspose.Words místo Android přes Java, Prosím postupujte podle tohoto krok za krokem tutoriál vytvořit aplikaci, která používá Aspose.Words místo Android přes Java:

1. Stáhnout a [Android Studio](https://developer.android.com/studio/index.html) a nainstalovat ji na jakékoliv místo.
1. Spustit Android Studio.
1. Vytvořit nový Android Projekt aplikací.<br/>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1. Kopírovat aspose-slova-17.5-android.via.java.jar do vašeho projektu<br/>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1. Vyberte projektovou sekci (z menu souboru a klikněte na kartu Závislosti.
   1. Klikněte na tlačítko "+" a vyberte volbu závislosti na souboru.
   1. Vybrat Aspose.Words knihovna ze složky libs a klikněte na OK.<br/>
      ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1. Synchronizujte projekt se soubory Gradle v případě potřeby<br/>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1. Pro přístup ke speciálním oprávněním SDcard je nutné přidat. Klikněte na AndroidManifest.xml soubor a vybrat XML pohled. Přidat následující řádek do souboru <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"></uses-permission> <br/>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1. Navigovat zpět do kódu sekce aplikace a přidat následující dovozy:<br/>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br/>
A pak vložte následující kód do těla metody onCreate pro vytvoření nového dokumentu od nuly pomocí Aspose.Words,
vložit nějaký text a uložit jej na SDCard ve formátu DOCX.<br/>
{{< highlight csharp >}}
try
{
   Document doc = new Document();
   DocumentBuilder builder = new DocumentBuilder(doc);
   builder.writeln("Hello World!");
   String sdCardPath = Environment.getExternalStorageDirectory().getPath() + File.separator;
   doc.save(sdCardPath + "Document Out.docx");
}
catch (Exception e)
{
   e.printStackTrace();
}
{{< /highlight >}}<br/>
Celý kód by měl vypadat takto:<br/>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1. Teď tu žádost spusť znovu. Tentokrát Aspose.Words kód spustí v pozadí a vytvoří dokument, který je uložen na SDcard.<br/>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1. Pro zobrazení vytvořeného dokumentu přejděte do nabídky Nástroje pak vyberte Android a vybrat Android Monitor zařízení<br/>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1. Pro otevření dokumentu použijte výchozí prohlížeč. Výstup generovaný aplikací s několika řádky kódu vypadá takto:<br/>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)
