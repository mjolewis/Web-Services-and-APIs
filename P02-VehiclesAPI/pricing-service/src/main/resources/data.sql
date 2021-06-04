CREATE TABLE PRICE (
    id IDENTITY PRIMARY KEY,
    currency VARCHAR (5) NOT NULL,
    price DECIMAL(8, 2) NOT NULL,
    vehicle_id LONG NOT NULL UNIQUE,
    CHECK LENGTH(TRIM(currency)) > 0,
    CHECK price > 0.00
);

insert into PRICE (id, currency, price, vehicle_id) values (1, 'USD', 16994, 1);
insert into PRICE (id, currency, price, vehicle_id) values (2, 'USD', 86349, 2);
insert into PRICE (id, currency, price, vehicle_id) values (3, 'USD', 96127, 3);
insert into PRICE (id, currency, price, vehicle_id) values (4, 'USD', 70664, 4);
insert into PRICE (id, currency, price, vehicle_id) values (5, 'USD', 33248, 5);
insert into PRICE (id, currency, price, vehicle_id) values (6, 'USD', 49969, 6);
insert into PRICE (id, currency, price, vehicle_id) values (7, 'USD', 66527, 7);
insert into PRICE (id, currency, price, vehicle_id) values (8, 'USD', 32715, 8);
insert into PRICE (id, currency, price, vehicle_id) values (9, 'USD', 31901, 9);
insert into PRICE (id, currency, price, vehicle_id) values (10, 'USD', 21880, 10);
insert into PRICE (id, currency, price, vehicle_id) values (11, 'USD', 11527, 11);
insert into PRICE (id, currency, price, vehicle_id) values (12, 'USD', 53093, 12);
insert into PRICE (id, currency, price, vehicle_id) values (13, 'USD', 60134, 13);
insert into PRICE (id, currency, price, vehicle_id) values (14, 'USD', 26058, 14);
insert into PRICE (id, currency, price, vehicle_id) values (15, 'USD', 43265, 15);
insert into PRICE (id, currency, price, vehicle_id) values (16, 'USD', 30229, 16);
insert into PRICE (id, currency, price, vehicle_id) values (17, 'USD', 33439, 17);
insert into PRICE (id, currency, price, vehicle_id) values (18, 'USD', 42210, 18);
insert into PRICE (id, currency, price, vehicle_id) values (19, 'USD', 22883, 19);
insert into PRICE (id, currency, price, vehicle_id) values (20, 'USD', 85897, 20);
insert into PRICE (id, currency, price, vehicle_id) values (21, 'USD', 14648, 21);
insert into PRICE (id, currency, price, vehicle_id) values (22, 'USD', 6091, 22);
insert into PRICE (id, currency, price, vehicle_id) values (23, 'USD', 30491, 23);
insert into PRICE (id, currency, price, vehicle_id) values (24, 'USD', 81631, 24);
insert into PRICE (id, currency, price, vehicle_id) values (25, 'USD', 22697, 25);
insert into PRICE (id, currency, price, vehicle_id) values (26, 'USD', 33318, 26);
insert into PRICE (id, currency, price, vehicle_id) values (27, 'USD', 44989, 27);
insert into PRICE (id, currency, price, vehicle_id) values (28, 'USD', 14753, 28);
insert into PRICE (id, currency, price, vehicle_id) values (29, 'USD', 18263, 29);
insert into PRICE (id, currency, price, vehicle_id) values (30, 'USD', 62439, 30);
insert into PRICE (id, currency, price, vehicle_id) values (31, 'USD', 76764, 31);
insert into PRICE (id, currency, price, vehicle_id) values (32, 'USD', 42783, 32);
insert into PRICE (id, currency, price, vehicle_id) values (33, 'USD', 36611, 33);
insert into PRICE (id, currency, price, vehicle_id) values (34, 'USD', 92583, 34);
insert into PRICE (id, currency, price, vehicle_id) values (35, 'USD', 9584, 35);
insert into PRICE (id, currency, price, vehicle_id) values (36, 'USD', 24479, 36);
insert into PRICE (id, currency, price, vehicle_id) values (37, 'USD', 40031, 37);
insert into PRICE (id, currency, price, vehicle_id) values (38, 'USD', 87186, 38);
insert into PRICE (id, currency, price, vehicle_id) values (39, 'USD', 95835, 39);
insert into PRICE (id, currency, price, vehicle_id) values (40, 'USD', 86320, 40);
insert into PRICE (id, currency, price, vehicle_id) values (41, 'USD', 40618, 41);
insert into PRICE (id, currency, price, vehicle_id) values (42, 'USD', 37491, 42);
insert into PRICE (id, currency, price, vehicle_id) values (43, 'USD', 70485, 43);
insert into PRICE (id, currency, price, vehicle_id) values (44, 'USD', 95631, 44);
insert into PRICE (id, currency, price, vehicle_id) values (45, 'USD', 52221, 45);
insert into PRICE (id, currency, price, vehicle_id) values (46, 'USD', 85424, 46);
insert into PRICE (id, currency, price, vehicle_id) values (47, 'USD', 42782, 47);
insert into PRICE (id, currency, price, vehicle_id) values (48, 'USD', 71919, 48);
insert into PRICE (id, currency, price, vehicle_id) values (49, 'USD', 69470, 49);
insert into PRICE (id, currency, price, vehicle_id) values (50, 'USD', 30850, 50);
insert into PRICE (id, currency, price, vehicle_id) values (51, 'USD', 28566, 51);
insert into PRICE (id, currency, price, vehicle_id) values (52, 'USD', 5948, 52);
insert into PRICE (id, currency, price, vehicle_id) values (53, 'USD', 48255, 53);
insert into PRICE (id, currency, price, vehicle_id) values (54, 'USD', 21821, 54);
insert into PRICE (id, currency, price, vehicle_id) values (55, 'USD', 48059, 55);
insert into PRICE (id, currency, price, vehicle_id) values (56, 'USD', 75422, 56);
insert into PRICE (id, currency, price, vehicle_id) values (57, 'USD', 83100, 57);
insert into PRICE (id, currency, price, vehicle_id) values (58, 'USD', 2915, 58);
insert into PRICE (id, currency, price, vehicle_id) values (59, 'USD', 61028, 59);
insert into PRICE (id, currency, price, vehicle_id) values (60, 'USD', 69492, 60);
insert into PRICE (id, currency, price, vehicle_id) values (61, 'USD', 65786, 61);
insert into PRICE (id, currency, price, vehicle_id) values (62, 'USD', 75843, 62);
insert into PRICE (id, currency, price, vehicle_id) values (63, 'USD', 1696, 63);
insert into PRICE (id, currency, price, vehicle_id) values (64, 'USD', 53373, 64);
insert into PRICE (id, currency, price, vehicle_id) values (65, 'USD', 98879, 65);
insert into PRICE (id, currency, price, vehicle_id) values (66, 'USD', 81277, 66);
insert into PRICE (id, currency, price, vehicle_id) values (67, 'USD', 69977, 67);
insert into PRICE (id, currency, price, vehicle_id) values (68, 'USD', 91308, 68);
insert into PRICE (id, currency, price, vehicle_id) values (69, 'USD', 72305, 69);
insert into PRICE (id, currency, price, vehicle_id) values (70, 'USD', 3089, 70);
insert into PRICE (id, currency, price, vehicle_id) values (71, 'USD', 25607, 71);
insert into PRICE (id, currency, price, vehicle_id) values (72, 'USD', 33158, 72);
insert into PRICE (id, currency, price, vehicle_id) values (73, 'USD', 82704, 73);
insert into PRICE (id, currency, price, vehicle_id) values (74, 'USD', 98255, 74);
insert into PRICE (id, currency, price, vehicle_id) values (75, 'USD', 39235, 75);
insert into PRICE (id, currency, price, vehicle_id) values (76, 'USD', 77919, 76);
insert into PRICE (id, currency, price, vehicle_id) values (77, 'USD', 37729, 77);
insert into PRICE (id, currency, price, vehicle_id) values (78, 'USD', 37850, 78);
insert into PRICE (id, currency, price, vehicle_id) values (79, 'USD', 96704, 79);
insert into PRICE (id, currency, price, vehicle_id) values (80, 'USD', 97653, 80);
insert into PRICE (id, currency, price, vehicle_id) values (81, 'USD', 18055, 81);
insert into PRICE (id, currency, price, vehicle_id) values (82, 'USD', 18313, 82);
insert into PRICE (id, currency, price, vehicle_id) values (83, 'USD', 67028, 83);
insert into PRICE (id, currency, price, vehicle_id) values (84, 'USD', 6841, 84);
insert into PRICE (id, currency, price, vehicle_id) values (85, 'USD', 38794, 85);
insert into PRICE (id, currency, price, vehicle_id) values (86, 'USD', 63174, 86);
insert into PRICE (id, currency, price, vehicle_id) values (87, 'USD', 59779, 87);
insert into PRICE (id, currency, price, vehicle_id) values (88, 'USD', 77593, 88);
insert into PRICE (id, currency, price, vehicle_id) values (89, 'USD', 9705, 89);
insert into PRICE (id, currency, price, vehicle_id) values (90, 'USD', 1585, 90);
insert into PRICE (id, currency, price, vehicle_id) values (91, 'USD', 80476, 91);
insert into PRICE (id, currency, price, vehicle_id) values (92, 'USD', 17364, 92);
insert into PRICE (id, currency, price, vehicle_id) values (93, 'USD', 67417, 93);
insert into PRICE (id, currency, price, vehicle_id) values (94, 'USD', 77741, 94);
insert into PRICE (id, currency, price, vehicle_id) values (95, 'USD', 55095, 95);
insert into PRICE (id, currency, price, vehicle_id) values (96, 'USD', 87027, 96);
insert into PRICE (id, currency, price, vehicle_id) values (97, 'USD', 994, 97);
insert into PRICE (id, currency, price, vehicle_id) values (98, 'USD', 47744, 98);
insert into PRICE (id, currency, price, vehicle_id) values (99, 'USD', 25073, 99);
insert into PRICE (id, currency, price, vehicle_id) values (100, 'USD', 88467, 100);
insert into PRICE (id, currency, price, vehicle_id) values (101, 'USD', 23338, 101);
insert into PRICE (id, currency, price, vehicle_id) values (102, 'USD', 36743, 102);
insert into PRICE (id, currency, price, vehicle_id) values (103, 'USD', 73612, 103);
insert into PRICE (id, currency, price, vehicle_id) values (104, 'USD', 15419, 104);
insert into PRICE (id, currency, price, vehicle_id) values (105, 'USD', 49140, 105);
insert into PRICE (id, currency, price, vehicle_id) values (106, 'USD', 37733, 106);
insert into PRICE (id, currency, price, vehicle_id) values (107, 'USD', 47030, 107);
insert into PRICE (id, currency, price, vehicle_id) values (108, 'USD', 34679, 108);
insert into PRICE (id, currency, price, vehicle_id) values (109, 'USD', 14600, 109);
insert into PRICE (id, currency, price, vehicle_id) values (110, 'USD', 83000, 110);
insert into PRICE (id, currency, price, vehicle_id) values (111, 'USD', 7603, 111);
insert into PRICE (id, currency, price, vehicle_id) values (112, 'USD', 40580, 112);
insert into PRICE (id, currency, price, vehicle_id) values (113, 'USD', 72812, 113);
insert into PRICE (id, currency, price, vehicle_id) values (114, 'USD', 15925, 114);
insert into PRICE (id, currency, price, vehicle_id) values (115, 'USD', 29547, 115);
insert into PRICE (id, currency, price, vehicle_id) values (116, 'USD', 4435, 116);
insert into PRICE (id, currency, price, vehicle_id) values (117, 'USD', 70336, 117);
insert into PRICE (id, currency, price, vehicle_id) values (118, 'USD', 89428, 118);
insert into PRICE (id, currency, price, vehicle_id) values (119, 'USD', 51751, 119);
insert into PRICE (id, currency, price, vehicle_id) values (120, 'USD', 97033, 120);
insert into PRICE (id, currency, price, vehicle_id) values (121, 'USD', 36082, 121);
insert into PRICE (id, currency, price, vehicle_id) values (122, 'USD', 49123, 122);
insert into PRICE (id, currency, price, vehicle_id) values (123, 'USD', 38924, 123);
insert into PRICE (id, currency, price, vehicle_id) values (124, 'USD', 73625, 124);
insert into PRICE (id, currency, price, vehicle_id) values (125, 'USD', 20695, 125);
insert into PRICE (id, currency, price, vehicle_id) values (126, 'USD', 56114, 126);
insert into PRICE (id, currency, price, vehicle_id) values (127, 'USD', 17026, 127);
insert into PRICE (id, currency, price, vehicle_id) values (128, 'USD', 90539, 128);
insert into PRICE (id, currency, price, vehicle_id) values (129, 'USD', 83875, 129);
insert into PRICE (id, currency, price, vehicle_id) values (130, 'USD', 28337, 130);
insert into PRICE (id, currency, price, vehicle_id) values (131, 'USD', 24825, 131);
insert into PRICE (id, currency, price, vehicle_id) values (132, 'USD', 1556, 132);
insert into PRICE (id, currency, price, vehicle_id) values (133, 'USD', 48640, 133);
insert into PRICE (id, currency, price, vehicle_id) values (134, 'USD', 41577, 134);
insert into PRICE (id, currency, price, vehicle_id) values (135, 'USD', 27326, 135);
insert into PRICE (id, currency, price, vehicle_id) values (136, 'USD', 77503, 136);
insert into PRICE (id, currency, price, vehicle_id) values (137, 'USD', 87843, 137);
insert into PRICE (id, currency, price, vehicle_id) values (138, 'USD', 50099, 138);
insert into PRICE (id, currency, price, vehicle_id) values (139, 'USD', 59571, 139);
insert into PRICE (id, currency, price, vehicle_id) values (140, 'USD', 40566, 140);
insert into PRICE (id, currency, price, vehicle_id) values (141, 'USD', 8031, 141);
insert into PRICE (id, currency, price, vehicle_id) values (142, 'USD', 45573, 142);
insert into PRICE (id, currency, price, vehicle_id) values (143, 'USD', 6939, 143);
insert into PRICE (id, currency, price, vehicle_id) values (144, 'USD', 15020, 144);
insert into PRICE (id, currency, price, vehicle_id) values (145, 'USD', 34949, 145);
insert into PRICE (id, currency, price, vehicle_id) values (146, 'USD', 89293, 146);
insert into PRICE (id, currency, price, vehicle_id) values (147, 'USD', 79575, 147);
insert into PRICE (id, currency, price, vehicle_id) values (148, 'USD', 19929, 148);
insert into PRICE (id, currency, price, vehicle_id) values (149, 'USD', 34265, 149);
insert into PRICE (id, currency, price, vehicle_id) values (150, 'USD', 22625, 150);
insert into PRICE (id, currency, price, vehicle_id) values (151, 'USD', 74513, 151);
insert into PRICE (id, currency, price, vehicle_id) values (152, 'USD', 61471, 152);
insert into PRICE (id, currency, price, vehicle_id) values (153, 'USD', 76217, 153);
insert into PRICE (id, currency, price, vehicle_id) values (154, 'USD', 43127, 154);
insert into PRICE (id, currency, price, vehicle_id) values (155, 'USD', 87013, 155);
insert into PRICE (id, currency, price, vehicle_id) values (156, 'USD', 7143, 156);
insert into PRICE (id, currency, price, vehicle_id) values (157, 'USD', 36361, 157);
insert into PRICE (id, currency, price, vehicle_id) values (158, 'USD', 56166, 158);
insert into PRICE (id, currency, price, vehicle_id) values (159, 'USD', 80779, 159);
insert into PRICE (id, currency, price, vehicle_id) values (160, 'USD', 87370, 160);
insert into PRICE (id, currency, price, vehicle_id) values (161, 'USD', 39024, 161);
insert into PRICE (id, currency, price, vehicle_id) values (162, 'USD', 29902, 162);
insert into PRICE (id, currency, price, vehicle_id) values (163, 'USD', 1719, 163);
insert into PRICE (id, currency, price, vehicle_id) values (164, 'USD', 81625, 164);
insert into PRICE (id, currency, price, vehicle_id) values (165, 'USD', 77558, 165);
insert into PRICE (id, currency, price, vehicle_id) values (166, 'USD', 23383, 166);
insert into PRICE (id, currency, price, vehicle_id) values (167, 'USD', 52625, 167);
insert into PRICE (id, currency, price, vehicle_id) values (168, 'USD', 91337, 168);
insert into PRICE (id, currency, price, vehicle_id) values (169, 'USD', 74897, 169);
insert into PRICE (id, currency, price, vehicle_id) values (170, 'USD', 21860, 170);
insert into PRICE (id, currency, price, vehicle_id) values (171, 'USD', 90378, 171);
insert into PRICE (id, currency, price, vehicle_id) values (172, 'USD', 78610, 172);
insert into PRICE (id, currency, price, vehicle_id) values (173, 'USD', 41257, 173);
insert into PRICE (id, currency, price, vehicle_id) values (174, 'USD', 74911, 174);
insert into PRICE (id, currency, price, vehicle_id) values (175, 'USD', 30066, 175);
insert into PRICE (id, currency, price, vehicle_id) values (176, 'USD', 27857, 176);
insert into PRICE (id, currency, price, vehicle_id) values (177, 'USD', 51129, 177);
insert into PRICE (id, currency, price, vehicle_id) values (178, 'USD', 78570, 178);
insert into PRICE (id, currency, price, vehicle_id) values (179, 'USD', 5031, 179);
insert into PRICE (id, currency, price, vehicle_id) values (180, 'USD', 71540, 180);
insert into PRICE (id, currency, price, vehicle_id) values (181, 'USD', 18890, 181);
insert into PRICE (id, currency, price, vehicle_id) values (182, 'USD', 33762, 182);
insert into PRICE (id, currency, price, vehicle_id) values (183, 'USD', 28838, 183);
insert into PRICE (id, currency, price, vehicle_id) values (184, 'USD', 33500, 184);
insert into PRICE (id, currency, price, vehicle_id) values (185, 'USD', 62518, 185);
insert into PRICE (id, currency, price, vehicle_id) values (186, 'USD', 91093, 186);
insert into PRICE (id, currency, price, vehicle_id) values (187, 'USD', 29968, 187);
insert into PRICE (id, currency, price, vehicle_id) values (188, 'USD', 31466, 188);
insert into PRICE (id, currency, price, vehicle_id) values (189, 'USD', 68214, 189);
insert into PRICE (id, currency, price, vehicle_id) values (190, 'USD', 84635, 190);
insert into PRICE (id, currency, price, vehicle_id) values (191, 'USD', 48611, 191);
insert into PRICE (id, currency, price, vehicle_id) values (192, 'USD', 24893, 192);
insert into PRICE (id, currency, price, vehicle_id) values (193, 'USD', 17963, 193);
insert into PRICE (id, currency, price, vehicle_id) values (194, 'USD', 7948, 194);
insert into PRICE (id, currency, price, vehicle_id) values (195, 'USD', 281, 195);
insert into PRICE (id, currency, price, vehicle_id) values (196, 'USD', 88002, 196);
insert into PRICE (id, currency, price, vehicle_id) values (197, 'USD', 37153, 197);
insert into PRICE (id, currency, price, vehicle_id) values (198, 'USD', 94819, 198);
insert into PRICE (id, currency, price, vehicle_id) values (199, 'USD', 98828, 199);
insert into PRICE (id, currency, price, vehicle_id) values (200, 'USD', 93409, 200);
