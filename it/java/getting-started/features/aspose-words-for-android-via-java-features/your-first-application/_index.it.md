---
title: La tua prima domanda Android via Java
second_title: Aspose.Words per Java
articleTitle: La prima applicazione
linktitle: La prima applicazione
description: "Installazione Aspose.Words per Android via Java."
type: docs
weight: 30
url: /it/java/your-first-application/
timestamp: 2024-01-27-14-07-04
---

Questo articolo ti dà un'idea di iniziare con Aspose.Words per Android via Java. Dimostrerà come creare un nuovo Android progetto da zero, aggiungere un riferimento al Aspose.Words JAR e creare un nuovo documento che viene salvato su disco in formato DOCX. Questo esempio utilizza [Android Studio](https://developer.android.com/studio/index.html) per lo sviluppo e l'applicazione è in corso Android Emulatore. Per iniziare Aspose.Words per Android via Java, si prega di seguire questo tutorial passo per creare un'applicazione che utilizza Aspose.Words per Android via Java:

1. Scarica e [Android Studio](https://developer.android.com/studio/index.html) e installarlo in qualsiasi posizione.
1. Corri Android Studio.
1. Creare un nuovo Android Progetto di applicazione.<br/>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1. Copia aspose-words-17.5-android.via.java.jar nella libs/folder del progetto<br/>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1. Selezionare Sezione del progetto (dal menu del file e fare clic sulla scheda Dipendenze.
   1. Fare clic sul pulsante "+", selezionare l'opzione di dipendenza del file.
   1. Seleziona Aspose.Words libreria da libs cartella e fare clic su OK.<br/>
      ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1. Sincronizzare il progetto con i file Gradle se necessario<br/>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1. Per accedere alle autorizzazioni speciali SDcard deve essere aggiunto. Fare clic su AndroidIl file Manifest.xml e scegliere la visualizzazione XML. Aggiungere la seguente riga al file <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"></uses-permission> <br/>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1. Torna alla sezione codice dell'app e aggiungi le seguenti importazioni:<br/>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br/>
E poi inserire il seguente codice nel corpo del metodo onCreate per creare un nuovo documento da zero utilizzando Aspose.Words,
inserire qualche testo e salvarlo nella SDCard in formato DOCX.<br/>
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
Il codice completo dovrebbe assomigliare a questo:<br/>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1. Ora eseguire nuovamente l'applicazione. Questa volta Aspose.Words codice verrà eseguito in background e generare un documento che viene salvato nella scheda SD.<br/>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1. Per visualizzare il documento creato passare al menu Strumenti quindi scegliere Android e scegliere Android Monitoraggio dispositivi<br/>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1. Utilizzare il visualizzatore predefinito per aprire il documento. L'output generato dall'app con poche righe di codice sembra così:<br/>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)
