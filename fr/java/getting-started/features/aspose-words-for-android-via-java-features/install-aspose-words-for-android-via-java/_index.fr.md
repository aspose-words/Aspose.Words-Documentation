---
title: Installer Aspose.Words pour Android par Java
second_title: Aspose.Words pour Java
articleTitle: Installer Aspose.Words pour Android par Java
linktitle: Installer Aspose.Words pour Android par Java
description: "Installation Aspose.Words pour Android par Java."
type: docs
weight: 20
url: /fr/java/install-aspose-words-for-android-via-java/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

Depuis 2017 la version Aspose.Words pour Android par Java satisfait aux prescriptions Aspose.Words pour Java

[aspos-words-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## Installation

Précédemment, Aspose.Words pour Android par Java a été distribué comme un seul fichier ZIP qui contenait le JAR fichier, démos et documentation de Aspose.Words pour Android par Java.

1. Si vous voulez utiliser une version avant Aspose.Words pour Android par Java 1.11, vous avez juste besoin de dézip n'importe quelle version de Aspose.Words.Android.zip dans un répertoire de votre choix.
1. Inclure le fichier Jar extrait dans votre application en utilisant la configuration Build Path pour son application.

Les versions 1.11 et 1.12 ont été divisées manuellement en deux parties: JAR et APK afin de limiter le nombre de méthodes dans le fichier DEX. Dans ces versions, nous avons fourni notre propre chargeur APK pour lancer le chargement correct du fichier classes.dex supplémentaire. A partir de la version 17.2.0, nous soutenons le flux de travail officiel décrit [ici](https://developer.android.com/studio/build/multidex.html).

### Comment utiliser Aspose.Words pour Android par Java à partir de 1.11

Auparavant, un seul JAR des Aspose.Words pour Android par Java contient 47+mil des méthodes qui rendaient les anciennes versions un peu impraticables à utiliser dans des applications androïdes énormes. Maintenant à partir de cette version, nous avons commencé à réduire la taille de Aspose.Words pour Android par Java bibliothèque. Notre principale préoccupation est maintenant de réduire le nombre de méthodes sans perte de fonctionnalité. Nous travaillons en permanence à l'amélioration de la qualité et de la convivialité de Aspose.Words pour Android par Java.

### Aspose.Words pour Android par Java Bibliothèque divisée en deux parties

Nous avions divisé la bibliothèque en deux archives:

- mots-possibles-1.11-android-jdk15.jar: La première comprend le public API et ses méthodes auxiliaires. Actuellement, il a 32395 méthodes.
- mots-possibles-1.11-libs-android-jdk15.apk: La deuxième comprend des pots de troisième partie, des cours de base et des ressources. Actuellement, il a 18296 méthodes.

### Utiliser des mots pour Android par Java depuis le 1.11

Pour inclure Aspose.Words pour Android par Java dans le projet vous pouvez utiliser l'une des méthodes suivantes:

- Placer les mots-possibles-1.11-android-jdk15.jar dans le dossier Libs de votre projet, et l'archive Mots-possibles-1.11-libs-android-jdk15.apk- dans le dossier Assets. Indiquez que vous allez utiliser AsposeWordsApplication comme base.

**AndroidManifeste.xml**

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

Pour initier une charge de fichier .apk dans la méthode onCreate() et si vous ne voulez pas utiliser android:name=.com.aspose.words.AsposeWordsApplication AndroidManifeste.xml

**Activité Java fichier**

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

### Utilisation Aspose.Words pour Android par Java en Android Essais

Pour utiliser Aspose.Words pour Android par Java Dans les projets d'essai, la même approche peut être appliquée:

- Indiquer AsposeWordsTestRunner dans AndroidManifeste.xml du projet de test.

**AndroidManifeste.xml**

{{< highlight csharp >}}
...
...
<instrumentation
    android:name="com.aspose.words.AsposeWordsTestRunner"    
    android:targetPackage="com.aspose.releaseapp" />
...
...
{{< /highlight >}}

Dans IDE, il pourrait être nécessaire d'indiquer AsposeWordsTestRunner dans la fenêtre de configuration comme suit:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- Ou pour lancer la charge de .apk en utilisant la méthode getTargetContext().

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## Comment utiliser Aspose.Words pour Android par Java à partir de 17.2.0

1. Télécharger la dernière version de [Aspose.Words pour Android par Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. Copiez les mots-possibles-18.3-android.via.java.jar dans votre projet *libs/*folder
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### Installer Aspose.Words pour Android par Java de Maven Dépôt

1. Ajouter maven dépôt dans votre construction. grade
1. Ajouter 'Aspose.Words pour Android par Java' JAR comme dépendance
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
