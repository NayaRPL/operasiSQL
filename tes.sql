Microsoft Windows [Version 10.0.22000.1936]
(c) Microsoft Corporation. All rights reserved.

C:\Users\LENOVO>cd "C:\Program Files\PostgreSQL\14\bin"

C:\Program Files\PostgreSQL\14\bin>psql -U postgres -h localhost
Password for user postgres:
psql: error: connection to server at "localhost" (::1), port 5432 failed: FATAL:  password authentication failed for user "postgres"

C:\Program Files\PostgreSQL\14\bin>psql -U postgres -h localhost
Password for user postgres:
psql (14.7)
WARNING: Console code page (437) differs from Windows code page (1252)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

postgres=# \list
                                               List of databases
     Name      |  Owner   | Encoding |        Collate         |         Ctype          |   Access privileges
---------------+----------+----------+------------------------+------------------------+-----------------------
 perpustakaan  | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 perpustakaan1 | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 postgres      | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 retail        | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 template0     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
               |          |          |                        |                        | postgres=CTc/postgres
 template1     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
               |          |          |                        |                        | postgres=CTc/postgres
(6 rows)


postgres=# \c retail
You are now connected to database "retail" as user "postgres".
retail=# \dt
              List of relations
 Schema |      Name       | Type  |  Owner
--------+-----------------+-------+----------
 public | barang          | table | postgres
 public | costomer        | table | postgres
 public | detailpembelian | table | postgres
 public | karyawan        | table | postgres
 public | transaksi       | table | postgres
(5 rows)


retail=# select * from karyawan
retail-# ;
 id_karyawan | nama_kar |  alamat   |   no_telp
-------------+----------+-----------+--------------
      126228 | Iksan    | Polewali  | 085921254662
      126229 | Anwar    | Polewali  | 08592125466
      126226 | Lisa     | Tande     | 085923254662
      127228 | dina     | tande     | 085931254662
      136228 | Fika     | majene    | 085921274662
      126218 | lina     | makassar  | 081921254662
      126239 | dia      | Polewali  | 08594125466
      126246 | tika     | majene    | 085923254662
      127258 | salsa    | tande     | 085931254662
      136268 | nina     | polewali  | 085921274662
      126278 | Luna     | makassar  | 085921254662
      126289 | dian     | mamuju    | 08592125466
      126296 | tila     | tinambung | 085921254662
      127208 | andre    | tande     | 085931254662
      136118 | mita     | majene    | 085921274662
      126128 | irfan    | majene    | 081920254662
      126139 | herliana | majene    | 08194125466
      126146 | taslim   | tande     | 085921254662
      127158 | ulvi     | mamuju    | 081931254662
      136168 | dinda    | polewali  | 085921274662
      126178 | chair    | polewali  | 081920154662
      126189 | wati     | majene    | 08194125166
      126196 | vidya    | tande     | 085921454662
      127108 | kifli    | mamuju    | 081921254662
      136318 | idawati  | polewali  | 085921274662
      126170 | yanti    | polewali  | 081920154662
      126180 | nurul    | majene    | 08194125166
      126190 | cahaya   | tinambung | 085941454662
      127100 | andi     | tande     | 081921254662
      136310 | anggun   | majene    | 085921274662
(30 rows)


retail=# select * from transaksi;
 id_beli | id_cust |  tgl_beli  | kode_barang | total_barang | total_jual
