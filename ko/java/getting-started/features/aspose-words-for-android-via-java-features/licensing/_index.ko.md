---
title: 관련 상품
second_title: Aspose.Words 제품정보 Java
articleTitle: 관련 상품
linktitle: 관련 상품
description: "관련 상품 Aspose.Words 제품정보 Android 이름 * Java·"
type: docs
weight: 60
url: /ko/java/licensing-android/
---

때로는 더 나은 시스템을 연구하기 위해 가능한 한 빨리 코드로 다이빙하고 싶습니다. 더 쉽게 만들려면, Aspose.Words 구매에 대한 다른 계획을 제공하거나 무료 평가판과 30 일 임시 라이센스를 제공합니다.

{{% alert color="primary" %}}

본 약관은 본 약관의 적용을 받습니다. 본 약관은 본 약관의 적용을 받습니다. 당신은 그들을 찾을 수 있습니다 [자주 묻는 질문](https://purchase.aspose.com/policies/) 이름 *

{{% /alert %}}

## 무료 평가판 또는 임시 라이센스

Aspose.Words 개발자가 구매하기 전에 시도 할 수있는 놀라운 소프트웨어입니다. 쉽게 다운로드 / 설치 할 수 있습니다 Aspose.Words 제품정보 Java · Aspose.Words 제품정보 Android 이름 * Java [다운로드 페이지에서](https://releases.aspose.com/words/androidjava/) 평가.

평가판은 구매 한 것과 동일합니다. 재판 버전은 라이센스를 적용 할 수있는 몇 가지 코드를 추가 할 때 라이센스가됩니다.

{{% alert color="primary" %}}

Free Trial 또는 Temporary License에 대한 자세한 내용을 알아보십시오. Aspose.Words 제품정보 Android 이름 * Java 으로 [라이센스 및 구독](/words/ko/java/licensing/)·

{{% /alert %}}

## 구매 허가

구매 후 라이센스 파일을 적용하거나 임베디드 리소스로 라이센스 파일을 포함해야합니다. 이 섹션은이 수행 할 수있는 방법의 옵션을 설명하고, 또한 몇 가지 일반적인 질문에 대한 의견.

{{% alert color="primary" %}}

라이센스는 제품 이름, 개발자 라이센스, 구독 만료 날짜 등 세부 사항을 포함하는 일반 텍스트 XML 파일입니다.

파일은 디지털 서명되어 있으므로 파일을 수정하지 마십시오. 파일에 여분의 줄이 끊어도 유효하지 않습니다.

{{% /alert %}}

{{% alert color="primary" %}}

라이센스를 설정해야 합니다:

* 신청 도메인 당 한 번만
* 다른 것을 사용하기 전에 Aspose.Words 한국어

{{% /alert %}}

{{% alert color="primary" %}}

가격 정보를 찾을 수 있습니다. [가격 정보](https://purchase.aspose.com/pricing/words/family/) 사이트 맵

{{% /alert %}}

### 구매된 라이선스 보호

라이센스를 구입 한 후, 당신은 신중하게 페이지에 정보를 읽을 필요가 [구매된 라이선스 보호](https://purchase.aspose.com/orders/protecting-your-license-file) 라이센스 파일을 보호하십시오. 이 페이지는 유료 라이선스가 있는 경우에만 볼 수 있습니다.

### 옵션 적용

면허는 각종 위치에서 적용될 수 있습니다:

* Explicit 경로
* 이름 임베디드 리소스
* 이름 Metered License – 새로운 라이센싱 메커니즘

#### 라이센스 파일로드

내 계정 Aspose.Words 제품정보 Android 이름 * Java, 라이센스는 할 수 있습니다 [라이센스 및 구독](/words/ko/java/licensing/), 또는 스트림에서 로드:

1. 명세 모든 위치에 라이센스 파일을 넣어 **/mnt / 카드 /**·
1. 명세 참조 파일 스트림을 만듭니다.
1. 명세 스트림 (라이센스 파일 포함)을 `SetLicense` 방법.

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

임베디드 리소스에서 라이센스 적용. 이름에 의해 라이센스에 액세스하려면 Android 패키지 파일:

1. 명세 응용 프로그램의 자원으로 라이센스 파일을 추가 **res/원** 폴더.
   라이센스 파일은 볼 수 있어야 **res/원** 폴더.
1. 명세 다음 코드 샘플과 리소스에서 라이센스를 액세스 /로드합니다.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### 계량된 면허를 적용하십시오

Aspose.Words 개발자가 metered 키를 적용하도록 허용합니다. 새로운 라이센싱 메커니즘입니다. 새로운 라이센싱 메커니즘은 기존 라이센싱 방법과 함께 사용될 것입니다. 이용에 따라 청구되는 고객 API 특징은 미터로 licensing를 사용할 수 있습니다.

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

라이센스 파일 이름은 '이 없습니다'Aspose.Words·Android·Java.lic'. 당신은 당신이 좋아하고 그 이름을 호출 할 때 이름을 사용할 수 있습니다 `License.SetLicense`·

### 예외 - 라이센스 파일명 찾을 수 없습니다

당신이 구입 한 라이센스를 다운로드 할 때, 라이센스 파일은 **Aspose.Words·Android·Java사이트맵** 기본적으로. 라이센스 파일은 브라우저를 통해 다운로드되며 일부 브라우저는 XML으로 라이센스 파일을 인식하고 .xml의 확장을 이름을 추가합니다. 다운로드 된 파일이됩니다. **Aspose.Words·Android·Java사이트맵**·

시간: Microsoft Windows 알려진 파일 유형의 확장을 숨기는 구성 (불행히도 이것은 기본적으로 Windows 설치), 라이센스 파일이 나열됩니다 **Aspose.Words·Android·Java사이트맵** 내 계정 Windows 탐색하기 예상된 파일 이름과 같습니다. 자주 묻는 질문 `License.SetLicense` 패스 'Aspose.Words·Android·Java.lic', 그런 파일이 없기 때문에 보고 예외가 될 것입니다

문제를 해결하려면 invisible .xml 확장을 제거하는 파일을 이름을 변경하십시오. "hide extensions" 옵션을 비활성화하는 것이 좋습니다. Microsoft Windows·

## Multiple Aspose 제품 사용

응용 프로그램에 여러 개의 Aspose 제품을 사용하는 경우, 예를 들어 Aspose.Words · `Aspose.Cells`, 여기에 몇 가지 유용한 팁입니다.

- 각 Aspose 제품에 대한 라이센스를 별도로 설정합니다.
  모든 구성 요소에 대한 단일 라이센스 파일이 있다면, 예를 들어 'Aspose. 전체보기Android·Java.lic', 당신은 여전히 전화를해야합니다 `License.SetLicense` 각 Aspose 제품에 대한 별도의 방법.
- 완전히 자격이 된 면허 종류 이름을 사용하십시오.
  각 각 Aspose 제품에는 `License` namespace의 클래스. 예를 들어, Aspose.Words com.aspose.words가 있습니다. 라이센스 및 `Aspose.Cells` com.aspose.cells가 있습니다. 라이센스 클래스. 인증된 클래스 이름을 사용하면 해당 제품에 대한 라이센스가 적용된 모든 혼란을 피할 수 있습니다.
