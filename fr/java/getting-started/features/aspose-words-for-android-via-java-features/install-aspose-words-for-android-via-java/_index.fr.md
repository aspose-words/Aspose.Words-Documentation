---
title: Installer Aspose.Words pour Android via Java
second_title: Aspose.Words pour Java
articleTitle: Installer Aspose.Words pour Android via Java
linktitle: Installer Aspose.Words pour Android via Java
description: "Installation de Aspose.Words pour Android via Java."
type: docs
weight: 20
url: /fr/java/install-aspose-words-for-android-via-java/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

Depuis 2017, le versionnage de Aspose.Words pour Android via Java est conforme à Aspose.Words pour Java.

[aspose-words-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## Montage

Auparavant, Aspose.Words pour Android via Java était distribué sous la forme d'un seul fichier ZIP contenant le fichier JAR, les démos et la documentation de Aspose.Words pour Android via Java.

1. Si vous souhaitez utiliser n'importe quelle version avant Aspose.Words pour Android via Java 1.11, il vous suffit de décompresser n'importe quelle version de Aspose.Words.Android.zip dans un répertoire de votre choix.
1. Incluez le fichier Jar extrait dans votre application en utilisant la configuration du chemin de génération de son application.

Les versions 1.11 et 1.12 ont été divisées manuellement en deux parties: JAR et APK afin de limiter le nombre de méthodes dans le fichier DEX. Dans ces versions, nous avons fourni notre propre chargeur APK pour initier le chargement correct des classes supplémentaires.fichier dex. À partir de la version 17.2.0, nous prenons en charge le flux de travail officiel décrit [ici](https://developer.android.com/studio/build/multidex.html).

### Comment utiliser Aspose.Words pour Android via Java à partir de 1.11

Auparavant, un seul JAR de Aspose.Words pour Android via Java contenait plus de 47 000 méthodes, ce qui rendait les anciennes versions un peu impraticables à utiliser dans d'énormes applications Android. Maintenant, à partir de cette version, nous avons commencé à réduire la taille de Aspose.Words pour Android via la bibliothèque Java. Notre préoccupation majeure est maintenant de réduire le nombre de méthodes sans perte de fonctionnalité. Nous travaillons constamment à l'amélioration de la qualité et de la convivialité de Aspose.Words pour Android via Java.

### Aspose.Words pour Android via Java Bibliothèque Divisée en Deux Parties

Nous avions divisé la bibliothèque en deux archives suivantes:

- aspose-words-1.11-android-jdk15.jar: Le premier inclut public API et ses méthodes auxiliaires. Actuellement, il dispose de 32395 méthodes.
- aspose-words-1.11-libs-android-jdk15.apk: Le second inclut des pots tiers, des classes de base et des ressources. Actuellement, il dispose de 18296 méthodes.

### Utiliser des mots Aspose pour Android via Java depuis 1.11

Pour inclure Aspose.Words pour Android via Java dans le projet, vous pouvez utiliser l'une des méthodes suivantes:

- Pour placer "aspose-words-1.11-android-jdk15.jar "dans le dossier "libs" de votre projet, et l'archive "aspose-words-1.11-libs-android-jdk15.apk "dans le dossier "assets". Indiquez que vous allez utiliser AsposeWordsApplication comme base.

**AndroidManifest.xml**

{{< highlight csharp >}}
...
...
<application        
    android:allowBackup="true"
    android:icon="@drawable/ic_launcher"
    android:name="com.aspose.words.AsposeWordsApplication"
    android:label="@string/app_name"
    android:theme="@style/AppTheme" >
    <activity
...
...
{{< /highlight >}}

Pour initier une charge de .fichier apk dans la méthode onCreate () et si vous ne souhaitez pas utiliser Android:name="com.aspose.des mots.AsposeWordsApplication " dans AndroidManifest.xml

**Fichier d'activité Java**

{{< highlight csharp >}}
@Override
protected void onCreate(Bundle savedInstanceState) 
{
    super.onCreate(savedInstanceState);

    // load AW manually
    AsposeWordsApplication awapp = new AsposeWordsApplication();
    
    // this context AW uses to find assets/ folder which contains the second part of the library.
    awapp.loadLibs(getApplicationContext()); 
    if (!checkIfAWSetUpCorrectly())
            throw new IllegalStateException();	
    ...
}
public static boolean checkIfAWSetUpCorrectly()
{
    try
    {
        Class.forName("com.aspose.words.Document");
        return true;
    }
    catch (ClassNotFoundException e)
    {
        e.printStackTrace();
        return false;
    }
}
{{< /highlight >}}

### Utilisation de Aspose.Words pour Android via Java dans Android Applications de test

Pour utiliser Aspose.Words pour Android via Java dans des projets de test, la même approche peut être appliquée:

- Indiquez AsposeWordsTestRunner dans AndroidManifest.xml du projet de test.

**AndroidManifest.xml**

{{< highlight csharp >}}
...
...
<instrumentation
    android:name="com.aspose.words.AsposeWordsTestRunner"    
    android:targetPackage="com.aspose.releaseapp" />
...
...
{{< /highlight >}}

Dans IDE, il peut être nécessaire d'indiquer AsposeWordsTestRunner dans la fenêtre de configuration comme suit:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- Ou pour initier la charge de .apk en utilisant la méthode getTargetContext ().

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## Comment utiliser Aspose.Words pour Android via Java à partir de 17.2.0

1. Téléchargez la dernière version de [Aspose.Words pour Androidpar Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. Copiez aspose-words-18.3-android.via.java.jar dans le dossier *libs/*de votre projet
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### Installer Aspose.Words pour Android via Java à partir du référentiel Maven

1. Ajoutez maven référentiel dans votre build.gradle
1. Ajoutez 'Aspose.Words pour Android via Java ' JAR comme dépendance
{{< highlight csharp >}}

// 1. Add maven repository into your build.gradle 
repositories {
    mavenCentral()
    maven { url "https://repository.aspose.com/words/" }
}

// 2. Add 'Aspose.Words for Android via Java' JAR as a dependency
dependencies {
    ...
    ...
    compile (group: 'com.aspose', name: 'aspose-words', version: '20.2', classifier: 'android.via.java')
}
{{< /highlight >}}
