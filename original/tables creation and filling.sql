create table employees (
    id_employees int primary key, 
    id_position int not null,
    bithdate date not null,
    email text not null,
    employee_date date not null,
    id_coffee_shops int not null
)
;

create table positions ( 
    id_position int primary key,
    position text not null
)
;

create table coffee_shops (
    id_coffee_shops int primary key,
    coffee_shops_name text not null,
    recruting int not null
)
;

alter table employees add constraint employees_id_position_positions_fk foreign key (id_position) references positions (id_position); 
alter table employees add constraint employees_id_coffee_shops_coffee_shops_fk foreign key (id_coffee_shops) references coffee_shops (id_coffee_shops);


insert into positions values (1, 'Бариста'),
                             (2, 'Управляющий')

;

insert into coffee_shops values (11, 'Лермонтова', 7),
                                (112, 'Атлантида', 6),
                                (62, 'Советская', 11),
                                (63, 'Геодезическая', 5)

insert into employees values ('1269'::int,'1'::int,to_date('04.01.1998', 'DD.MM.YYYY'),'Vladimirova0198@gmail.com'::text,to_date('25.03.2021', 'DD.MM.YYYY'),'11'::int),
                             ('1268'::int,'1'::int,to_date('28.03.1996', 'DD.MM.YYYY'),'liliakamalova8000@gmail.com'::text,to_date('30.03.2021', 'DD.MM.YYYY'),'11'::int),
                             ('1256'::int,'1'::int,to_date('11.08.2002', 'DD.MM.YYYY'),'irinapirogova2002@gmail.com'::text,to_date('23.02.2021', 'DD.MM.YYYY'),'112'::int),
                             ('1243'::int,'1'::int,to_date('01.11.1998', 'DD.MM.YYYY'),'gordan2016@gmail.com'::text,to_date('20.01.2021', 'DD.MM.YYYY'),'11'::int),
                             ('1207'::int,'1'::int,to_date('08.04.1999', 'DD.MM.YYYY'),'Dremoir@gmail.com'::text,to_date('20.10.2020', 'DD.MM.YYYY'),'112'::int),
                             ('1206'::int,'1'::int,to_date('22.10.2001', 'DD.MM.YYYY'),'andrey55rus55@gmail.com'::text,to_date('07.11.2020', 'DD.MM.YYYY'),'112'::int),
                             ('1199'::int,'1'::int,to_date('09.02.1995', 'DD.MM.YYYY'),'EkBaJlau3p@gmail.com'::text,to_date('29.09.2020', 'DD.MM.YYYY'),'112'::int),
                             ('1198'::int,'1'::int,to_date('21.07.1998', 'DD.MM.YYYY'),'illinoiis23@gmail.com'::text,to_date('03.10.2020', 'DD.MM.YYYY'),'112'::int),
                             ('1197'::int,'1'::int,to_date('22.04.1997', 'DD.MM.YYYY'),'Divitek@mail.ru'::text,to_date('07.10.2020', 'DD.MM.YYYY'),'112'::int),
                             ('1196'::int,'1'::int,to_date('03.05.1996', 'DD.MM.YYYY'),'nv.ivanova1606@omgau.org'::text,to_date('06.10.2020', 'DD.MM.YYYY'),'112'::int),
                             ('1189'::int,'1'::int,to_date('09.04.1998', 'DD.MM.YYYY'),'merryarrow@mail.ru'::text,to_date('08.08.2020', 'DD.MM.YYYY'),'11'::int),
                             ('1177'::int,'1'::int,to_date('06.08.1998', 'DD.MM.YYYY'),'merryarrow@mail.ru'::text,to_date('16.03.2020', 'DD.MM.YYYY'),'11'::int),
                             ('1103'::int,'1'::int,to_date('17.11.1994', 'DD.MM.YYYY'),'alexanderantihovic@gmail.com'::text,to_date('01.07.2019', 'DD.MM.YYYY'),'112'::int),
                             ('1101'::int,'1'::int,to_date('14.03.1999', 'DD.MM.YYYY'),'annasadovik@icloud.com'::text,to_date('01.07.2019', 'DD.MM.YYYY'),'11'::int),
                             ('1080'::int,'1'::int,to_date('18.01.1998', 'DD.MM.YYYY'),'bim013377@gmail.com'::text,to_date('01.02.2019', 'DD.MM.YYYY'),'112'::int),
                             ('1069'::int,'1'::int,to_date('01.01.1998', 'DD.MM.YYYY'),'yxoftnim@gmail.com'::text,to_date('01.10.2018', 'DD.MM.YYYY'),'112'::int),
                             ('1045'::int,'1'::int,to_date('02.01.1996', 'DD.MM.YYYY'),'traispiy@gmail.com'::text,to_date('10.01.2018', 'DD.MM.YYYY'),'11'::int),
                             ('1267'::int,'1'::int,to_date('01.07.1996', 'DD.MM.YYYY'),'dima44448888@rambler.ru'::text,to_date('03.03.2021', 'DD.MM.YYYY'),'62'::int),
                             ('1266'::int,'1'::int,to_date('28.12.1999', 'DD.MM.YYYY'),'frnkierodog@gmail.com'::text,to_date('09.02.2021', 'DD.MM.YYYY'),'62'::int),
                             ('1229'::int,'1'::int,to_date('08.08.1996', 'DD.MM.YYYY'),'andrei.lashewitch@icloud.com'::text,to_date('26.11.2020', 'DD.MM.YYYY'),'63'::int),
                             ('1202'::int,'1'::int,to_date('06.06.1998', 'DD.MM.YYYY'),'asya.sneg@mail.ru'::text,to_date('01.10.2020', 'DD.MM.YYYY'),'62'::int),
                             ('1195'::int,'1'::int,to_date('02.11.2000', 'DD.MM.YYYY'),'exclusivejester@gmail.com'::text,to_date('01.09.2020', 'DD.MM.YYYY'),'63'::int),
                             ('1178'::int,'1'::int,to_date('03.02.1999', 'DD.MM.YYYY'),'melikovao@mail.ru'::text,to_date('26.03.2020', 'DD.MM.YYYY'),'62'::int),
                             ('1157'::int,'1'::int,to_date('21.03.1997', 'DD.MM.YYYY'),'kseniyakris@gmail.com'::text,to_date('19.12.2019', 'DD.MM.YYYY'),'63'::int),
                             ('1156'::int,'1'::int,to_date('30.08.1997', 'DD.MM.YYYY'),'misskaty13@mail.ru'::text,to_date('01.01.2020', 'DD.MM.YYYY'),'63'::int),
                             ('1132'::int,'1'::int,to_date('02.04.1993', 'DD.MM.YYYY'),'Olgareyder@gmail.com'::text,to_date('01.11.2019', 'DD.MM.YYYY'),'62'::int),
                             ('1078'::int,'2'::int,to_date('13.12.1998', 'DD.MM.YYYY'),'zkmldn98@gmail.com'::text,to_date('28.12.2018', 'DD.MM.YYYY'),'112'::int),
                             ('1044'::int,'2'::int,to_date('19.09.1988', 'DD.MM.YYYY'),'KREA.omsk@gmail.com'::text,to_date('05.01.2018', 'DD.MM.YYYY'),'11'::int),
                             ('1108'::int,'2'::int,to_date('16.02.1995', 'DD.MM.YYYY'),'tshkirill@gmail.com'::text,to_date('15.07.2019', 'DD.MM.YYYY'),'62'::int),
                             ('1077'::int,'2'::int,to_date('20.09.1996', 'DD.MM.YYYY'),'gustova.nsk@gmail.com'::text,to_date('19.11.2018', 'DD.MM.YYYY'),'63'::int);
;