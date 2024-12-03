
# Navicat Premium Deneme Sıfırlama Scripti

Bu script, hem Windows hem de Linux platformlarında Navicat Premium'un deneme süresini sıfırlar. Çok dilli desteği bulunur ve işletim sistemini otomatik olarak algılayarak gerekli işlemleri gerçekleştirir.

## Özellikler
- **Çoklu platform desteği**: Windows ve Linux üzerinde çalışır.
- **Çok dilli destek**: İngilizce (varsayılan) ve Türkçe arasında seçim yapabilirsiniz.
- **Otomatik platform algılama**: Algılanan platforma göre uygun komutları çalıştırır.
- Navicat Premium için tüm geçici ve deneme ile ilgili dosyaları siler.

## Kullanım
1. Script dosyasını (`reset.sh`) bilgisayarınıza indirin.
2. Script'i çalıştırılabilir hale getirin:
   ```bash
   chmod +x reset.sh
   ```
3. Script'i çalıştırın:
   - İngilizce (varsayılan):
     ```bash
     ./reset.sh
     ```
   - Türkçe:
     ```bash
     ./reset.sh --lang tr
     ```

### Windows Kullanıcıları İçin
- Git Bash veya Cygwin gibi bir Bash ortamı kullanın.
- Script'i Bash terminalinden çalıştırın.
- Kayıt defterini değiştirmek için yönetici yetkilerine sahip olduğunuzdan emin olun.

### Linux Kullanıcıları İçin
- Script'i terminalden doğrudan çalıştırın.
- `dconf-cli` kurulu olduğundan emin olun:
  ```bash
  sudo apt install dconf-cli
  ```

## Sorumluluk Reddi
Bu script yalnızca eğitim amaçlı sunulmaktadır. Kendi sorumluluğunuzda kullanın ve geçerli tüm yasa ve düzenlemelere uyduğunuzdan emin olun.
