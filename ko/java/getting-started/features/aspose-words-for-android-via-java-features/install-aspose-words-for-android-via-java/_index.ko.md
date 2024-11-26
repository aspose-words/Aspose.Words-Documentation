---
title: Java를 통해Android에 대해Aspose.Words을 설치합니다.
second_title: Aspose.WordsJava
articleTitle: Java를 통해Android에 대해Aspose.Words을 설치합니다.
linktitle: Java를 통해Android에 대해Aspose.Words을 설치합니다.
description: "Java를 통해Android에Aspose.Words을 설치합니다."
type: docs
weight: 20
url: /ko/java/install-aspose-words-for-android-via-java/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

2017 년부터Java를 통해Android에 대한Aspose.Words의 버전 관리는Java에 대한Aspose.Words을 준수합니다.

[aspose-words-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## 설치

이전에는Android을 통해Java에 대한Aspose.Words이Android을 통해Java에 대한JAR파일,데모 및Aspose.Words의 문서를 포함하는 단일ZIP파일로 배포되었습니다.

1. 당신이Java1.11를 통해Android에 대한Aspose.Words전에 모든 버전을 사용하려면,당신은 당신의 선택의 디렉토리에Aspose.Words.Android.zip의 모든 버전의 압축을 해제해야합니다.
1. 응용 프로그램의 빌드 경로 구성을 사용하여 추출된 항아리 파일을 응용 프로그램에 포함합니다.

버전1.11과1.12은DEX파일의 메소드 수를 제한하기 위해JAR과APK의 두 부분으로 수동으로 나뉘어졌습니다. 이 버전에서는 추가 클래스의 올바른 로딩을 시작하기 위해 자체APK로더를 제공했습니다.덱스 파일 버전17.2.0부터 우리는 설명 된 공식 워크 플로우를 지원합니다 [여기](https://developer.android.com/studio/build/multidex.html).

### 1.11이후Java을 통해Android에Aspose.Words을 사용하는 방법

이전에는Java를 통해Android에 대한Aspose.Words의 단일JAR에는 47,000 개 이상의 방법이 포함되어 있었으며 이는 이전 버전을 거대한 안드로이드 응용 프로그램에서 사용하는 것이 약간 비실용적이었습니다. 이제 이 릴리스부터Java라이브러리를 통해Android에 대한Aspose.Words크기를 줄이기 시작했습니다. 우리의 주요 관심사는 이제 기능의 손실없이 방법의 수를 줄이는 것입니다. 우리는 끊임없이Java를 통해Android에 대한Aspose.Words의 품질과 유용성을 개선하기 위해 노력하고 있습니다.

### Aspose.WordsAndroid을 통해Java라이브러리를 두 부분으로 나눈 경우

우리는 도서관을 다음 두 개의 아카이브로 나누었습니다.:

- aspose-words-1.11-android-jdk15.jar:첫 번째는 공개API및 보조 방법을 포함합니다. 현재 32395 개의 방법이 있습니다.
- aspose-words-1.11-libs-android-jdk15.apk:두 번째에는 타사 항아리,기본 클래스 및 리소스가 포함됩니다. 현재 18296 개의 방법이 있습니다.

### 1.11이후Java를 통해Android에 대한 단어를 사용하여

Java를 통해Android에 대해Aspose.Words을 프로젝트에 포함하려면 다음 방법 중 하나를 사용할 수 있습니다:

- "aspose-words-1.11-android-jdk15.jar"을 프로젝트의 폴더"라이브러리"에 넣고 아카이브"aspose-words-1.11-libs-android-jdk15.apk"을 폴더"자산"에 넣습니다. AsposeWordsApplication을 기본값으로 사용할 것임을 나타냅니다.

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

OnCreate() 메서드에서 .apk 파일 로드를 시작하고 AndroidManifest.xml에서 android:name="com.aspose.words.AsposeWordsApplication"를 사용하지 않으려는 경우

**활동Java파일**

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

### Android테스트 응용 프로그램에서Java를 통해Android에Aspose.Words사용

테스트 프로젝트에서Java를 통해Android에Aspose.Words을 사용하려면 동일한 접근 방식을 적용할 수 있습니다:

- 테스트 프로젝트의AndroidManifest.xml에AsposeWordsTestRunner을 나타냅니다.

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

IDE에서는 다음과 같이 구성 창에AsposeWordsTestRunner을 표시해야 할 수 있습니다:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- 또는 부하를 시작하기 위해getTargetContext()방법을 사용합니다.

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## 17.2.0이후부터Java를 통해Android에Aspose.Words을 사용하는 방법

1. 의 최신 버전을 다운로드 [Aspose.Words에 대한Android를 통해Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. Aspose-words-18.3-android.via.java.jar을 프로젝트의*libs/*폴더에 복사합니다
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### Maven리포지토리에서Java을 통해Android에Aspose.Words을 설치합니다

1. Maven저장소를 빌드에 추가합니다.그레이들
1. 종속성으로Java'JAR를 통해Android에'Aspose.Words추가
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
