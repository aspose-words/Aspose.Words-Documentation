---
title: La tua prima applicazione per Android tramite Java
second_title: Aspose.Words per Java
articleTitle: La tua prima applicazione
linktitle: La tua prima applicazione
description: "Installazione di Aspose.Words per Android tramite Java."
type: docs
weight: 30
url: /it/java/your-first-application/
timestamp: 2024-01-27-14-07-04
---

Questo articolo ti dà un'idea di come iniziare con Aspose.Words per Android tramite Java. Dimostrerà come impostare un nuovo progetto Android da zero, aggiungere un riferimento al Aspose.Words JAR e creare un nuovo documento che viene salvato su disco in formato DOCX. Questo esempio utilizza [Android Studio](https://developer.android.com/studio/index.html) per lo sviluppo e l'applicazione viene eseguita sull'emulatore Android. Per iniziare con Aspose.Words per Android tramite Java, segui questo tutorial passo-passo per creare un'app che utilizza Aspose.Words per Androidtramite Java:

1. Scarica e il [Android Studio](https://developer.android.com/studio/index.html) e installarlo in qualsiasi posizione.
1. Eseguire lo studio Android.
1. Creare un nuovo progetto di applicazione Android.<br>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1. Copia aspose-words-17.5-android.via.java.jar nella cartella libs / del tuo progetto<br>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1. Selezionare la sezione Progetto (dal menu file e fare clic sulla scheda Dipendenze.
   1. Fare clic sul pulsante "+", selezionare l'opzione dipendenza file.
   1. Selezionare Aspose.Words libreria dalla cartella libs e fare clic su OK.<br>
   ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1. Sincronizza il progetto con i file Gradle se necessario<br>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1. Per accedere a SDcard è necessario aggiungere autorizzazioni speciali. Fare clic sul file AndroidManifest.xml e scegliere la vista XML. Aggiungere la seguente riga al file <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" /> <br>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1. Torna alla sezione codice dell'app e aggiungi le seguenti importazioni:<br>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br>
E quindi inserire il seguente codice nel corpo del metodo onCreate per creare un nuovo documento da zero usando Aspose.Words,
inserire del testo e salvarlo nel formato SDCard in DOCX.<br>
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
{{< /highlight >}}<br>
Il codice completo dovrebbe essere simile a questo:<br>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1. Ora esegui di nuovo l'applicazione. Questa volta il codice Aspose.Words verrà eseguito in background e genererà un documento che viene salvato in SDcard.<br>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1. Per visualizzare il documento creato passare al menu Strumenti, quindi scegliere Android e scegliere Android Monitor dispositivo<br>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1. Utilizzare il visualizzatore predefinito per aprire il documento. L'output generato dall'app con poche righe di codice è simile a questo:<br>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)