---------+---------+------------+-------------+--------------+------------
 TR1     |       1 | 2023-02-20 | DD1         |            2 |      10000
 TR2     |       2 | 2023-02-20 | DD2         |            2 |      10000
 TR3     |       1 | 2023-02-20 | DD3         |            2 |      10000
 TR4     |       1 | 2023-02-20 | DD4         |            2 |      10000
 TR5     |       1 | 2023-02-20 | DD3         |            2 |      10000
 TR6     |       1 | 2023-02-20 | DD5         |            2 |      10000
 TR7     |       1 | 2023-02-20 | DD7         |            2 |      10000
 TR8     |       1 | 2023-02-20 | DD10        |            2 |      10000
 TR9     |       1 | 2023-02-20 | DD2         |            2 |      10000
 TR10    |       1 | 2023-02-20 | DD8         |            2 |      10000
 TR11    |       5 | 2023-02-20 | DD1         |            2 |      10000
 TR12    |       2 | 2023-02-20 | DD5         |            2 |      10000
 TR13    |       1 | 2023-02-20 | DD4         |            2 |      10000
 TR14    |       1 | 2023-02-20 | DD4         |            2 |      10000
 TR15    |       1 | 2023-02-20 | DD3         |            2 |      10000
 TR16    |       1 | 2023-02-20 | DD6         |            2 |      10000
 TR17    |       1 | 2023-02-20 | DD7         |            2 |      10000
 TR18    |       1 | 2023-02-20 | DD11        |            2 |      10000
 TR19    |       1 | 2023-02-20 | DD4         |            2 |      10000
 TR20    |       1 | 2023-02-20 | DD8         |            2 |      10000
 TR21    |       5 | 2023-02-20 | DD6         |            2 |      10000
 TR22    |       2 | 2023-02-20 | DD7         |            2 |      10000
 TR23    |       1 | 2023-02-20 | DD4         |            2 |      10000
 TR24    |       1 | 2023-02-20 | DD4         |            2 |      10000
 TR25    |       1 | 2023-02-20 | DD3         |            2 |      10000
 TR26    |       1 | 2023-02-20 | DD6         |            2 |      10000
 TR27    |       1 | 2023-02-20 | DD1         |            2 |      10000
 TR28    |       1 | 2023-02-20 | DD21        |            2 |      10000
 TR29    |       1 | 2023-02-20 | DD4         |            2 |      10000
 TR30    |       1 | 2023-02-20 | DD3         |            2 |      10000
(30 rows)


retail=# SELECT id_karyawan, nama_kar, alamat, no_telp FROM karyawan
retail-# INTERSECT
retail-# SELECT id_cust, '', '', '' FROM transaksi;
 id_karyawan | nama_kar | alamat | no_telp
-------------+----------+--------+---------
(0 rows)


retail=# SELECT id_karyawan, nama_kar, alamat, no_telp FROM karyawan
retail-# UNION
retail-# SELECT id_cust, '', '', '' FROM transaksi;
 id_karyawan | nama_kar |  alamat   |   no_telp
-------------+----------+-----------+--------------
      127108 | kifli    | mamuju    | 081921254662
      136268 | nina     | polewali  | 085921274662
      126189 | wati     | majene    | 08194125166
      126226 | Lisa     | Tande     | 085923254662
           2 |          |           |
      127258 | salsa    | tande     | 085931254662
      126228 | Iksan    | Polewali  | 085921254662
      127158 | ulvi     | mamuju    | 081931254662
      136310 | anggun   | majene    | 085921274662
      126229 | Anwar    | Polewali  | 08592125466
      136228 | Fika     | majene    | 085921274662
      126178 | chair    | polewali  | 081920154662
      127208 | andre    | tande     | 085931254662
      136118 | mita     | majene    | 085921274662
      126278 | Luna     | makassar  | 085921254662
      136168 | dinda    | polewali  | 085921274662
      126170 | yanti    | polewali  | 081920154662
      126296 | tila     | tinambung | 085921254662
           5 |          |           |
      126146 | taslim   | tande     | 085921254662
      126218 | lina     | makassar  | 081921254662
      126139 | herliana | majene    | 08194125466
      136318 | idawati  | polewali  | 085921274662
      127228 | dina     | tande     | 085931254662
           1 |          |           |
      126239 | dia      | Polewali  | 08594125466
      127100 | andi     | tande     | 081921254662
      126289 | dian     | mamuju    | 08592125466
      126128 | irfan    | majene    | 081920254662
      126190 | cahaya   | tinambung | 085941454662
      126196 | vidya    | tande     | 085921454662
      126246 | tika     | majene    | 085923254662
      126180 | nurul    | majene    | 08194125166
(33 rows)


