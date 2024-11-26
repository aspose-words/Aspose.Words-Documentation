---
title: 라이선스
second_title: Aspose.WordsJava
articleTitle: 라이선스
linktitle: 라이선스
description: "Java를 통해Android에 대한 라이선스Aspose.Words."
type: docs
weight: 60
url: /ko/java/licensing-android/
timestamp: 2024-02-02-12-07-36
---

때로는 시스템을 더 잘 연구하기 위해 가능한 한 빨리 코드에 뛰어 들기를 원합니다. 이를 더 쉽게하기 위해Aspose.Words은 다른 구매 계획을 제공하거나 무료 평가판 및 평가를위한 30 일 임시 라이센스를 제공합니다.

{{% alert color="primary" %}}

제품 평가,적절한 라이선스 및 구매 방법을 안내하는 여러 가지 일반적인 정책 및 관행이 있습니다. 당신은 그들을 찾을 수 있습니다 [구매 정책 및FAQ](https://purchase.aspose.com/policies/) 부문

{{% /alert %}}

## 무료 평가판 또는 임시 라이센스

Aspose.Words개발자가 구입하기 전에 시도 할 수있는 놀라운 소프트웨어입니다. Java에 대해Aspose.Words과Java을 통해Android에 대해Aspose.Words을 쉽게 다운로드/설치할 수 있습니다. [다운로드 페이지에서](https://releases.aspose.com/words/androidjava/) 평가를 위해.

평가판 버전은 구입 한 것과 동일–당신이 라이센스를 적용 할 코드의 몇 줄을 추가 할 때 평가판 버전은 단순히 라이센스가된다.

{{% alert color="primary" %}}

Aspose.Words에 대한Android에 대한Java에 대한 무료 평가판 또는 임시 라이센스에 대해 자세히 알아보십시오 [라이선스 및 구독 페이지](/words/java/licensing/).

{{% /alert %}}

## 구입 한 라이센스

구입 후에는 라이센스 파일을 적용하거나 라이센스 파일을 포함 리소스로 포함해야 합니다. 이 섹션에서는 이러한 작업을 수행할 수 있는 방법에 대한 옵션을 설명하고 몇 가지 일반적인 질문에 대한 설명을 제공합니다.

{{% alert color="primary" %}}

라이선스는 제품 이름,라이선스가 부여된 개발자 수,구독 만료 날짜 등과 같은 세부 정보를 포함하는 일반 텍스트XML파일입니다.

파일이 디지털 서명되었으므로 파일을 수정하지 마십시오. 실수로 파일에 추가 줄 바꿈을 추가해도 무효화됩니다.

{{% /alert %}}

{{% alert color="primary" %}}

라이센스를 설정해야 합니다:

* 응용 프로그램 도메인 당 한 번만
* 다른Aspose.Words클래스를 사용하기 전에

{{% /alert %}}

{{% alert color="primary" %}}

당신은 가격 정보를 찾을 수 있습니다 [가격 정보](https://purchase.aspose.com/pricing/words/family/) 페이지

{{% /alert %}}

### 구입 한 라이센스 보호

라이센스를 구입 한 후,당신은주의 깊게 페이지의 정보를 읽을 필요가있다 [구입 한 라이센스 보호](https://purchase.aspose.com/orders/protecting-your-license-file) 라이센스 파일을 보호하기 위해. 이 페이지는 유료 라이선스가 있는 경우에만 볼 수 있습니다.

### 라이센스 적용 옵션

라이센스는 다양한 위치에서 적용 할 수 있습니다:

* 명시적 경로
* 임베디드 리소스
* 계량 라이센스로-새로운 라이센스 메커니즘

#### 라이센스 파일 로드

Aspose.Words에서Android를 통해Java,라이센스는 [리소스로 임베디드](/words/java/licensing/),또는 스트림에서 로드:

1. 라이센스 파일을**/mnt/sdcard/**의 임의의 위치에 놓습니다.
1. 파일을 참조하는 스트림을 만듭니다.
1. 스트림(라이센스 파일 포함)을`SetLicense`메서드에 전달합니다.

**Java**

{{< highlight java >}}
String dataDir = Environment.getExternalStorageDirectory().getPath() + "/";

// Create a stream object containing the license file
FileInputStream fstream = new FileInputStream(dataDir + "Aspose.Email.Android.Java.lic");

// Instantiate the `License` class
License license = new License();
//Set the license through the stream object
license.setLicense(fstream);
{{< /highlight >}}

포함된 리소스에서 라이센스 적용. Android패키지 파일에서 이름으로 리소스로 라이선스에 액세스하려면:

1. 라이센스 파일을 응용 프로그램의**res/raw**폴더에 리소스로 추가합니다.
   라이센스 파일은**res/raw**폴더에 표시되어야 합니다.
1. 다음 코드 샘플을 사용하여 리소스에서 라이선스에 액세스/로드합니다.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### 계량 라이센스 적용

Aspose.Words개발자가 계량 키를 적용 할 수 있습니다. 그것은 새로운 라이센스 메커니즘입니다. 새로운 라이센스 메커니즘은 기존 라이센스 방법과 함께 사용됩니다. API기능의 사용에 따라 요금을 청구하려는 고객은 계량된 라이선스를 사용할 수 있습니다.

**Java**

{{< highlight java >}}
Metered metered = new Metered();
try
{
	// Access the setMeteredKey property and pass public and private keys as parameters
    metered.setMeteredKey(publicKey, privateKey);
	Log.i("Metered License", "Ok. Metered License has been applied successfully.");
}
catch (Exception ex)
{
    ex.printStackTrace();
    Log.e("Metered License", "Setting metered key has failed: " + ex.getMessage());
}
{{< /highlight >}}

### 라이센스 파일 이름 변경

라이센스 파일 이름은'Aspose.Words일 필요는 없습니다.Android.Java.리크 당신은 당신이 좋아하는 무엇이든 이름을 변경하고`License.SetLicense`을 호출 할 때 그 이름을 사용할 수 있습니다.

### 예외-라이센스 파일 이름을 찾을 수 없음

구입한 라이선스를 다운로드하면 라이선스 파일의 이름은 기본적으로**Aspose.Words.Android.Java.lic**입니다. 라이센스 파일은 브라우저를 통해 다운로드되며 일부 브라우저는 라이센스 파일을XML로 인식하고 다음을 추가합니다.이름 확장. 다운로드한 파일이**Aspose.Words.Android.Java.lic.XML**이 됩니다.

Microsoft Windows가 알려진 파일 형식의 확장자를 숨기도록 구성되면(불행히도 대부분의Windows설치에서 기본값입니다)라이선스 파일은Windows Explorer에서**Aspose.Words.Android.Java.lic**으로 나열됩니다. 예상 파일 이름처럼 보입니다. `License.SetLicense`을 호출하고'Aspose.Words를 통과하면.Android.Java.그런 파일이 없기 때문에,당신은 볼 수 있습니다.

이 문제를 해결하려면 보이지 않는를 제거 할 수있는 파일의 이름을 바꿉니다.확장. Microsoft Windows에서"확장명 숨기기"옵션을 사용하지 않도록 설정하는 것이 좋습니다.

## 여러 개의 아 포스 제품 사용

Aspose.Words및`Aspose.Cells`과 같이 응용 프로그램에서 여러 가지 아 포스 제품을 사용하는 경우 몇 가지 유용한 팁이 있습니다.

- 각 아스 포스 제품에 대한 라이센스를 별도로 설정하십시오.
  모든 구성 요소에 대한 단일 라이센스 파일(예:'Aspose.Total)이 있는 경우에도 마찬가지입니다.Android.Java.각 아스 포스 제품에 대해`License.SetLicense`메소드를 별도로 호출해야합니다.
- 정규화된 라이센스 클래스 이름을 사용합니다.
  각 아스포스 곱은 네임스페이스에`License`클래스를 가지고 있습니다. 예를 들어,Aspose.Words은 컴을 가지고 있습니다.아스포스단어.라이센스 및`Aspose.Cells`가 있습니다.아스포스세포들라이센스 클래스. 완전한 클래스 이름을 사용하면 어떤 제품에 적용되는 라이센스에 대한 혼동을 피할 수 있습니다.
