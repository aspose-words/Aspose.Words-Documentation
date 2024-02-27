---
title: ความปลอดภัยของแอปพลิเคชันเว็บเมื่อโหลดทรัพยากร
second_title: Aspose.Words สำหรับ .NET
articleTitle: ความปลอดภัยของแอปพลิเคชันเว็บเมื่อโหลดทรัพยากรภายนอก
linktitle: ความปลอดภัยของแอปพลิเคชันเว็บเมื่อโหลดทรัพยากรภายนอก
type: docs
description: "โหลดทรัพยากรระยะไกลซึ่งอาจเป็นสาเหตุของความเสี่ยงด้านความปลอดภัย ดูปัญหาด้านความปลอดภัยทั่วไปและวิธีแก้ปัญหาโดยใช้ C#"
weight: 100
url: /th/net/web-applications-security-when-loading-external-resources/
---

ตามค่าเริ่มต้น Aspose.Words สำหรับ .NET สามารถโหลดทรัพยากรระยะไกล เช่น รูปภาพ สไตล์ CSS หรือเอกสาร HTML ภายนอก เมื่อนำเข้าเอกสารหรือแทรกรูปภาพโดยใช้ DocumentBuilder ลักษณะการทำงานนี้ช่วยให้คุณสามารถประมวลผลเอกสารของคุณได้โดยละเอียด แต่อาจเป็นสาเหตุของความเสี่ยงด้านความปลอดภัยหากไลบรารีเป็นส่วนหนึ่งของเว็บแอปพลิเคชัน

ในบทความนี้ เราจะดูปัญหาด้านความปลอดภัยทั่วไปที่อาจเกิดขึ้นเมื่อโหลดทรัพยากรภายนอก และให้คำแนะนำเกี่ยวกับวิธีหลีกเลี่ยงปัญหาดังกล่าว

{{% alert color="primary" %}}

Aspose.Words ไม่ทำงานเป็นซอฟต์แวร์ป้องกันไวรัส ดังนั้นจึงไม่ได้ให้ข้อมูลเกี่ยวกับการมีอยู่ของส่วนประกอบที่เป็นอันตรายในเอกสาร เพื่อให้มั่นใจในความปลอดภัยของข้อมูลของคุณ ให้ตรวจสอบเอกสารที่ได้รับจากแหล่งภายนอกด้วยตัวเอง ในทางกลับกัน Aspose.Words จะให้คำแนะนำเกี่ยวกับวิธีจัดการกับปัญหาที่อาจเกิดขึ้นเมื่อโหลดทรัพยากรภายนอก

{{% /alert %}}

## ปัญหาด้านความปลอดภัย

มีปัญหาด้านความปลอดภัยทั่วไปหลายประการเมื่อโหลดทรัพยากรภายนอก

### การเปิดเผยข้อมูลรับรองผ่านรูปภาพที่เชื่อมโยง

บนโฮสต์ที่ใช้ Windows เอกสารที่มีการอ้างอิงถึงทรัพยากรที่ใช้เส้นทาง UNC เช่น *'\\example.com\a\b*' จะได้รับการประมวลผลตามค่าเริ่มต้น ในสภาพแวดล้อมของโดเมน สิ่งนี้จะทำให้โฮสต์ส่งข้อมูลรับรองโดเมนในรูปแบบแฮชไปยังเซิร์ฟเวอร์ที่ระบุ

หากผู้โจมตีสามารถโน้มน้าวผู้ใช้หรือเซิร์ฟเวอร์ให้ประมวลผลเอกสารด้วยลิงก์ทรัพยากรที่ชี้ไปยังโฮสต์ที่พวกเขาควบคุม ผู้โจมตีจะได้รับข้อมูลรับรองผู้ใช้หรือบัญชีบริการในรูปแบบแฮช NTLM ข้อมูลดังกล่าวสามารถนำมาใช้ซ้ำได้ในการโจมตีแบบพาสเดอะแฮชแบบคลาสสิก ช่วยให้ผู้โจมตีสามารถเข้าถึงทรัพยากรใดๆ ในฐานะผู้ใช้หรือบัญชีบริการของเหยื่อได้

หากบัญชีที่เป็นปัญหาใช้รหัสผ่านที่ไม่รัดกุมหรือคาดเดาได้ ผู้โจมตีสามารถทำการโจมตีด้วยการถอดรหัสรหัสผ่านเพิ่มเติมเพื่อกู้คืนรหัสผ่านของบัญชีสำหรับการใช้งานที่เป็นอันตรายเพิ่มเติม

