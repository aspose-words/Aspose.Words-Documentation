---
title: Votre première candidature pour Android via Java
second_title: Aspose.Words pour Java
articleTitle: Votre Première Candidature
linktitle: Votre Première Candidature
description: "Installation de Aspose.Words pour Android via Java."
type: docs
weight: 30
url: /fr/java/your-first-application/
timestamp: 2024-01-27-14-07-04
---

Cet article vous donne une idée de la mise en route avec Aspose.Words pour Android via Java. Il montrera comment configurer un nouveau projet Android à partir de zéro, ajouter une référence au Aspose.Words JAR et créer un nouveau document qui est enregistré sur le disque au format DOCX. Cet exemple utilise [Android Studio](https://developer.android.com/studio/index.html) pour le développement et l'application est exécutée sur l'émulateur Android. Pour commencer avec Aspose.Words pour Android via Java, veuillez suivre ce tutoriel étape par étape pour créer une application qui utilise Aspose.Words pour Android via Java:

1. Télécharger et le [Android Atelier](https://developer.android.com/studio/index.html) et installez-le à n'importe quel endroit.
1. Exécutez le studio Android.
1. Créez un nouveau projet d'application Android.<br>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1. Copiez aspose-words-17.5-android.via.java.jar dans le dossier libs/de votre projet<br>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1. Sélectionnez Section Projet (dans le menu Fichier et cliquez sur l'onglet Dépendances.
   1. Cliquez sur le bouton "+", sélectionnez l'option dépendance de fichier.
   1. Sélectionnez Aspose.Words bibliothèque dans le dossier libs et cliquez sur OK.<br>
   ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1. Synchronisez le projet avec les fichiers Gradle si nécessaire<br>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1. Pour accéder aux SDcard autorisations spéciales doivent être ajoutées. Cliquez sur le fichier AndroidManifest.xml et choisissez la vue XML. Ajoutez la ligne suivante au fichier <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" /> <br>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1. Revenez à la section code de l'application et ajoutez les importations suivantes:<br>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br>
Et puis insérez le code suivant dans le corps de la méthode onCreate pour créer un nouveau document à partir de zéro en utilisant Aspose.Words,
insérez du texte et enregistrez-le au format SDCard au format DOCX.<br>
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
Le code complet devrait ressembler à ceci:<br>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1. Maintenant, exécutez à nouveau l'application. Cette fois, le code Aspose.Words s'exécutera en arrière-plan et générera un document qui sera enregistré dans SDcard.<br>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1. Pour afficher le document créé, accédez au menu Outils, puis choisissez Android et choisissez Android Moniteur de périphérique<br>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1. Utilisez la visionneuse par défaut pour ouvrir le document. La sortie générée par l'application avec seulement quelques lignes de code ressemble à ceci:<br>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)
