---
title: Instalar Aspose.Words para Android via Java
second_title: Aspose.Words para Java
articleTitle: Instalar Aspose.Words para Android via Java
linktitle: Instalar Aspose.Words para Android via Java
description: "Instalando Aspose.Words para Android via Java."
type: docs
weight: 20
url: /pt/java/install-aspose-words-for-android-via-java/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

Desde 2017, a versão de Aspose.Words para Android via Java está em conformidade com Aspose.Words para Java.

[aspose-words-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## Instalação

Anteriormente, Aspose.Words para Android Via Java era distribuído como um único arquivo ZIP que continha o arquivo JAR, demonstrações e documentação de Aspose.Words para Android via Java.

1. Se você quiser usar qualquer versão antes de Aspose.Words para Android via Java 1.11, você só precisa descompactar qualquer versão de Aspose.Words.Android.zip em um diretório de sua escolha.
1. Inclua o arquivo jar extraído em seu aplicativo usando a configuração do caminho de compilação para seu aplicativo.

As versões 1.11 e 1.12 foram divididas manualmente em duas partes: JAR e APK para limitar o número de métodos no ficheiro DEX. Nessas versões, fornecemos nosso próprio carregador APK para iniciar o carregamento correto das classes adicionais.ficheiro dex. A partir da versão 17.2.0, suportamos o fluxo de trabalho oficial descrito [aqui](https://developer.android.com/studio/build/multidex.html).

### Como utilizar Aspose.Words para Android via Java a partir de 1.11

Anteriormente, um único JAR de Aspose.Words para Android via Java continha mais de 47 mil métodos que tornavam as versões mais antigas um pouco impraticáveis de usar em grandes aplicativos android. Agora, a partir desta versão, começamos a reduzir o tamanho de Aspose.Words para Android por meio da Biblioteca Java. A nossa principal preocupação agora é reduzir o número de métodos sem perda de funcionalidade. Estamos constantemente trabalhando para melhorar a qualidade e a usabilidade de Aspose.Words para Android via Java.

### Aspose.Words para Android Via Java biblioteca dividida em duas partes

Tínhamos dividido a biblioteca em dois arquivos seguintes:

- aspose-words-1.11-android-jdk15.jar: o primeiro inclui public API e os seus métodos auxiliares. Atualmente, possui 32395 métodos.
- aspose-words-1.11-libs-android-jdk15.apk: o segundo inclui 3rd party jars, classes básicas e recursos. Atualmente, possui 18296 métodos.

### Usando palavras Aspose para Android via Java desde 1.11

Para incluir Aspose.Words para Android via Java no projeto, você pode usar qualquer um dos seguintes métodos:

- Para colocar " aspose-words-1.11-android-jdk15.jar "na pasta" libs "do seu projeto, e o arquivo" aspose-words-1.11-libs-android-jdk15.apk "na pasta"assets". Indique que você vai usar AsposeWordsApplication como o básico.

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

Para iniciar uma carga de .arquivo apk no método onCreate () e se você não quiser usar o android:name="Com.aspose.palavras.AsposeWordsApplication " em AndroidManifest.xml

**Actividade Java ficheiro**

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

### Usando Aspose.Words para Android via Java em Android Aplicações de teste

Para usar Aspose.Words para Android via Java em projetos de teste, a mesma abordagem pode ser aplicada:

- Indicar AsposeWordsTestRunner em AndroidManifest.xml do projecto de ensaio.

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

Em IDE pode ser necessário indicar AsposeWordsTestRunner na janela de configuração da seguinte forma:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- Ou para iniciar a carga de .apk usando o método getTargetContext ().

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## Como utilizar Aspose.Words para Android via Java a partir de 17.2.0

1. Baixe a versão mais recente do [Aspose.Words Para Android via Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. Copie aspose-words-18.3-android.via.java.jar para a pasta *libs/*do seu projeto
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### Instalar Aspose.Words para Android via Java do repositório Maven

1. Adicione maven repositório em sua compilação.gradle
1. Adicionar 'Aspose.Words para Android via Java ' JAR como uma dependência
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
