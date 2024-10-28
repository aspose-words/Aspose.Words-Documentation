---
title: ความปลอดภัยของแอปบนเว็บเมื่อโหลดทรัพยากร
second_title: Aspose.WordsสำหรับC++
articleTitle: ความปลอดภัยของโปรแกรมประยุกต์บนเว็บเมื่อโหลดทรัพยากรภายนอก
linktitle: ความปลอดภัยของโปรแกรมประยุกต์บนเว็บเมื่อโหลดทรัพยากรภายนอก
type: docs
description: "โหลดทรัพยากรระยะไกลที่สามารถเป็นเหตุผลของความเสี่ยงด้านความปลอดภัย ลองดูที่ปัญหาด้านความปลอดภัยทั่วไปและการแก้ปัญหาของพวกเขาในC++."
weight: 50
url: /th/cpp/web-applications-security-when-loading-external-resources/
---

โดยค่าเริ่มต้น, Aspose.WordsสำหรับC++ สามารถโหลดรีซอร์สระยะไกลเช่นรูปภาพCSSรูปแบบหรือเอกสารภายนอกHTMLเมื่อทำการนำเข้าเอกสารหรือแทรกรูปภาพโดยใช้DocumentBuilder Behaviorเป็นสาเหตุของความเสี่ยงด้านความปลอดภัยบางอย่างถ้าไลบรารีเป็นส่วนหนึ่งของ.

ในบทความนี้เราจะดูที่ปัญหาด้านความปลอดภัยทั่วไปที่สามารถเกิดขึ้นเมื่อโหลดทรัพยากร.

{{% alert color="primary" %}}

Aspose.Wordsไม่ทำงานเป็นซอฟต์แวร์ป้องกันไวรัส งนั้นจึงไม่ได้ให้ข้อมูลเกี่ยวกับการปรากฏตัวของส่วนประกอบที่เป็นอันตรายในเอกสาร เพื่อความปลอดภัยของข้อมูลของคุณให้ตรวจสอบเอกสารที่ได้รับจากแหล่งข้อมูลภายนอก ในทางกลับกันAspose.Wordsให้คำแนะนำเกี่ยวกับวิธีการจัดการกับปัญหาที่อาจเกิดขึ้นเมื่อโหลดทรัพยาก.

{{% /alert %}}

## ปัญหาด้านความปลอดภัย

มีจำนวนของปัญหาความปลอดภัยทั่วไปเมื่อโหลดทรัพยากรภายนอก.

### เปิดเผยข้อมูลประจำตัวผ่านภาพที่เชื่อมโยง

บนWindowsโฮสต์เอกสารที่มีการอ้างอิงถึงทรัพยากรที่ใช้เส้นทางUNCเช่น*'\\example.com\a\b*’จะถูกประมวลผลโดยค่าเริ่ ในสภาพแวดล้อมของโดเมนนี้จะทำให้โฮสต์ส่งข้อมูลประจำตัวของโดเมนในรูปแบบแฮชไ.

ผู้โจมตีจะได้รับข้อมูลประจำตัวของผู้ใช้หรือบัญชีบริการในรูปแบบแฮNTLM รเข้าถึงทรัพยากรใดๆที่เป็นเหยื่อผู้ใช้หรือบัญชีบริการ.

หากบัญชีที่เป็นปัญหาใช้รหัสผ่านที่อ่อนแอหรือคาดเดาได้ผู้โจมตีอาจทำการโจมตีรหัสผ่านที่.

### การเปิดเผยภาพท้องถิ่นผ่านทางภาพที่เชื่อมโยง

คล้ายกับกรณีก่อนหน้านี้การประมวลผลเอกสารที่มีการอ้างอิงไปยังไฟล์ภาพท้องถิ่นจะส่งผ มูลที่ละเอียดอ่อน.

### การปฏิเสธการให้บริการ

ผู้โจมตีสามารถอัปโหลดเอกสารที่อ้างอิงหรือรวมภาพขนาดใหญ่มาก–ที่เรียกว่า"ระเบิดบีบอัด" เมื่อประมวลผลภาพเหล่านี้ไลบรารีจะใช้หน่วยความจำจำนวนมากและเวลาCPU.

