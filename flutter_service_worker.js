'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"assets/fonts/MaterialIcons-Regular.otf": "b590f296afc956721a117c2f88bd63fa",
"assets/AssetManifest.bin": "96990ae49a782c16f307c6a3dfbf09a7",
"assets/AssetManifest.json": "22ba577de6101f80225839dfc33c55ae",
"assets/packages/br_ingredientes_icons/assets/fonts/BRIngredientesIconsFont.ttf": "49b41e9617d1c53699c4fa26710f221b",
"assets/packages/br_ingredientes_icons/assets/icons/banana.png": "27bd51f240a74c4d2848913d62a33812",
"assets/packages/br_ingredientes_icons/assets/icons/queijo_ralado.png": "4dcc38d96a5163f1b50efb3e6a4175bb",
"assets/packages/br_ingredientes_icons/assets/icons/biscoito.png": "2f5fe570768d928516ca22544b1c713c",
"assets/packages/br_ingredientes_icons/assets/icons/alho_poro.png": "51d2104825060b57073aae58ebb5ce0a",
"assets/packages/br_ingredientes_icons/assets/icons/grao_de_bico.png": "27afc88241e74461c5f69dcc73d6363b",
"assets/packages/br_ingredientes_icons/assets/icons/noz_moscada.png": "649619fbe16588adaa7c28f6e0cab84f",
"assets/packages/br_ingredientes_icons/assets/icons/cebola_roxa.png": "139a60b35d8db23f1db2a4c4068934d4",
"assets/packages/br_ingredientes_icons/assets/icons/tomate_seco.png": "3bc36edeb0dd97f2b11c63d8c5fe538b",
"assets/packages/br_ingredientes_icons/assets/icons/queijo.png": "144b54b74177eb9281b724eb693034d0",
"assets/packages/br_ingredientes_icons/assets/icons/couve_flor.png": "ae5488010cf050da948ed85d30dba09d",
"assets/packages/br_ingredientes_icons/assets/icons/pepino.png": "026df5e158040234883e7c5904ac1684",
"assets/packages/br_ingredientes_icons/assets/icons/molho_de_tomate.png": "d48cfd1ec8982cf395e609f197d3e13d",
"assets/packages/br_ingredientes_icons/assets/icons/ovo.png": "585f0421bbe7263bdcf237868f0074d4",
"assets/packages/br_ingredientes_icons/assets/icons/batata.png": "8beb6a3e1531ebc584e412d5b88d2b23",
"assets/packages/br_ingredientes_icons/assets/icons/sal.png": "fca66fef94d4ccf23d9451b0cf4d9f27",
"assets/packages/br_ingredientes_icons/assets/icons/carne_seca.png": "b9306a6e703c73143c99a3feee0376b2",
"assets/packages/br_ingredientes_icons/assets/icons/granola.png": "4ba1af92c17565e29d905b3a6f3ab8dc",
"assets/packages/br_ingredientes_icons/assets/icons/fermento.png": "d1387b10fc1b5d85fcad7b5ade501ae1",
"assets/packages/br_ingredientes_icons/assets/icons/abobora.png": "385a8da67bc68ca6bbdb914ad00e4419",
"assets/packages/br_ingredientes_icons/assets/icons/manga.png": "39dff4b13da8e367b39dd171355e54a7",
"assets/packages/br_ingredientes_icons/assets/icons/rucula.png": "82d16e5af5f9bf06ac518b866775c491",
"assets/packages/br_ingredientes_icons/assets/icons/massa_folhada.png": "534252b880126678f0f81d1fa3694d7d",
"assets/packages/br_ingredientes_icons/assets/icons/pitaya.png": "8ed569ba2329e72b173a32b605f01944",
"assets/packages/br_ingredientes_icons/assets/icons/aliche.png": "8e6159b0fda5bee7a9ccd01503e5718b",
"assets/packages/br_ingredientes_icons/assets/icons/farinha_de_trigo.png": "58979d358f9c89c6925960ff9a8243ed",
"assets/packages/br_ingredientes_icons/assets/icons/molho_pesto.png": "b5008e4420622bc60a290500b9c35f3b",
"assets/packages/br_ingredientes_icons/assets/icons/bacon.png": "ef46af511e09f4f9b35e1d03054bfce2",
"assets/packages/br_ingredientes_icons/assets/icons/esfirra_fechada.png": "87c01e07b67eba6dde502646873573ed",
"assets/packages/br_ingredientes_icons/assets/icons/jabuticaba.png": "6062d382c627947cdddc4658893591d7",
"assets/packages/br_ingredientes_icons/assets/icons/catupiry.png": "464930193e622e95e656bb97866948b1",
"assets/packages/br_ingredientes_icons/assets/icons/beterraba.png": "f62333c0e47566f8bff4286591133284",
"assets/packages/br_ingredientes_icons/assets/icons/abacate.png": "f6001efd825a66f9436279fb02a7c9c3",
"assets/packages/br_ingredientes_icons/assets/icons/vinagre.png": "f711ae113c2e433215622d664a56f19f",
"assets/packages/br_ingredientes_icons/assets/icons/amendoa.png": "d7b86c4f7f30fcbdf152f619f05b02f3",
"assets/packages/br_ingredientes_icons/assets/icons/default.png": "f18bba3bfc936e07aea80e078c0b1cde",
"assets/packages/br_ingredientes_icons/assets/icons/maracuja.png": "b4fd09578623b22d53567e83a5cfe91e",
"assets/packages/br_ingredientes_icons/assets/icons/kiwi.png": "679733aab27f527213efaa601dd678f0",
"assets/packages/br_ingredientes_icons/assets/icons/leite_condensado.png": "d80c3197effda04d78e04deb63552274",
"assets/packages/br_ingredientes_icons/assets/icons/escarola.png": "c02289cc348b368fd4a77b17936f500f",
"assets/packages/br_ingredientes_icons/assets/icons/molho_barbecue.png": "4e2aa901d0155039d5292bb6b2960c00",
"assets/packages/br_ingredientes_icons/assets/icons/batata_palha.png": "0a4830f069e248aa316314f36fdd6572",
"assets/packages/br_ingredientes_icons/assets/icons/espinafre.png": "4397dd69ae902cd47e83ea44d351dc80",
"assets/packages/br_ingredientes_icons/assets/icons/uva.png": "1681ff6c89297ec589c0ce658e2afb56",
"assets/packages/br_ingredientes_icons/assets/icons/arroz.png": "fa98126b0cfec72149f9ce8f8d89ee73",
"assets/packages/br_ingredientes_icons/assets/icons/couve.png": "9b0e548865f6f2e2ae384fb0bb30ccb7",
"assets/packages/br_ingredientes_icons/assets/icons/m_e_m.png": "fb68babf1a1c314731682422d329329d",
"assets/packages/br_ingredientes_icons/assets/icons/cebola.png": "e07a0efe2674b4ea4f098e4dababe5a4",
"assets/packages/br_ingredientes_icons/assets/icons/ervilha.png": "c127c50bb5f0a554a1b39dc5ee891480",
"assets/packages/br_ingredientes_icons/assets/icons/molho_branco.png": "dd1f9646ccd9d70fb98f4a899243eec9",
"assets/packages/br_ingredientes_icons/assets/icons/palmito.png": "9f551fca2ee98a96d2ede750f40a79b8",
"assets/packages/br_ingredientes_icons/assets/icons/tamara.png": "0f8451f945965356ea667de3d5d6e92f",
"assets/packages/br_ingredientes_icons/assets/icons/esfirra_aberta.png": "9dbad68e3ba0c709bc573fe81e0862ab",
"assets/packages/br_ingredientes_icons/assets/icons/salsicha.png": "85d35762d1b433cb329f35f865522ae5",
"assets/packages/br_ingredientes_icons/assets/icons/mamao.png": "ab37e7b33f452c55f3dfd7206574cf0a",
"assets/packages/br_ingredientes_icons/assets/icons/calabresa.png": "67a6bb2205e205101659d99711396765",
"assets/packages/br_ingredientes_icons/assets/icons/melancia.png": "7e8f80589fa39a6070d6d4dcb5acfd09",
"assets/packages/br_ingredientes_icons/assets/icons/feijao.png": "8bf0a381ef24733b4b910ad35e312658",
"assets/packages/br_ingredientes_icons/assets/icons/presunto.png": "b9523c31388dfe42262aa122d9cb6562",
"assets/packages/br_ingredientes_icons/assets/icons/mandioca_frita.png": "546341438207278bb9a29dcb7c922630",
"assets/packages/br_ingredientes_icons/assets/icons/chuchu.png": "f18bba3bfc936e07aea80e078c0b1cde",
"assets/packages/br_ingredientes_icons/assets/icons/sardinha.png": "ad2fe60c61659cdc01e59749fa68a9fb",
"assets/packages/br_ingredientes_icons/assets/icons/aveia.png": "5e55e76a60ce8a006b82680f620af2f1",
"assets/packages/br_ingredientes_icons/assets/icons/berinjela.png": "a1dd5957e7ed7837eb149b1f13d396df",
"assets/packages/br_ingredientes_icons/assets/icons/yogurt.png": "b1e9c86504e2af302823341db255f7fa",
"assets/packages/br_ingredientes_icons/assets/icons/croissant.png": "eb7336ef42362ab9697d1da43ae7446d",
"assets/packages/br_ingredientes_icons/assets/icons/chocolate.png": "4e5bd04fb14bb3ed43eecdd33d0c5c81",
"assets/packages/br_ingredientes_icons/assets/icons/refrigerante.png": "ff8f26ec1604cc7719ea1a03ca4ff5f0",
"assets/packages/br_ingredientes_icons/assets/icons/aipo.png": "44e86abf425a7b654e45ccf4b7b566bd",
"assets/packages/br_ingredientes_icons/assets/icons/massa_de_pizza.png": "cfdd1dc40b4130831f565dbe26ae21aa",
"assets/packages/br_ingredientes_icons/assets/icons/leite.png": "5d0e15c80f9de3ccdbf9406824bb78cb",
"assets/packages/br_ingredientes_icons/assets/icons/carambola.png": "a5f4a5f757ba12a5bdf7ab62d990fadb",
"assets/packages/br_ingredientes_icons/assets/icons/agriao.png": "5dd4b22f49d2538ce4785f9ab7126f2f",
"assets/packages/br_ingredientes_icons/assets/icons/maionese.png": "154bc4086863f0eec16aa926b488c436",
"assets/packages/br_ingredientes_icons/assets/icons/oregano.png": "d63bae5171b6c2cc64bf8de5316967c2",
"assets/packages/br_ingredientes_icons/assets/icons/agua.png": "c56af39d998888e1656c37cfe661beb6",
"assets/packages/br_ingredientes_icons/assets/icons/frango_desfiado.png": "b763ab2ce39e67c36dfa92609d1a70c7",
"assets/packages/br_ingredientes_icons/assets/icons/milho.png": "343000fbec077399b83d22f02f0f25bc",
"assets/packages/br_ingredientes_icons/assets/icons/cebolinha.png": "d59aa32370adcc9225d7d2fe2e429c5a",
"assets/packages/br_ingredientes_icons/assets/icons/coco.png": "fca99f031a37a3a9c3ca5ba500581f33",
"assets/packages/br_ingredientes_icons/assets/icons/maca.png": "1539ad74450a1c0e8cbac738b000e481",
"assets/packages/br_ingredientes_icons/assets/icons/pera.png": "5c19123ef11f918c406959e0632a261e",
"assets/packages/br_ingredientes_icons/assets/icons/coentro.png": "6133283222d338e25e37f86bb29a1696",
"assets/packages/br_ingredientes_icons/assets/icons/mel.png": "31a17696e78abf634592d69ecd6a7567",
"assets/packages/br_ingredientes_icons/assets/icons/pimenta_vermelha.png": "5f8647af419f714dee5938e4769023b0",
"assets/packages/br_ingredientes_icons/assets/icons/coxa_de_frango.png": "ab96fd55cf3138fc30c5d7b4be77edd3",
"assets/packages/br_ingredientes_icons/assets/icons/pimenta_dedo_de_moca.png": "41a96f07c3c63b8611af1d8f0b4fe8f8",
"assets/packages/br_ingredientes_icons/assets/icons/salsinha.png": "aa3c8db7a6b27060ada019dff5576b31",
"assets/packages/br_ingredientes_icons/assets/icons/batata_doce.png": "b6a94ec58d86136dbcfaa4b994b74bf4",
"assets/packages/br_ingredientes_icons/assets/icons/azeite.png": "de6d30fe82ab6cfb10814a257cc7638d",
"assets/packages/br_ingredientes_icons/assets/icons/molho_shoyu.png": "ade318ba80f3f43e143cb3af7aa15626",
"assets/packages/br_ingredientes_icons/assets/icons/tomilho.png": "62f22d29d790db32bc3c6c17cd989830",
"assets/packages/br_ingredientes_icons/assets/icons/ovo_frito.png": "276d6e954c986957c67f0d7c6f29b8c1",
"assets/packages/br_ingredientes_icons/assets/icons/pistache.png": "8221239df142adc0f4e3e972024a6167",
"assets/packages/br_ingredientes_icons/assets/icons/polvilho_doce.png": "30b75531a3e6ed110d54b83f7986e7b3",
"assets/packages/br_ingredientes_icons/assets/icons/caldo_de_legumes.png": "c50842dd80d69c426c69914c2316c0a7",
"assets/packages/br_ingredientes_icons/assets/icons/alho.png": "d4d11743af6f24a86b7c189d7aeeef7b",
"assets/packages/br_ingredientes_icons/assets/icons/cacau.png": "886bd29d4042cee0d3f9a0801e37f47f",
"assets/packages/br_ingredientes_icons/assets/icons/cravo_da_india.png": "c1b945289a561836752d7aa626e0225a",
"assets/packages/br_ingredientes_icons/assets/icons/cafe.png": "755e587d0c2278434eff94fb00c6211d",
"assets/packages/br_ingredientes_icons/assets/icons/pacoca.png": "c65411354bd2081edb91a3b66b442aeb",
"assets/packages/br_ingredientes_icons/assets/icons/pepperoni.png": "4685dbd19f2fe4af5280e0c5447e3b6d",
"assets/packages/br_ingredientes_icons/assets/icons/guaco.png": "bdbde37389d550898bb3c0cb09681e23",
"assets/packages/br_ingredientes_icons/assets/icons/repolho.png": "e19d159c96532a90d4ca5efc68628c86",
"assets/packages/br_ingredientes_icons/assets/icons/salmao.png": "e6b3de8459a6159f660c5139c5db4e8c",
"assets/packages/br_ingredientes_icons/assets/icons/atum.png": "9fda3af34b8b9f310e265602546e2177",
"assets/packages/br_ingredientes_icons/assets/icons/batata_frita.png": "d26a0d1e98caf47cf364a178acac82dc",
"assets/packages/br_ingredientes_icons/assets/icons/polenta.png": "546341438207278bb9a29dcb7c922630",
"assets/packages/br_ingredientes_icons/assets/icons/pao_de_forma.png": "905341d2e2d5b29290fb7a12c740f6e4",
"assets/packages/br_ingredientes_icons/assets/icons/acai.png": "1a739622cce22825a506b9283f186d47",
"assets/packages/br_ingredientes_icons/assets/icons/mandioquinha.png": "55716b361d34a4728b50add9447b00ac",
"assets/packages/br_ingredientes_icons/assets/icons/pimenta_calabresa.png": "11e5ce0d29fab4745cef592fbf8edf86",
"assets/packages/br_ingredientes_icons/assets/icons/ovomaltine.png": "e0eb9ac644c64c2919706cc33ce5a6cb",
"assets/packages/br_ingredientes_icons/assets/icons/alface.png": "f80a1af8879400f760995c1d98cddf78",
"assets/packages/br_ingredientes_icons/assets/icons/cereja.png": "b2d3d589d83faed86d6598da5fe45483",
"assets/packages/br_ingredientes_icons/assets/icons/couve_de_bruxelas.png": "f0855c3272ddf08edccb71d3a0a41d47",
"assets/packages/br_ingredientes_icons/assets/icons/brigadeiro.png": "59e28be3dd7b189f522cd67e0609f2ce",
"assets/packages/br_ingredientes_icons/assets/icons/louro.png": "48e787a9e81d6d1a3590920ab0133115",
"assets/packages/br_ingredientes_icons/assets/icons/suspiro.png": "72b677e4d1726e7d3839f97597d372de",
"assets/packages/br_ingredientes_icons/assets/icons/nozes.png": "2086db1ede8ad922940e78601d1681be",
"assets/packages/br_ingredientes_icons/assets/icons/rabanete.png": "d605d2e63206249be325ad319b947572",
"assets/packages/br_ingredientes_icons/assets/icons/salsao.png": "10023efa7335ef053b0ddb9f8cdc3120",
"assets/packages/br_ingredientes_icons/assets/icons/graos.png": "0e811fae0075f0fe0e8953de94bd839f",
"assets/packages/br_ingredientes_icons/assets/icons/molho_de_pimenta.png": "06cb9c42e94524a574d30f272e077289",
"assets/packages/br_ingredientes_icons/assets/icons/abobrinha.png": "9be45b4347476529bffd765f1695c4b8",
"assets/packages/br_ingredientes_icons/assets/icons/cerveja.png": "85ba98006ae499567f55e5fdec446681",
"assets/packages/br_ingredientes_icons/assets/icons/pimentao.png": "ee93c32857524bab9a4cba5126732c91",
"assets/packages/br_ingredientes_icons/assets/icons/shimeji.png": "5c4c9cecb4fbf544eb765a2b2150b841",
"assets/packages/br_ingredientes_icons/assets/icons/castanha_do_para.png": "a61693f4cf06127aaf3fd8016de2cd6b",
"assets/packages/br_ingredientes_icons/assets/icons/peito_de_peru.png": "36f3058c6e51d35663259a27c55e1489",
"assets/packages/br_ingredientes_icons/assets/icons/leite_de_coco.png": "d58bbe210b80fc338f5d872d0f212a7f",
"assets/packages/br_ingredientes_icons/assets/icons/oleo.png": "8cdf731c9e8f6461796505177da8664f",
"assets/packages/br_ingredientes_icons/assets/icons/hortela.png": "06ae40bb5093daa7d15edbbea9d64cb6",
"assets/packages/br_ingredientes_icons/assets/icons/carne_moida.png": "754780805ac89de4bab413d4c53aa2c5",
"assets/packages/br_ingredientes_icons/assets/icons/morango.png": "fc8124bd536ad24483e3453e7d79b080",
"assets/packages/br_ingredientes_icons/assets/icons/polvilho_azedo.png": "0e729d5efd4231de6c907ae08983b48f",
"assets/packages/br_ingredientes_icons/assets/icons/manjericao.png": "ba86d85fdbbd3eaca103b6e612189307",
"assets/packages/br_ingredientes_icons/assets/icons/canela.png": "99c3f3a10ab17b4f34fccc4bcab9b6cb",
"assets/packages/br_ingredientes_icons/assets/icons/lichia.png": "59d697ad5478d863ef9eb997202fc578",
"assets/packages/br_ingredientes_icons/assets/icons/gengibre.png": "c632afc9502b3dc38cec61f08203ea98",
"assets/packages/br_ingredientes_icons/assets/icons/acelga.png": "bb11fb1f0d0d9fd6673f022fece228c3",
"assets/packages/br_ingredientes_icons/assets/icons/acucar.png": "623db2aab6a87cc251f677f7cf5eae56",
"assets/packages/br_ingredientes_icons/assets/icons/gergelim.png": "30f5e52ab46d1009ae8792b8dc63d735",
"assets/packages/br_ingredientes_icons/assets/icons/mostarda.png": "0aef2afedd6f2fc090757cb9498b423e",
"assets/packages/br_ingredientes_icons/assets/icons/picles_em_conserva.png": "3bee8eee416399b43d060c16a4c5d589",
"assets/packages/br_ingredientes_icons/assets/icons/limao.png": "0b6fe132ba71001856dbe1e1b8ca225f",
"assets/packages/br_ingredientes_icons/assets/icons/lombo_canadense.png": "73c892a5a8f96c8997c0ab51a36abf7e",
"assets/packages/br_ingredientes_icons/assets/icons/cenoura.png": "dac3dd00b4aacd7fe99ebdda7a75ec02",
"assets/packages/br_ingredientes_icons/assets/icons/cupuacu.png": "4c1bd321c4615e50b1dc7793acaf399f",
"assets/packages/br_ingredientes_icons/assets/icons/bolacha_champagne.png": "c241812f469baa4a0aeef2d09d8a5aeb",
"assets/packages/br_ingredientes_icons/assets/icons/guarana.png": "1b75f33fae596650215ba7f6071c08d3",
"assets/packages/br_ingredientes_icons/assets/icons/melao.png": "e2033d1b1bbe274fa2db23ad6ad77780",
"assets/packages/br_ingredientes_icons/assets/icons/caldo_de_carne.png": "6fbe83247829e6f8e222ca02e7b033e1",
"assets/packages/br_ingredientes_icons/assets/icons/alecrim.png": "d6264f7af3f88018948c6e56478e001b",
"assets/packages/br_ingredientes_icons/assets/icons/massa_de_lasanha.png": "6f3bc9664d10c8ab52292c71b2f04ed3",
"assets/packages/br_ingredientes_icons/assets/icons/azeitona.png": "674dd4069100e581152acb0abb8b53be",
"assets/packages/br_ingredientes_icons/assets/icons/pimenta_do_reino.png": "2dde4583d56bc7e73d8ed7441ce8e16a",
"assets/packages/br_ingredientes_icons/assets/icons/farinha_de_rosca.png": "b080ddb038a648d27086dc3cf41b8b06",
"assets/packages/br_ingredientes_icons/assets/icons/champignon.png": "7831fcd471c3b8817ee5dc009bb87d75",
"assets/packages/br_ingredientes_icons/assets/icons/manteiga.png": "8346170a3d2e38618c562ef548b3ec36",
"assets/packages/br_ingredientes_icons/assets/icons/creme_de_leite.png": "517db780011026dd084fa537e62de0a3",
"assets/packages/br_ingredientes_icons/assets/icons/jaca.png": "328ff9edd4d2d80acace265a4d2c01af",
"assets/packages/br_ingredientes_icons/assets/icons/spaghetti.png": "4be09213aceae3abaddcf875f4858225",
"assets/packages/br_ingredientes_icons/assets/icons/pessego.png": "ba60161fc6c9e54dc5a7190161d6067c",
"assets/packages/br_ingredientes_icons/assets/icons/pao_frances.png": "e389067710cd3392e8aa34c2119e1037",
"assets/packages/br_ingredientes_icons/assets/icons/nabo.png": "8d12b9f3746a197bb9fdabde3462df47",
"assets/packages/br_ingredientes_icons/assets/icons/abacaxi.png": "f010d2b8bc0ecdbe103277178ca756d3",
"assets/packages/br_ingredientes_icons/assets/icons/ketchup.png": "c398668ce9f69ea1e5243fedae308e31",
"assets/packages/br_ingredientes_icons/assets/icons/laranja.png": "303c13bbcbba305dd5ec1f1b625ed9f0",
"assets/packages/br_ingredientes_icons/assets/icons/tomate.png": "26c6881cbe7b8f10b56c21e0603a9d8c",
"assets/packages/br_ingredientes_icons/assets/icons/brocolis.png": "89d98ef7a1fec0a5555a0e8cb40ba415",
"assets/packages/br_ingredientes_icons/assets/icons/castanha_de_caju.png": "d0b0df9fa31869177cf1abbf688a0d4b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/FontManifest.json": "17713efe071ab20748777bd52ce55c3a",
"assets/NOTICES": "8d0acf0a7c63627dab9472572fbca647",
"main.dart.js": "b2e4f9777392c2268680b673dacda4a8",
"manifest.json": "9a0de1ff26661cd281cb9deb3db33b02",
"version.json": "ff966ab969ba381b900e61629bfb9789",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/skwasm.wasm": "1a074e8452fe5e0d02b112e22cdcf455",
"canvaskit/canvaskit.wasm": "42df12e09ecc0d5a4a34a69d7ee44314",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "be0e3b33510f5b7b0cc76cc4d3e50048",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"index.html": "e062e937bc944c5d604aaab5975b934d",
"/": "e062e937bc944c5d604aaab5975b934d",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
