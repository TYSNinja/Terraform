# Terraform ile AWS EC2 Instance Oluşturma

Bu proje, Terraform kullanarak Amazon Web Services (AWS) üzerinde belirli sayıda sanal makine (EC2 instance) oluşturmanı sağlar.

## Dosya Yapısı

- **main.tf** : AWS provider ve EC2 instance tanımları
- **variables.tf** : Değişken tanımları
- **outputs.tf** : Oluşturulan makinelerin IP adresleri

## Kurulum ve Kullanım

1. **AWS erişim bilgilerini ayarla**  
   AWS Access Key ve Secret Key’i environment variable olarak veya `~/.aws/credentials` dosyasına ekleyin.

2. **Terraform’u başlat**
   ```bash
   terraform init
   ```

3. **Planı önizle**
   ```bash
   terraform plan
   ```

4. **Kaynakları oluştur**
   ```bash
   terraform apply
   ```

## Parametreler

- `instance_count` : Kaç adet EC2 instance oluşturulacak (varsayılan: 3).
- `instance_type` : Instance tipi (varsayılan: t2.micro).
- `aws_region` : AWS bölgesi (varsayılan: eu-central-1).
- `ami_id` : Kullanılacak AMI ID’si (varsayılan: Ubuntu 20.04 için Frankfurt bölgesi).

## Notlar

- Farklı bir AMI veya bölge kullanacaksanız `variables.tf` dosyasını düzenleyin.
- Güvenlik grubu, anahtar çifti gibi ek kaynaklar eklemek için Terraform konfigürasyonunu genişletebilirsiniz.

## Çıktı

Oluşturulan instance’ların public IP adresleri, apply sonrası ekranda ve `outputs.tf` sayesinde listelenir.

---

Daha fazla özelleştirme için dosyaları güncelleyebilir veya bana yeni ihtiyaçlarını iletebilirsin!