### การปลอมแปลงคำขอฝั่งเซิร์ฟเวอร์ผ่านเนื้อหาที่เชื่อมโยง

ของที่อยู่และพอร์ตภายในIPจากนั้นส่งไปยังบริการเว็บโดยใช้ไลบรารีAspose.Wordsเพื่อประมวลผลเอกส.

ตามระยะเวลาที่บริการใช้ในการประมวลผลเอกสารผู้โจมตีสามารถกำหนดว่าชุดค่าผสมIP/พอร์ตถูกกรองโดยไฟร์วอลล์หรือไม่:

- ระยะเวลาในการประมวลผลนานขึ้นบ่งชี้ว่าแพ็คเก็ตTCPSYNที่ส่งโดยเซิร์ฟเวอร์ถูกปล่อยโดยไฟร์วอลล์
- เวลาในการประมวลผลอย่างรวดเร็วบ่งชี้ว่ามีการเชื่อมต่อที่ประสบความสำเร็จ

## โซลูชั่นของปัญหาด้านความปลอดภัย

ในการแก้ปัญหาที่อธิบายไว้ข้างต้นและเพื่อปรับปรุงความปลอดภัยของเว็บแอ็พพลิเคชัน,คุณสามารถควบคุมหรือปิดใช้งานการโหลดทรัพยากรภายนอกโดยใช้[IResourceLoadingCallback](https://reference.aspose.com/words/cpp/aspose.words.loading/iresourceloadingcallback/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการปิดใช้งานการโหลดภาพภายนอก:

**C++**
{{< highlight cpp >}}
class DisableExternalImagesHandler : public IResourceLoadingCallback
{
public:
	ResourceLoadingAction ResourceLoading(System::SharedPtr<ResourceLoadingArgs> args) override
	{
		// Skip external images loading.
		return args->get_ResourceType() == ResourceType::Image
			? ResourceLoadingAction::Skip
			: ResourceLoadingAction::Default;
		}
};

void LoadDocument(const System::String& documentFilename)
{
	auto disableExternalImagesHandler = System::MakeObject<LoadOptions>();

disableExternalImagesHandler->set_ResourceLoadingCallback(System::MakeObject<DisableExternalImagesHandler>());

	auto doc = System::MakeObject<Document>(documentFilename, disableExternalImagesHandler);
}
{{< /highlight >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการปิดใช้งานรีซอร์สระยะไกล:

**C++**
{{< highlight cpp >}}
class DisableRemoteResourcesHandler : public IResourceLoadingCallback
{
	static bool IsLocalResource(const System::String& originalUri)
	{
		// CodePorting.CsToCpp.Native.API can handle only absolute uri
		auto uri = System::MakeObject<System::Uri>(originalUri);
		if (uri->get_IsAbsoluteUri())
		{
			return uri->get_Scheme().Equals(u"file", System::StringComparison::OrdinalIgnoreCase);
		}

		return false;
	}
public:
	ResourceLoadingAction ResourceLoading(System::SharedPtr<ResourceLoadingArgs> args) override
	{
		return IsLocalResource(args->get_OriginalUri())
			? ResourceLoadingAction::Default
			: ResourceLoadingAction::Skip;
	}
};

void LoadDocument(const System::String& documentFilename)
{
	auto disableRemoteResourcesHandler = System::MakeObject<LoadOptions>();

disableRemoteResourcesHandler->set_ResourceLoadingCallback(System::MakeObject<DisableRemoteResourcesHandler>());

	auto doc = System::MakeObject<Document>(documentFilename, disableRemoteResourcesHandler);
}
{{< /highlight >}}

{{% alert color="primary" %}}

บทความนี้จะขึ้นอยู่กับบริษัทที่ปรึกษาผู้ประเมินความปลอดภัยอิสระ [รายงาน](ise-aspose-report.pdf).

{{% /alert %}}
