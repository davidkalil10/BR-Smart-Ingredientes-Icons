const ingredientAliases = {
  "abobrinha": [ "abobrinha", "zucchini", "calabacín", "courgette" ],
  "acucar": [ "acucar", "açúcar", "sugar", "azúcar", "sucre" ],
  "alecrim": [ "alecrim", "rosemary", "romero", "romarin" ],
  "alface": [ "alface", "lettuce", "lechuga", "laitue" ],
  "alho": [ "alho", "garlic", "ajo", "ail" ],
  "arroz": [ "arroz", "rice", "arroz", "riz" ],
  "atum": [ "atum", "tuna", "atún", "thon" ],
  "aveia": [ "aveia", "oats", "avena", "avoine" ],
  "azeite": [ "azeite", "olive oil", "aceite de oliva", "huile d'olive" ],
  "banana": [ "banana", "banana", "plátano", "banane" ],
  "berinjela": [ "berinjela", "eggplant", "berenjena", "aubergine" ],
  "beterraba": [ "beterraba", "beetroot", "remolacha", "betterave" ],
  "calabresa": [ "calabresa", "calabresa sausage", "chorizo calabresa", "saucisse calabresa" ],
  "caldo_de_carne": [ "caldo de carne", "beef broth", "caldo de carne", "bouillon de boeuf" ],
  "caldo_de_legumes": [ "caldo de legumes", "vegetable broth", "caldo de verduras", "bouillon de légumes" ],
  "carne_moida": [ "carne moída", "ground beef", "carne molida", "boeuf haché" ],
  "cebola": [ "cebola", "onion", "cebolla", "oignon" ],
  "cebola_roxa": [ "cebola roxa", "red onion", "cebolla morada", "oignon rouge" ],
  "cebolinha": [ "cebolinha", "chives", "cebollino", "ciboulette" ],
  "cenoura": [ "cenoura", "carrot", "zanahoria", "carotte" ],
  "champignon": [ "champignon", "mushroom", "champiñón", "champignon" ],
  "couve": [ "couve", "collard greens", "col rizada", "chou frisé" ],
  "coxa_de_frango": [ "coxa de frango", "chicken thigh", "muslo de pollo", "cuisse de poulet" ],
  "cravo_da_india": [ "cravo da índia", "clove", "clavo de olor", "clou de girofle" ],
  "creme_de_leite": [ "creme de leite", "cream", "nata", "crème" ],
  "espinafre": [ "espinafre", "spinach", "espinaca", "épinard" ],
  "farinha_de_rosca": [ "farinha de rosca", "breadcrumbs", "pan rallado", "chapelure" ],
  "farinha_de_trigo": [ "farinha de trigo", "wheat flour", "harina de trigo", "farine de blé" ],
  "feijao": [ "feijão", "bean", "frijol", "haricot" ],
  "fermento": [ "fermento", "yeast", "levadura", "levure" ],
  "frango_desfiado": [ "frango desfiado", "shredded chicken", "pollo desmenuzado", "poulet effiloché" ],
  "ketchup": [ "ketchup", "ketchup", "kétchup", "ketchup" ],
  "laranja": [ "laranja", "orange", "naranja", "orange" ],
  "leite": [ "leite", "milk", "leche", "lait" ],
  "leite_condensado": [ "leite condensado", "condensed milk", "leche condensada", "lait concentré" ],
  "limao": [ "limão", "lemon", "limón", "citron" ],
  "lombo_canadense": [ "lombo canadense", "canadian bacon", "lomo canadiense", "lard canadien" ],
  "louro": [ "louro", "bay leaf", "laurel", "laurier" ],
  "maca": [ "maçã", "apple", "manzana", "pomme" ],
  "maionese": [ "maionese", "mayonnaise", "mayonesa", "mayonnaise" ],
  "manjericao": [ "manjericão", "basil", "albahaca", "basilic" ],
  "manteiga": [ "manteiga", "butter", "mantequilla", "beurre" ],
  "milho": [ "milho", "corn", "maíz", "maïs" ],
  "molho_barbecue": [ "molho barbecue", "barbecue sauce", "salsa barbacoa", "sauce barbecue" ],
  "molho_de_tomate": [ "molho de tomate", "tomato sauce", "salsa de tomate", "sauce tomate" ],
  "molho_shoyu": [ "molho shoyu", "soy sauce", "salsa de soja", "sauce soja" ],
  "morango": [ "morango", "strawberry", "fresa", "fraise" ],
  "mostarda": [ "mostarda", "mustard", "mostaza", "moutarde" ],
  "nozes": [ "nozes", "walnut", "nuez", "noix" ],
  "noz_moscada": [ "noz-moscada", "nutmeg", "nuez moscada", "muscade" ],
  "oregano": [ "orégano", "oregano", "orégano", "origan" ],
  "ovo": [ "ovo", "egg", "huevo", "œuf" ],
  "ovo_frito": [ "ovo frito", "fried egg", "huevo frito", "œuf frit" ],
  "palmito": [ "palmito", "hearts of palm", "palmito", "cœur de palmier" ],
  "pao_de_forma": [ "pão de forma", "sliced bread", "pan de molde", "pain de mie" ],
  "pao_frances": [ "pão francês", "french bread", "pan francés", "baguette" ],
  "peito_de_peru": [ "peito de peru", "turkey breast", "pechuga de pavo", "blanc de dinde" ],
  "pimentao": [ "pimentão", "bell pepper", "pimiento", "poivron" ],
  "pimenta_calabresa": [ "pimenta calabresa", "crushed red pepper", "pimienta calabresa", "piment fort concassé" ],
  "pimenta_do_reino": [ "pimenta do reino", "black pepper", "pimienta negra", "poivre noir" ],
  "pimenta_vermelha": [ "pimenta vermelha", "red pepper", "pimiento rojo", "piment rouge" ],
  "presunto": [ "presunto", "ham", "jamón", "jambon" ],
  "queijo": [ "queijo", "cheese", "queso", "fromage", "mussarela", "mozzarella", "muzzarella", "muçarela", "mozarela","parmesao", "parmesan", "parmigiano", "parmesano", "parmesan","gorgonzola", "gorgonzola", "gorgonzola", "gorgonzola","provolone", "provolone", "provolone", "provolone","ricota", "ricotta", "ricotta", "ricotta", "ricotta" ],
  "rucula": [ "rúcula", "arugula", "rúcula", "roquette" ],
  "sal": [ "sal", "salt", "sal", "sel" ],
  "salsinha": [ "salsinha", "parsley", "perejil", "persil" ],
  "sardinha": [ "sardinha", "sardine", "sardina", "sardine" ],
  "tomate": [ "tomate", "tomato", "tomate", "tomate" ],
  "tomilho": [ "tomilho", "thyme", "tomillo", "thym" ],
  "vinagre": [ "vinagre", "vinegar", "vinagre", "vinaigre" ],
  "abacate": [ "abacate", "avocado", "aguacate", "avocat" ],
  "abacaxi": [ "abacaxi", "pineapple", "piña", "ananas" ],
  "abobora": [ "abóbora", "pumpkin", "calabaza", "citrouille" ], // "squash" também é comum em EN para alguns tipos
  "agua": [ "água", "water", "agua", "eau" ],
  "aliche": [ "aliche", "anchovy", "anchoa", "anchois" ], // Alici é mais específico, anchova é mais genérico
  "azeitona": [ "azeitona", "olive", "aceituna", "olive" ],
  "bacon": [ "bacon", "bacon", "tocino", "bacon" ], // ou "panceta" em ES
  "batata": [ "batata", "potato", "patata", "pomme de terre" ],
  "batata_doce": [ "batata doce", "sweet potato", "batata", "patate douce" ], // "boniato" ou "camote" também em ES
  "batata_frita": [ "batata frita", "french fries", "patatas fritas", "frites" ], // "chips" em UK English
  "batata_palha": [ "batata palha", "shoestring potatoes", "patatas paja", "pommes paille" ],
  "brocolis": [ "brócolis", "broccoli", "brócoli", "brocoli" ],
  "cacau": [ "cacau", "cocoa", "cacao", "cacao" ],
  "canela": [ "canela", "cinnamon", "canela", "cannelle" ],
  "carne_seca": [ "carne seca", "dried meat", "carne seca", "viande séchée" ], // "jerky" é um tipo específico em EN
  "chocolate": [ "chocolate", "chocolate", "chocolate", "chocolat" ],
  "coco": [ "coco", "coconut", "coco", "noix de coco" ],
  "ervilha": [ "ervilha", "pea", "guisante", "petit pois" ], // "arveja" também em ES
  "escarola": [ "escarola", "escarole", "escarola", "scarole" ], // "endive" também relacionado
  "gengibre": [ "gengibre", "ginger", "jengibre", "gingembre" ],
  "grao_de_bico": [ "grão de bico", "chickpea", "garbanzo", "pois chiche" ],
  "kiwi": [ "kiwi", "kiwi", "kiwi", "kiwi" ],
  "m_e_m": [ "m&m", "m&m's", "m&m's", "m&m's" ], // Nome da marca, geralmente não traduzido
  "mandioca_frita": [ "mandioca frita", "fried cassava", "yuca frita", "manioc frit" ], // "cassava fries"
  "mandioquinha": [ "mandioquinha", "arracacha", "arracacha", "pomme de terre-céleri" ], // Também "batata baroa", "batata salsa"
  "manga": [ "manga", "mango", "mango", "mangue" ],
  "maracuja": [ "maracujá", "passion fruit", "maracuyá", "fruit de la passion" ], // "parchita" em alguns lugares ES
  "oleo": [ "óleo", "oil", "aceite", "huile" ],
  "ovomaltine": [ "ovomaltine", "ovaltine", "ovomaltina", "ovomaltine" ], // Nome da marca
  "pepperoni": [ "pepperoni", "pepperoni", "pepperoni", "pepperoni" ],
  "pera": [ "pera", "pear", "pera", "poire" ],
  "pimenta_dedo_de_moca": [ "pimenta dedo de moça", "dedo de moça chili", "ají dedo de moça", "piment dedo de moça" ], // Menos comum internacionalmente, pode usar "red chili" como genérico
  "polenta": [ "polenta", "polenta", "polenta", "polenta" ],
  "salsicha": [ "salsicha", "sausage", "salchicha", "saucisse" ],
  "tomate_seco": [ "tomate seco", "sun-dried tomato", "tomate seco", "tomate séchée" ],
  "uva": [ "uva", "grape", "uva", "raisin" ],
  "acai": [ "açaí", "acai berry", "açaí", "açai" ],
  "acelga": [ "acelga", "swiss chard", "acelga", "blette" ], // ou "bette à carde"
  "agriao": [ "agrião", "watercress", "berro", "cresson" ],
  "aipo": [ "aipo", "celery", "apio", "céleri" ], // Também conhecido como salsão em PT
  "alho_poro": [ "alho poró", "leek", "puerro", "poireau" ],
  "amendoa": [ "amêndoa", "almond", "almendra", "amande" ],
  "biscoito": [ "biscoito", "cookie", "galleta", "biscuit" ], // "biscuit" em UK English é diferente
  "bolacha_champagne": [ "bolacha champagne", "ladyfinger", "bizcocho de soletilla", "biscuit à la cuillère" ], // ou "savoiardi"
  "brigadeiro": [ "brigadeiro", "brigadeiro", "brigadeiro", "brigadeiro" ], // Doce brasileiro, geralmente não traduzido
  "cafe": [ "café", "coffee", "café", "café" ],
  "castanha_de_caju": [ "castanha de caju", "cashew nut", "anacardo", "noix de cajou" ], // "marañón" em alguns lugares ES
  "castanha_do_para": [ "castanha do pará", "brazil nut", "nuez de Brasil", "noix du Brésil" ],
  "catupiry": [ "catupiry", "catupiry cheese", "queso catupiry", "fromage catupiry" ], // Marca brasileira
  "cereja": [ "cereja", "cherry", "cereza", "cerise" ],
  "cerveja": [ "cerveja", "beer", "cerveza", "bière" ],
  "chuchu": [ "chuchu", "chayote", "chayote", "chayotte" ], // ou "christophine"
  "coentro": [ "coentro", "coriander", "cilantro", "coriandre" ], // "Cilantro" refere-se às folhas em EN, "coriander" às sementes ou ambos
  "couve_de_bruxelas": [ "couve de bruxelas", "brussels sprouts", "coles de Bruselas", "chou de Bruxelles" ],
  "couve_flor": [ "couve-flor", "cauliflower", "coliflor", "chou-fleur" ],
  "croissant": [ "croissant", "croissant", "cruasán", "croissant" ], // Chave corrigida para 'croissant'
  "cupuacu": [ "cupuaçu", "cupuacu", "cupuaçu", "cupuaçu" ], // Fruta amazônica
  "esfirra_aberta": [ "esfirra aberta", "open sfikha", "esfiha abierta", "sfikha ouverte" ],
  "esfirra_fechada": [ "esfirra fechada", "closed sfikha", "esfiha cerrada", "sfikha fermée" ],
  "gergelim": [ "gergelim", "sesame seed", "sésamo", "sésame" ], // ou "ajonjolí" em ES
  "granola": [ "granola", "granola", "granola", "granola" ],
  "graos": [ "grãos", "grains", "granos", "grains" ], // Genérico
  "guaco": [ "guaco", "guaco", "guaco", "liane mexicaine" ], // Planta medicinal
  "guarana": [ "guaraná", "guarana", "guaraná", "guarana" ],
  "hortela": [ "hortelã", "mint", "menta", "menthe" ],
  "leite_de_coco": [ "leite de coco", "coconut milk", "leche de coco", "lait de coco" ],
  "lichia": [ "lichia", "lychee", "lichi", "litchi" ],
  "spaghetti": [ "macarrão espaguete", "spaghetti", "espaguetis", "spaghetti" ], // Chave presumida, pode ser 'espaguete'
  "mamao": [ "mamão", "papaya", "papaya", "papaye" ],
  "massa_de_lasanha": [ "massa de lasanha", "lasagna noodles", "láminas de lasaña", "feuilles de lasagne" ],
  "massa_folhada": [ "massa folhada", "puff pastry", "hojaldre", "pâte feuilletée" ],
  "massa_de_pizza": [ "massa de pizza", "pizza dough", "masa de pizza", "pâte à pizza" ],
  "mel": [ "mel", "honey", "miel", "miel" ],
  "melancia": [ "melancia", "watermelon", "sandía", "pastèque" ],
  "melao": [ "melão", "melon", "melón", "melon" ], // Pode ser mais específico (cantaloupe, honeydew)
  "molho_branco": [ "molho branco", "white sauce", "salsa blanca", "sauce béchamel" ], // Béchamel é um tipo específico
  "molho_de_pimenta": [ "molho de pimenta", "hot sauce", "salsa picante", "sauce piquante" ],
  "molho_pesto": [ "molho pesto", "pesto sauce", "salsa pesto", "sauce pesto" ],
  "nabo": [ "nabo", "turnip", "nabo", "navet" ],
  "pacoca": [ "paçoca", "paçoca", "paçoca", "paçoca" ], // Doce brasileiro
  "pepino": [ "pepino", "cucumber", "pepino", "concombre" ],
  "picles_em_conserva": [ "picles em conserva", "pickles", "pepinillos en vinagre", "cornichons" ], // "pickled cucumbers"
  "pistache": [ "pistache", "pistachio", "pistacho", "pistache" ],
  "pitaya": [ "pitaya", "dragon fruit", "pitahaya", "fruit du dragon" ],
  "polvilho_azedo": [ "polvilho azedo", "sour cassava starch", "almidón agrio de yuca", "fécule de manioc sure" ],
  "polvilho_doce": [ "polvilho doce", "sweet cassava starch", "almidón dulce de yuca", "fécule de manioc douce" ],
  "queijo_ralado": [ "queijo ralado", "grated cheese", "queso rallado", "fromage râpé" ],
  "rabanete": [ "rabanete", "radish", "rábano", "radis" ],
  "refrigerante": [ "refrigerante", "soda", "refresco", "soda" ], // "soft drink", "pop"
  "repolho": [ "repolho", "cabbage", "repollo", "chou" ], // ou "col" em ES
  "salmao": [ "salmão", "salmon", "salmón", "saumon" ],
  "salsao": [ "salsão", "celery", "apio", "céleri" ], // Sinônimo de aipo
  "shimeji": [ "shimeji", "shimeji mushroom", "hongo shimeji", "champignon shimeji" ],
  "suspiro": [ "suspiro", "meringue", "merengue", "meringue" ],
  "tamara": [ "tâmara", "date", "dátil", "datte" ],
  "yogurt": [ "iogurte", "yogurt", "yogur", "yaourt" ] // Chave "yogurt", nome PT "iogurte"
};