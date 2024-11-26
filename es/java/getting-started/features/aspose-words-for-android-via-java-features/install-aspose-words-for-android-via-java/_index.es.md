---
title: Instalar Aspose.Words para Android a través de Java
second_title: Aspose.Words por Java
articleTitle: Instalar Aspose.Words para Android a través de Java
linktitle: Instalar Aspose.Words para Android a través de Java
description: "Instalando Aspose.Words para Android a través de Java."
type: docs
weight: 20
url: /es/java/install-aspose-words-for-android-via-java/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

Desde 2017, el control de versiones de Aspose.Words para Android a través de Java cumple con Aspose.Words para Java.

[aspose-words-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## Instalación

Anteriormente, Aspose.Words para Android a través de Java se distribuía como un único archivo ZIP que contenía el archivo JAR, demostraciones y documentación de Aspose.Words para Android a través de Java.

1. Si desea utilizar cualquier versión anterior a Aspose.Words para Android a través de Java 1.11, solo necesita descomprimir cualquier versión de Aspose.Words.Android.zip en el directorio que elija.
1. Incluya el archivo Jar extraído en su aplicación utilizando la configuración de la ruta de compilación para su aplicación.

Las versiones 1.11 y 1.12 se dividieron manualmente en dos partes: JAR y APK para limitar el número de métodos en el archivo DEX. En estas versiones, proporcionamos nuestro propio cargador APK para iniciar la carga correcta de las clases adicionales.archivo dex. A partir de la versión 17.2.0, admitimos el flujo de trabajo oficial descrito [aquí](https://developer.android.com/studio/build/multidex.html).

### Cómo usar Aspose.Words para Android a través de Java desde 1.11 en adelante

Anteriormente, un solo JAR de Aspose.Words para Android a través de Java contenía más de 47 mil métodos que hacían que las versiones anteriores fueran un poco imprácticas de usar en grandes aplicaciones de Android. Ahora, a partir de esta versión, hemos comenzado a reducir el tamaño de Aspose.Words para Android a través de la biblioteca Java. Nuestra mayor preocupación ahora es reducir el número de métodos sin pérdida de funcionalidad. Trabajamos constantemente para mejorar la calidad y la usabilidad de Aspose.Words para Android a través de Java.

### Aspose.Words para Android a través de la biblioteca Java Dividida en Dos Partes

Habíamos dividido la biblioteca en los siguientes dos archivos:

- aspose-words-1.11-android-jdk15.jar: El primero incluye public API y sus métodos auxiliares. Actualmente, cuenta con 32395 métodos.
- aspose-words-1.11-libs-android-jdk15.apk: El segundo incluye frascos de terceros, clases básicas y recursos. Actualmente, cuenta con 18296 métodos.

### Usando Palabras Aspose para Android a través de Java desde 1.11

Para incluir Aspose.Words para Android a través de Java en el proyecto, puede usar cualquiera de los siguientes métodos:

- Para colocar "aspose-words-1.11-android-jdk15.jar " en la carpeta "libs" de su proyecto, y el archivo "aspose-words-1.11-libs-android-jdk15.apk "en la carpeta "assets". Indique que va a utilizar AsposeWordsApplication como el básico.

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

Para iniciar una carga de .archivo apk en el método onCreate () y si no quieres usar android: name= " com.aspose.palabras.AsposeWordsApplication " en AndroidManifest.xml

**Archivo de actividad Java**

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

### Uso de Aspose.Words para Android a través de Java en Android Aplicaciones de prueba

Para usar Aspose.Words para Android a través de Java en proyectos de prueba, se puede aplicar el mismo enfoque:

- Indique AsposeWordsTestRunner en AndroidManifest.xml del proyecto de prueba.

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

En IDE puede ser necesario indicar AsposeWordsTestRunner en la ventana de configuración de la siguiente manera:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- O para iniciar la carga de .apk usando el método getTargetContext ().

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## Cómo usar Aspose.Words para Android a través de Java desde 17.2.0 en adelante

1. Descargue la versión más reciente de [Aspose.Words para Android a través de Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. Copie aspose-words-18.3-android.via.java.jar en la carpeta *libs/*de su proyecto
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### Instale Aspose.Words para Android a través de Java desde el repositorio Maven

1. Agregue el repositorio maven a su compilación.gradle
1. Agregue 'Aspose.Words para Android a través de Java ' JAR como dependencia
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
