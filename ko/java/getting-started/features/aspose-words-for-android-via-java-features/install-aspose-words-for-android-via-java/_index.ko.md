---
title: 설치하기 Aspose.Words 제품정보 Android 이름 * Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 설치하기 Aspose.Words 제품정보 Android 이름 * Java
linktitle: 설치하기 Aspose.Words 제품정보 Android 이름 * Java
description: "설치하기 Aspose.Words 제품정보 Android 이름 * Java·"
type: docs
weight: 20
url: /ko/java/install-aspose-words-for-android-via-java/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

2017년 버전의 Aspose.Words 제품정보 Android 이름 * Java 관련 기사 Aspose.Words 제품정보 Java·

[aspose-words-20.2-android.via.java.jar를](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## 설치하기

이전, Aspose.Words 제품정보 Android 이름 * Java 하나의 ZIP 파일로 배포되었습니다. JAR 파일, 데모 및 문서 Aspose.Words 제품정보 Android 이름 * Java·

1. 명세 이전 버전을 사용하려면 Aspose.Words 제품정보 Android 이름 * Java 1.11, 당신은 다만 어떤 버전을 압축해야 Aspose.Words·Android.zip을 선택의 디렉토리에.
1. 명세 응용 프로그램을 사용하여 응용 프로그램에 추출 된 항아리 파일을 포함.

버전 1.11 및 1.12는 수동으로 두 부분으로 나뉩니다. JAR 그리고 APK는 DEX 파일에 있는 방법의 수를 제한하기 위하여. 이 버전에서는 추가 class.dex 파일의 올바른 로딩을 시작하려면 자체 APK 로더를 제공했습니다. 버전 17.2.0에서 시작하면 공식적인 워크플로우를 지원합니다. [이름 *](https://developer.android.com/studio/build/multidex.html)·

### 사용 방법 Aspose.Words 제품정보 Android 이름 * Java 1.11에서 앞으로

이전, 단일 JAR 이름 * Aspose.Words 제품정보 Android 이름 * Java 거대한 안드로이드 응용 프로그램에 사용하기 위해 약간의 실제 버전을 만든 47 + 천 가지 방법. 이제이 릴리스에서 시작, 우리는 크기를 줄이기 위해 시작 Aspose.Words 제품정보 Android 이름 * Java 도서관. 우리의 주요 관심사는 지금 기능의 손실 없이 방법의 수를 감소시키기 위한 것입니다. 우리는 지속적으로 품질과 유용성을 개선하기 위해 노력하고 있습니다. Aspose.Words 제품정보 Android 이름 * Java·

### Aspose.Words 제품정보 Android 이름 * Java 2개 부품으로 분할된 라이브러리

우리는 뒤에 오는 2개의 아카이브로 도서관을 분할했었습니다:

- aspose-words-1.11-android-jdk15.jar: 첫 번째는 공개 API 그리고 그것의 보조 방법. 현재, 그것에는 32395 방법이 있습니다.
- aspose-words-1.11-libs-android-jdk15.apk: 두 번째는 3rd 파티 항아리, 기본 클래스 및 리소스가 포함되어 있습니다. 현재 18296 가지 방법이 있습니다.

### Aspose Words 사용 Android 이름 * Java 이후 1.11

관련 기사 Aspose.Words 제품정보 Android 이름 * Java 프로젝트로 다음 방법 중 하나를 사용할 수 있습니다

- 프로젝트의 폴더 "libs"에서 "aspose-words-1.11-android-jdk15.jar"및 아카이브 "aspose-words-1.11-libs-android-jdk15.apk" 폴더에 "assets". AsposeWordsApplication 을 기본으로 사용하려고합니다.

**Android다운로드**

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

onCreate() 메소드에서 .apk 파일의 부하를 시작하려면 Android:name="com.aspose.words.AsposeWordsApplication"을 사용하지 않으려면 Android다운로드

**- 연혁 Java 파일 형식**

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

### 사용 방법 Aspose.Words 제품정보 Android 이름 * Java 내 계정 Android 시험 신청

이용하기 Aspose.Words 제품정보 Android 이름 * Java 시험 프로젝트에서 동일한 접근은 적용될 수 있습니다:

- AsposeWordsTestRunner에 표시 Android테스트 프로젝트의 Manifest.xml.

**Android다운로드**

{{< highlight csharp >}}
...
...
<instrumentation
    android:name="com.aspose.words.AsposeWordsTestRunner"    
    android:targetPackage="com.aspose.releaseapp" />
...
...
{{< /highlight >}}

IDE에서는 다음과 같이 구성 창에서 AsposeWordsTestRunner를 표시해야 할 수도 있습니다

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- 또는 getTargetContext() 메소드를 사용하여 .apk의 부하를 개시합니다.

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## 사용 방법 Aspose.Words 제품정보 Android 이름 * Java 17.2.0 앞으로

1. 명세 최신 버전 다운로드 [Aspose.Words 제품정보 Android 이름 * Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. 프로젝트의 *libs/*folder로 aspose-words-18.3-android.via.java.jar 복사
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### 설치하기 Aspose.Words 제품정보 Android 이름 * Java 이름 * Maven 회사연혁

1. 명세 기타 제품 maven 당신의 빌드에 저장소. 그라들
1. 명세 추가하기Aspose.Words 제품정보 Android 이름 * Java이름 * JAR 신뢰성
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