retail=#
retail=#
retail=#
retail=#
retail=#
retail=#
retail=#
retail=#
retail=#
retail=#
retail=# SELECT id_karyawan, nama_kar, alamat, no_telp FROM karyawan
retail-# INTERSECT
retail-# SELECT id_cust, '', '', '' FROM transaksi;
 id_karyawan | nama_kar | alamat | no_telp
-------------+----------+--------+---------
(0 rows)


retail=# SELECT id_karyawan, nama_kar, alamat, no_telp FROM karyawan
retail-# INTERSECT
retail-# SELECT id_cust, '', '', '' FROM transaksi;
 id_karyawan | nama_kar | alamat | no_telp
-------------+----------+--------+---------
(0 rows)


retail=# SELECT id_karyawan, nama_kar, alamat, no_telp FROM karyawan
retail-# EXCEPT
retail-# SELECT id_cust, '', '', '' FROM transaksi;
 id_karyawan | nama_kar |  alamat   |   no_telp
-------------+----------+-----------+--------------
      136168 | dinda    | polewali  | 085921274662
      126170 | yanti    | polewali  | 081920154662
      127108 | kifli    | mamuju    | 081921254662
      126296 | tila     | tinambung | 085921254662
      126146 | taslim   | tande     | 085921254662
      126218 | lina     | makassar  | 081921254662
      136268 | nina     | polewali  | 085921274662
      126189 | wati     | majene    | 08194125166
      126226 | Lisa     | Tande     | 085923254662
      126139 | herliana | majene    | 08194125466
      127258 | salsa    | tande     | 085931254662
      126228 | Iksan    | Polewali  | 085921254662
      127158 | ulvi     | mamuju    | 081931254662
      136318 | idawati  | polewali  | 085921274662
      136310 | anggun   | majene    | 085921274662
      126229 | Anwar    | Polewali  | 08592125466
      127228 | dina     | tande     | 085931254662
      136228 | Fika     | majene    | 085921274662
      126239 | dia      | Polewali  | 08594125466
      127100 | andi     | tande     | 081921254662
      126178 | chair    | polewali  | 081920154662
      127208 | andre    | tande     | 085931254662
      126289 | dian     | mamuju    | 08592125466
      126128 | irfan    | majene    | 081920254662
      126190 | cahaya   | tinambung | 085941454662
      136118 | mita     | majene    | 085921274662
      126196 | vidya    | tande     | 085921454662
      126278 | Luna     | makassar  | 085921254662
      126246 | tika     | majene    | 085923254662
      126180 | nurul    | majene    | 08194125166
(30 rows)


retail=# SELECT id_karyawan, nama_kar, alamat, no_telp FROM karyawan
retail-# INTERSECT
retail-# SELECT id_cust, '', '', '' FROM transaksi;
 id_karyawan | nama_kar | alamat | no_telp
-------------+----------+--------+---------
(0 rows)


retail=# SELECT id_karyawan, nama_kar, alamat, no_telp FROM karyawan
retail-# UNION ALL
retail-# SELECT id_cust, '', '', '' AS no_telp FROM transaksi;
 id_karyawan | nama_kar |  alamat   |   no_telp
