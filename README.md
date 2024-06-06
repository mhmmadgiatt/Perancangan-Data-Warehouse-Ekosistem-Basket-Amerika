# Perancangan dan Implementasi Data Warehouse Ekosistem Basket Amerika

## Deskripsi

NBA (National Basketball Association) adalah liga basket profesional yang terkenal di dunia, didirikan pada tahun 1946 di Amerika Serikat dengan tim-tim berbasis di kota-kota di Amerika Serikat dan Kanada.

Meskipun NBA telah mencapai kesuksesan, namun tantangan masih ada dalam memastikan pemerataan sumber daya di seluruh ekosistem basket Amerika, seperti draft pemain, fasilitas, dan akses ke wasit berkualitas
tinggi, yang dapat mempengaruhi keseimbangan kompetitif di liga.

Dengan memahami pemerataan sumber daya ini, NBA dapat membuat keputusan yang lebih baik dan lebih tepat sasaran untuk memajukan olahraga basket di Amerika dan di seluruh dunia. Selain itu, penggunaan data warehouse dalam penelitian ini memungkinkan pengolahan data yang lebih efisien dan akurat, sehingga menghasilkan analisis yang lebih mendalam dan bermanfaat.


## Metodologi Data Warehouse
Metode yang digunakan dalam perancangan Data Warehouse adalah Kimball Nine-Step
Methodology, yang terdiri dari sembilan langkah sebagai berikut :
1. Choose the Process
2. Choose the Grain
3. Identify and Conform Choose the Facts the Dimensions 
4. Choose the Facts
5. Store Precalculations in the Fact Table
6. Round Out the Dimension Tables
7. Choose the Durations of the Database
8. Track Slowly the Changing Dimensions
9. Decide the Query Priorities and the Query Mode

## Dataset
[Dataset Proyek](https://www.kaggle.com/datasets/wyattowalsh/basketball)

## Tahapan Proyek

#### Proses Kimball Nine-Step Methodology

#### Skema Star
![Skema Data Warehouse](https://github.com/mhmmadgiatt/Perancangan-Data-Warehouse-Ekosistem-Basket-Amerika/blob/main/Skema_Star.jpg)

#### Proses ETL
1. Terdapat 4 file CSV yang merepresentasikan 1 tabel. Flat file source berisi
tabel game, flat file source 1 berisi tabel official, flat file source 2 berisi tabel
team, flat file source 3 berisi tabel draft_history, flat file source 4 berisi tabel
person
2. Flat file source akan dilakukan sort berdasarkan kolom game_id
3. Hasil sorting 2 file tersebut akan di join menggunakan merge join
4. Hasil merge join akan di sort dan flat file source 2 akan di sort berdasarkan
team_id

5. Hasil sorting akan di merge join
6. Merge join 2 akan di sort dengan flat file source 3 di sort berdasarkan
team_id
7. Hasil sort akan di merge join
8. Hasil merge join dan flat file source 4 di sort berdasarkan person_id
9. Hasil sort akan di join, hasil merge join tersebut akan diolah. Dikonversi
menggunakan data conversion, dilakukan proses aggregate dengan kolom
count all, dan di tentukan output menjadi databasenya menjadi ole db
Destination dengan database dbnbaf
10. Dilakukan proses query dengan penambahan kolom nba_inc yang
melakukan perhitungan skoring

#### Proses OLAP
1. OLAP Dice Query untuk menampilkan apabila team home menang dan
pemain yang bermain active
![](https://github.com/mhmmadgiatt/Perancangan-Data-Warehouse-Ekosistem-Basket-Amerika/blob/main/OLAP%20Process/Foto%20Query/28.jpg)

2. Olap RollUp Query untuk menghitung berapa kali wasit dipakai di tiap game
dan total wasit dipakai selama seluruh permainan
![](https://github.com/mhmmadgiatt/Perancangan-Data-Warehouse-Ekosistem-Basket-Amerika/blob/main/OLAP%20Process/Foto%20Query/29.jpg)

3. Olap RollUp Query untuk menghitung berapa kali pemain bermain di tiap
game dan total seluruh pemain bermain
![](https://github.com/mhmmadgiatt/Perancangan-Data-Warehouse-Ekosistem-Basket-Amerika/blob/main/OLAP%20Process/Foto%20Query/30.jpg)

4. Olap Slice query untuk menampilkan team home yang menang
![](https://github.com/mhmmadgiatt/Perancangan-Data-Warehouse-Ekosistem-Basket-Amerika/blob/main/OLAP%20Process/Foto%20Query/31.jpg)

5. Olap Slice query untuk menampilkan pemain yang active
![](https://github.com/mhmmadgiatt/Perancangan-Data-Warehouse-Ekosistem-Basket-Amerika/blob/main/OLAP%20Process/Foto%20Query/33.jpg)

6. Olap Slice query untuk menampilkan team home yang kalah
![](https://github.com/mhmmadgiatt/Perancangan-Data-Warehouse-Ekosistem-Basket-Amerika/blob/main/OLAP%20Process/Foto%20Query/33.jpg)

7. Olap Slice query untuk menampilkan pemain yang tidak active
![](https://github.com/mhmmadgiatt/Perancangan-Data-Warehouse-Ekosistem-Basket-Amerika/blob/main/OLAP%20Process/Foto%20Query/34.jpg)

8. Olap slice query untuk menampilkan arena dengan kapasitas >= 20000
![](https://github.com/mhmmadgiatt/Perancangan-Data-Warehouse-Ekosistem-Basket-Amerika/blob/main/OLAP%20Process/Foto%20Query/35.jpg)

9. Olap slice query untuk menampilkan arena dengan kapasitas <= 20000 dan >0
![](https://github.com/mhmmadgiatt/Perancangan-Data-Warehouse-Ekosistem-Basket-Amerika/blob/main/OLAP%20Process/Foto%20Query/36.jpg)

10. Olap query slice dan dice untuk melakukan ranking/scoring dari beberapa
keadaan di tiap game

![](https://github.com/mhmmadgiatt/Perancangan-Data-Warehouse-Ekosistem-Basket-Amerika/blob/main/OLAP%20Process/Foto%20Query/37.jpg)

![](https://github.com/mhmmadgiatt/Perancangan-Data-Warehouse-Ekosistem-Basket-Amerika/blob/main/OLAP%20Process/Foto%20Query/38.jpg)