### การเปิดเผยรูปภาพท้องถิ่นผ่านรูปภาพที่เชื่อมโยง

เช่นเดียวกับกรณีก่อนหน้านี้ การประมวลผลเอกสารโดยอ้างอิงถึงไฟล์รูปภาพในเครื่องจะส่งผลให้ไฟล์นั้นถูกรวมไว้ในเอกสารขั้นสุดท้าย ซึ่งอาจนำไปสู่การเปิดเผยข้อมูลที่ละเอียดอ่อนได้

### การปฏิเสธการให้บริการ

ผู้โจมตีสามารถอัปโหลดเอกสารที่อ้างอิงหรือรวมรูปภาพขนาดใหญ่มาก - ที่เรียกว่า "ระเบิดบีบอัด" เมื่อประมวลผลภาพเหล่านี้ ไลบรารีจะใช้หน่วยความจำและเวลา CPU จำนวนมาก

### การปลอมแปลงคำขอ Server-Side ผ่านเนื้อหาที่เชื่อมโยง

ผู้โจมตีสามารถสร้างชุดเอกสารที่มีลิงก์ฝังตัวเพื่อรวมที่อยู่ IP ภายในและพอร์ตเข้าด้วยกัน จากนั้นส่งไปยังบริการเว็บโดยใช้ไลบรารี Aspose.Words เพื่อประมวลผลเอกสาร

ขึ้นอยู่กับระยะเวลาที่บริการใช้ในการประมวลผลเอกสาร ผู้โจมตีสามารถระบุได้ว่าชุด IP/พอร์ตที่กำหนดถูกกรองโดยไฟร์วอลล์หรือไม่:

- เวลาประมวลผลที่นานขึ้นบ่งชี้ว่าแพ็กเก็ต TCP SYN ที่ส่งโดยเซิร์ฟเวอร์ถูกไฟร์วอลล์ทิ้ง
- เวลาประมวลผลที่รวดเร็วบ่งชี้ว่าได้ทำการเชื่อมต่อสำเร็จ

## แนวทางแก้ไขปัญหาด้านความปลอดภัย

เพื่อแก้ไขปัญหาที่อธิบายไว้ข้างต้นและปรับปรุงความปลอดภัยของเว็บแอปพลิเคชัน คุณสามารถควบคุมหรือปิดใช้งานการโหลดทรัพยากรภายนอกโดยใช้ [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีปิดใช้งานการโหลดรูปภาพภายนอก:

**.NET**
{{< highlight csharp >}}

public class DisableExternalImagesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        // Skip external images loading.
        return (args.ResourceType == ResourceType.Image)
            ? ResourceLoadingAction.Skip
            : ResourceLoadingAction.Default;
    }
}
...
const string documentFilename = "input.docx";
var disableExternalImagesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableExternalImagesHandler()
};
var doc = new Document(documentFilename, disableExternalImagesOptions);

{{< /highlight >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการปิดการใช้งานทรัพยากรระยะไกล:

**.NET**
{{< highlight csharp >}}

private class DisableRemoteResourcesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        return IsLocalResource(args.OriginalUri)
            ? ResourceLoadingAction.Default
            : ResourceLoadingAction.Skip;
    }

    private static bool IsLocalResource(string fileName)
    {
        DirectoryInfo dirInfo;
        try
        {
            var dirName = Path.GetDirectoryName(fileName);
            if (string.IsNullOrEmpty(dirName))
                return false;
            dirInfo = new DirectoryInfo(dirName);
        }
        catch
        {
            return false;
        }
    
        foreach (DriveInfo d in DriveInfo.GetDrives())
        {
            if (string.Compare(dirInfo.Root.FullName, d.Name, StringComparison.OrdinalIgnoreCase) == 0)
                return d.DriveType != DriveType.Network;
        }
    
        return false;
    }
}
...
var disableRemoteResourcesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableRemoteResourcesHandler()
};
var doc = new Document(documentFilename, disableRemoteResourcesOptions);

{{< /highlight >}}

{{% alert color="primary" %}}

บทความนี้อ้างอิงจากบริษัทที่ปรึกษา Independent Security Evaluators [รายงาน](/words/net/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf)

{{% /alert %}}
