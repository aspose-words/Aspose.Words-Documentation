---
title: Instala Aspose.Words para Android via Java
second_title: Aspose.Words para Java
articleTitle: Instala Aspose.Words para Android via Java
linktitle: Instala Aspose.Words para Android via Java
description: "Instalación Aspose.Words para Android via Java."
type: docs
weight: 20
url: /es/java/install-aspose-words-for-android-via-java/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

Desde 2017 la versión de Aspose.Words para Android via Java cumples con Aspose.Words para Java

[aspose-words-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## Instalación

Anteriormente, Aspose.Words para Android via Java fue distribuido como un único archivo ZIP que contenía el JAR archivo, demos y documentación de Aspose.Words para Android via Java.

1. Si desea utilizar cualquier versión antes Aspose.Words para Android via Java 1.11, sólo tiene que descifrar cualquier versión de Aspose.Words.Android.zip en un directorio de su elección.
1. Incluya el archivo Jar extraído en su aplicación usando la configuración Build Path para su aplicación.

Las versiones 1.11 y 1.12 se dividieron manualmente en dos partes: JAR y APK para limitar el número de métodos en el archivo DEX. En estas versiones, proporcionamos nuestro propio cargador APK para iniciar la carga correcta del archivo adicional classes.dex. A partir de la versión 17.2.0 apoyamos el flujo de trabajo oficial descrito [Aquí](https://developer.android.com/studio/build/multidex.html).

### Cómo utilizar Aspose.Words para Android via Java desde el 1.11

Anteriormente, un solo JAR de Aspose.Words para Android via Java contenía 47+mil métodos que hacían que las versiones anteriores fueran un poco poco poco poco poco poco poco poco poco prácticas para usar en aplicaciones androide enormes. Ahora a partir de esta liberación, hemos comenzado a reducir el tamaño de Aspose.Words para Android via Java biblioteca. Nuestra principal preocupación ahora es reducir el número de métodos sin pérdida de funcionalidad. Estamos constantemente trabajando en mejorar la calidad y la usabilidad de Aspose.Words para Android via Java.

### Aspose.Words para Android via Java Biblioteca dividida en dos partes

Habíamos dividido la biblioteca en dos archivos siguientes:

- aspose-words-1.11-android-jdk15.jar: El primero incluye público API y sus métodos auxiliares. Actualmente tiene 32395 métodos.
- aspose-words-1.11-libs-android-jdk15.apk: El segundo incluye jarros de 3er partido, clases básicas y recursos. Actualmente cuenta con 18296 métodos.

### Usando palabras de la aspose para Android via Java desde el 1.11

Incluir Aspose.Words para Android via Java en el proyecto puede utilizar cualquiera de los siguientes métodos:

- Poner "aspose-words-1.11-android-jdk15.jar" en la carpeta "libs" de su proyecto, y el archivo "aspose-words-1.11-libs-android-jdk15.apk" en la carpeta "assets". Indica que vas a utilizar AsposeWordsApplication como el básico.

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

Para iniciar una carga de archivo .apk en el método onCreate() y si no desea utilizar android:name="com.aspose.words.AsposeWordsApplication" in AndroidManifest.xml

**Actividad Java archivo**

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

### Uso Aspose.Words para Android via Java dentro Android Aplicaciones de prueba

Para usar Aspose.Words para Android via Java en los proyectos de prueba, se puede aplicar el mismo enfoque:

- Indicar AsposeWordsTestRunner en AndroidManifest.xml del proyecto de prueba.

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

En IDE podría ser necesario indicar AsposeWordsTestRunner en la ventana de configuración como sigue:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- O para iniciar la carga de .apk usando el método getTargetContext().

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## Cómo utilizar Aspose.Words para Android via Java a partir de 17.2.0

1. Descargar la versión más reciente de [Aspose.Words para Android via Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. Copiar las palabras de la aspose-18.3-android.via.java.jar en el *libs/*folder de su proyecto
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### Instala Aspose.Words para Android via Java desde Maven Repositorio

1. Añadir maven repositorio en su construcción. gris
1. Add 'Aspose.Words para Android via Java' JAR como dependencia
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