-------------+----------+-----------+--------------
      126228 | Iksan    | Polewali  | 085921254662
      126229 | Anwar    | Polewali  | 08592125466
      126226 | Lisa     | Tande     | 085923254662
      127228 | dina     | tande     | 085931254662
      136228 | Fika     | majene    | 085921274662
      126218 | lina     | makassar  | 081921254662
      126239 | dia      | Polewali  | 08594125466
      126246 | tika     | majene    | 085923254662
      127258 | salsa    | tande     | 085931254662
      136268 | nina     | polewali  | 085921274662
      126278 | Luna     | makassar  | 085921254662
      126289 | dian     | mamuju    | 08592125466
      126296 | tila     | tinambung | 085921254662
      127208 | andre    | tande     | 085931254662
      136118 | mita     | majene    | 085921274662
      126128 | irfan    | majene    | 081920254662
      126139 | herliana | majene    | 08194125466
      126146 | taslim   | tande     | 085921254662
      127158 | ulvi     | mamuju    | 081931254662
      136168 | dinda    | polewali  | 085921274662
      126178 | chair    | polewali  | 081920154662
      126189 | wati     | majene    | 08194125166
      126196 | vidya    | tande     | 085921454662
      127108 | kifli    | mamuju    | 081921254662
      136318 | idawati  | polewali  | 085921274662
      126170 | yanti    | polewali  | 081920154662
      126180 | nurul    | majene    | 08194125166
      126190 | cahaya   | tinambung | 085941454662
      127100 | andi     | tande     | 081921254662
      136310 | anggun   | majene    | 085921274662
           1 |          |           |
           2 |          |           |
           1 |          |           |
           1 |          |           |
           1 |          |           |
           1 |          |           |
           1 |          |           |
           1 |          |           |
           1 |          |           |
           1 |          |           |
           5 |          |           |
           2 |          |           |
           1 |          |           |
           1 |          |           |
           1 |          |           |
           1 |          |           |
           1 |          |           |
           1 |          |           |
           1 |          |           |
           1 |          |           |
           5 |          |           |
           2 |          |           |
           1 |          |           |
           1 |          |           |
           1 |          |           |
           1 |          |           |
           1 |          |           |
           1 |          |           |
           1 |          |           |
           1 |          |           |
(60 rows)




retail=# SELECT id_karyawan AS ID, nama_kar AS Nama, alamat AS Alamat, no_telp AS "Nomor Telepon"
retail-# FROM karyawan
retail-# UNION ALL
retail-# SELECT id_cust, '', '', '' AS no_telp
retail-# FROM transaksi;
   id   |   nama   |  alamat   | Nomor Telepon
--------+----------+-----------+---------------
 126228 | Iksan    | Polewali  | 085921254662
 126229 | Anwar    | Polewali  | 08592125466
 126226 | Lisa     | Tande     | 085923254662
 127228 | dina     | tande     | 085931254662
 136228 | Fika     | majene    | 085921274662
 126218 | lina     | makassar  | 081921254662
 126239 | dia      | Polewali  | 08594125466
 126246 | tika     | majene    | 085923254662
 127258 | salsa    | tande     | 085931254662
 136268 | nina     | polewali  | 085921274662
 126278 | Luna     | makassar  | 085921254662
 126289 | dian     | mamuju    | 08592125466
 126296 | tila     | tinambung | 085921254662
 127208 | andre    | tande     | 085931254662
 136118 | mita     | majene    | 085921274662
 126128 | irfan    | majene    | 081920254662
 126139 | herliana | majene    | 08194125466
 126146 | taslim   | tande     | 085921254662
 127158 | ulvi     | mamuju    | 081931254662
 136168 | dinda    | polewali  | 085921274662
 126178 | chair    | polewali  | 081920154662
 126189 | wati     | majene    | 08194125166
 126196 | vidya    | tande     | 085921454662
 127108 | kifli    | mamuju    | 081921254662
 136318 | idawati  | polewali  | 085921274662
 126170 | yanti    | polewali  | 081920154662
 126180 | nurul    | majene    | 08194125166
 126190 | cahaya   | tinambung | 085941454662
 127100 | andi     | tande     | 081921254662
 136310 | anggun   | majene    | 085921274662
      1 |          |           |
      2 |          |           |
      1 |          |           |
      1 |          |           |
      1 |          |           |
      1 |          |           |
      1 |          |           |
      1 |          |           |
      1 |          |           |
      1 |          |           |
      5 |          |           |
      2 |          |           |
      1 |          |           |
      1 |          |           |
      1 |          |           |
      1 |          |           |
      1 |          |           |
      1 |          |           |
      1 |          |           |
      1 |          |           |
      5 |          |           |
      2 |          |           |
      1 |          |           |
      1 |          |           |
      1 |          |           |
      1 |          |           |
      1 |          |           |
      1 |          |           |
      1 |          |           |
      1 |          |           |
(60 rows)


