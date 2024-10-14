puts "Adınız:"
ad = gets.to_s
puts "Soyadınız:"
soyad = gets.to_s

puts "Doğum Tarihiniz (GG/AA/YY):"
dogum_tarihi = gets.chomp

gun, ay, yil = dogum_tarihi.split("/")
dogum_tarihi = Time.local(yil, ay, gun)
anlik_tarih = Time.now

gecen_saniye_hesabi = anlik_tarih - dogum_tarihi
gecen_gun_hesabi = (gecen_saniye_hesabi / 86400).to_i
gecen_hafta_hesabi = (gecen_saniye_hesabi / 604800).to_i
gecen_ay_hesabi = (gecen_saniye_hesabi / 2592000).to_i
gecen_yil_hesabi = (gecen_saniye_hesabi / 31536000).to_i

case
when dogum_tarihi.sunday? then gun = "Pazar"
when dogum_tarihi.monday? then gun = "Pazartesi"
when dogum_tarihi.tuesday? then gun = "Salı"
when dogum_tarihi.wednesday? then gun = "Çarşamba"
when dogum_tarihi.thursday? then gun = "Perşembe"
when dogum_tarihi.friday? then gun = "Cuma"
when dogum_tarihi.saturday? then gun = "Cumartesi"

else gun = "uzaylı"
end

puts ""
puts "Ad: #{ad}"
puts "Soyad: #{soyad}"
puts "Doğum tarihi: #{dogum_tarihi}"
puts "Doğduğu gün: #{gun}"
puts "Doğalı geçen gün: #{gecen_gun_hesabi}"
puts "Doğalı geçen hafta: #{gecen_hafta_hesabi}"
puts "Doğalı geçen ay: #{gecen_ay_hesabi}"
puts "Doğalı geçen yıl: #{gecen_yil_hesabi}"
