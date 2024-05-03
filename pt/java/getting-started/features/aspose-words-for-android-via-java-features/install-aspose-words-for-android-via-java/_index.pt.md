---
title: Instalar Aspose.Words para Android via via via via Java
second_title: Aspose.Words para Java
articleTitle: Instalar Aspose.Words para Android via via via via Java
linktitle: Instalar Aspose.Words para Android via via via via Java
description: "Instalação Aspose.Words para Android via via via via Java."
type: docs
weight: 20
url: /pt/java/install-aspose-words-for-android-via-java/
---

{{% alert color="primary" %}}

Desde 2017 a versão de Aspose.Words para Android via via via via Java compatível com Aspose.Words para Java

[aspose-words-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## Instalação

Anteriormente... Aspose.Words para Android via via via via Java foi distribuído como um único arquivo ZIP que continha JAR arquivo, demos e documentação de Aspose.Words para Android via via via via Java.

1. Se você quiser usar qualquer versão antes Aspose.Words para Android via via via via Java 1.11, você só precisa descompactar qualquer versão de Aspose.Words.Android.zip em um diretório de sua escolha.
1. Inclua o arquivo Jar extraído em sua aplicação usando a configuração Build Path para sua aplicação.

As versões 1.11 e 1.12 foram divididas manualmente em duas partes: JAR e APK para limitar o número de métodos no arquivo DEX. Nestas versões, nós fornecemos o nosso próprio carregador APK para iniciar o carregamento correto do arquivo classes.dex adicionais. A partir da versão 17.2.0 apoiamos o fluxo de trabalho oficial descrito [aqui](https://developer.android.com/studio/build/multidex.html).

### Como Usar Aspose.Words para Android via via via via Java a partir de 1.11

Anteriormente, um single JAR de Aspose.Words para Android via via via via Java continha 47+ mil métodos que fizeram versões mais antigas um pouco impraticáveis para usar em aplicações enormes do android. Agora a partir desta versão, começamos a reduzir o tamanho de Aspose.Words para Android via via via via Java biblioteca. Nossa principal preocupação agora é reduzir o número de métodos sem perda de funcionalidade. Estamos constantemente trabalhando para melhorar a qualidade e usabilidade de Aspose.Words para Android via via via via Java.

### Aspose.Words para Android via via via via Java Biblioteca Dividida em duas partes

Nós dividimos a biblioteca em dois arquivos seguintes:

- aspose-words-1.11-android-jdk15.jar: O primeiro inclui público API e seus métodos auxiliares. Atualmente, tem 32395 métodos.
- aspose-words-1.11-libs-android-jdk15.apk: O segundo inclui jarros de terceiros, classes básicas e recursos. Atualmente, tem 18296 métodos.

### Usando Palavras de Aspose para Android via via via via Java desde 1.11

Para incluir Aspose.Words para Android via via via via Java no projeto você pode usar qualquer um dos seguintes métodos:

- Para colocar "aspose-words-1.11-android-jdk15.jar" na pasta "libs" do seu projeto, e o arquivo "aspose-words-1.11-libs-android-jdk15.apk" na pasta "assets". Indicar que você vai usar AsposeWordsApplication como o básico.

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

Para iniciar uma carga de arquivo .apk no método onCreate() e se você não quiser usar android:name="com.aspose.words.AsposeWordsApplication" em AndroidManifest.xml

**Actividades Java arquivo**

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

### Usando Aspose.Words para Android via via via via Java em Android Aplicações de teste

Para usar Aspose.Words para Android via via via via Java em projetos de teste, a mesma abordagem pode ser aplicada:

- Indicar AsposeWordsTestRunner em AndroidManifest.xml do projeto de teste.

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

No IDE pode ser necessário indicar AsposeWordsTestRunner na janela de configuração da seguinte forma:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- Ou para iniciar a carga de .apk usando o método getTargetContext().

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## Como Usar Aspose.Words para Android via via via via Java a partir de 17.2.0 Em diante

1. Baixe a versão mais recente de [Aspose.Words para Android via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via via Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. Copie aspose-words-18.3-android.via.java.jar no *libs/*folder do seu projeto
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### Instalar Aspose.Words para Android via via via via Java a partir de Maven Repositório

1. Adicionar maven repositório em sua compilação. Gradle
1. AdicionarAspose.Words para Android via via via via Java' JAR como uma dependência
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