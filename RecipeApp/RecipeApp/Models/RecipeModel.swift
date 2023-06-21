//
//  RecipeModel.swift
//  RecipeApp
//
//  Created by anupriya on 2023-04-15.
//

import Foundation

enum Category: String, CaseIterable, Identifiable{
    var id: String {self.rawValue}
    
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            name: "Omelette Curry",
            image: "https://www.sbs.com.au/food/sites/sbs.com.au.food/files/styles/full/public/sri-lankan-turmeric-omelette.jpg?itok=KcIuRX_8&mtime=1667524333",
            description: "It’s very easy and quick: just softened onions, a little garlic, curry leaves, turmeric and green chillies. Don’t skimp on seasoning, with plenty of salt, black pepper and cumin – an amazing mix called milagai seeraham in Tamil.",
            ingredients: "Pinch of cumin seeds, Pinch of black peppercorns, Pinch of black peppercorns, ground turmeric, green chillies, sliced, fresh curry leaves",
            directions: "1.  For the pepper-cumin salt, toast the cumin seeds and peppercorns in a small dry frying pan over a medium heat for 1–2 minutes until fragrant. Transfer to a bowl to cool, then blitz in a spice grinder or mini food processor until fine, and keep aside for later. 2.  In a bowl, whisk the eggs together with the salt and turmeric until frothy. Set aside. 3. Heat 3 teaspoons of oil in a frying pan around 20-25cm wide over a medium heat. Add the onion (or spring onions), green chillies, garlic and curry leaves. Allow to cook, stirring occasionally, for 4-5 minutes, so that the onion softens; don’t allow it to crisp, and don’t cook past the point that the chillies and curry leaves are still bright green. 4. Fold in half and serve, dusting generously with pepper-cumin and a little extra salt. ",
            category: "Breakfast",
            datePublished: "2023-04-10",
            url: "https://www.sbs.com.au/food/recipes/sri-lankan-turmeric-omelette"
        ),
        Recipe(
            name: "Watalappan",
            image: "https://www.sbs.com.au/food/sites/sbs.com.au.food/files/styles/full/public/rx079-tcu-s4-mangoes-o-tama-carey-roasted-mango-with-whipped-coconut-l.jpg?itok=hE6xAooN&mtime=1676935343",
            description: "This beautiful, spiced Sri Lankan custard makes a perfect finish to a meal. It can be served warm or chilled, in which case you could make the recipe a day in advance. Make a little extra syrup to spoon over the top if desired.",
            ingredients: "jaggery or dark palm sugar, roughly chopped ,water , Coconut milk, rosewater, eggs, cream",
            directions: "1. Put the jaggery or palm sugar and water in a saucepan and heat, stirring, until the sugar dissolves. Leave to cool. 2. Preheat the oven to 140°C. Whisk the coconut milk with the spices and rosewater. Strain in the syrup, whisking to combine, then add the cream followed by the eggs. Transfer mixture to a jug, pour into 8 small ramekins and place in a baking dish. Pour hot water to come halfway up the ramekins and bake in the oven for 50–60 minutes, or until the custards are just set.",
            category: "Dessert",
            datePublished: "2023-04-10",
            url: "https://www.sbs.com.au/food/recipes/watalappan-0"
        ),
        Recipe(
            name: "Prawn Curry",
            image: "https://www.sbs.com.au/food/sites/sbs.com.au.food/files/styles/full/public/rx062_date_night_3_of_6_r_0.jpg?itok=fPtD366m&mtime=1658824449",
            description: "This rich and spicy shellfish curry will leave you completely satisfied. It's perfect served with steamed basmati rice, pol sambol (Sri Lankan coconut relish) and some Sri Lankan-style",
            ingredients: "prawns, salt, Coconut oil, water..",
            directions: "1. For the curry powder, toast the uncooked rice in a small dry frying pan over medium heat until brown, then transfer to a spice grinder or mortar and pestle. Add all the remaining ingredients and grind to a powder. 2. Place the peeled prawns in a bowl, sprinkle with a pinch of salt and curry powder, toss to combine and set aside. 3. Heat the coconut oil in a wok or heavy-based frying pan over medium–high heat. Add the prawn heads and fry for about 7 minutes or until golden on both sides. 4. Add the onion to the wok and toss until translucent. Add the curry leaves, garlic and ginger and cook until fragrant. Add the chilli powder, turmeric and the remaining Sri Lankan curry powder and toss to combine. Cook just until fragrant, being careful not to let the spices burn. 5. Heat a little more coconut oil in a large heavy-based frying pan over high heat. Add the prawns and cook for 1–2 minutes on each side or until just cooked.",
            category: "Snack",
            datePublished: "2023-04-10",
            url: "https://www.sbs.com.au/food/recipes/sri-lankan-prawn-curry"
        ),
        Recipe(
            name: "Love Cake",
            image: "https://www.sbs.com.au/food/sites/sbs.com.au.food/files/styles/full/public/love_cake.jpg?itok=hrqx_TM3&mtime=1650584357",
            description: "This cake is as much about the texture as it is the flavour. It should be dense, really moist and almost fudge like in the middle, surrounded by a layer that is slightly more cooked, and topped with a thin crust.",
            ingredients: "butter, eggs, cashews, almond, suger, cinnamon powder....",
            directions: "1. For the spiced cashew mix, combine all the ingredients in a bowl. Cover and leave to sit at room temperature at least overnight. This allows all the flavours to soak into the cashews and mingle nicely. 2. Preheat the oven to 180°C. Line a rectangular cake tin with six layers of newspaper. The best way to do this is to cut out the appropriate size, as you would with baking paper, then hold the newspaper under running water until it’s quite damp before fitting it into the tin. 3. Oil this paper and then line with a layer of baking paper. Set aside. 4. Spread out the semolina on a baking tray and place in the oven for 10–15 minutes until it starts to colour slightly, stirring it around a few times to ensure even toasting. (Alternatively, you can toast it in a large frying pan over a medium heat, stirring often.) Add the butter and lemon zest and mix it through the semolina until fully melted and combined. Set aside....",
            category: "Dessert",
            datePublished: "2023-04-10",
            url: "https://www.sbs.com.au/food/recipes/Lanka-Foods-love-cake"
        ),
        Recipe(
            name: "Srilankan Egg Curry",
            image: "https://www.sbs.com.au/food/sites/sbs.com.au.food/files/styles/full/public/sri-lankan-egg-curry-.jpg?itok=1otHWHr9&mtime=1477277354",
            description: "It’s full of goodness and really tasty. Deep frying peeled eggs gives it a tofu like exterior that absorbs the gravy",
            ingredients: "eggs, salt, coconut oil, chili powder, coconut cream, onion....",
            directions: "1. Bring a medium saucepan of water to the boil, then plunge the eggs into the water and boil for 5 minutes. Remove and refresh in iced water until cool. Carefully peel the cooked eggs, then prick them all over with a fork and lightly salt them.  Set aside. 2. Deep-fry the eggs in the hot coconut oil for 1 minute or until golden, then drain on absorbent paper. Add all of the eggs to the curry sauce and simmer for 4- 5 minutes. Season to taste and garnish with coriander to serve. ",
            category: "Side",
            datePublished: "2023-04-10",
            url: "https://www.sbs.com.au/food/recipes/sri-lankan-egg-curry"
        ),
        Recipe(
            name: "Devilled potatoes",
            image: "https://www.sbs.com.au/food/sites/sbs.com.au.food/files/styles/full/public/devilled-potatoes.jpg?itok=C-pbOIUJ&mtime=1469572176",
            description: "Sri Lankan potato curry, something that we as Sri Lankans love to have with our rice and curry. The best thing about potato curry is, it’s not spicy, it’s just a creamy potato that anyone and everyone can enjoy. It’s only in Sri Lanka that we love to mix carbs with carbs hahahhaha.",
            ingredients: "potatoes, red onion, garlic, green chilies, black musterad seeds.",
            directions: "1. Cook potatoes in a pan of boiling water for 10 minutes until almost cooked. Drain. Set aside. 2. Heat oil in a large, heavy-based pan over high heat. Add onion, chilli, curry leaves and mustard seeds, and stir for 2 minutes or until onion starts to soften slightly. Reduce heat to medium, then add garlic, Maldive fish, chilli flakes and turmeric, stirring to combine. Add tomato, season generously with salt, then cook for 2 minutes or until tomato begins to break down. Increase heat to high, add potatoes and cook, stirring, for 10 minutes or until potatoes are cooked and coated in spices; add a little water if the mixture becomes too dry. Serve.",
            category: "Side",
            datePublished: "2023-04-10",
            url: "https://www.sbs.com.au/food/recipes/devilled-potatoes-ala-thel-dala"
        ),
        Recipe(
            name: "String hoppers",
            image: "https://www.sbs.com.au/food/sites/sbs.com.au.food/files/styles/full/public/String-Hoppers-1_rgb-copy.jpg?itok=85Bv2XZL&mtime=1380875104",
            description: "This is a recipe for string hoppers, which are made from a hot-water dough of rice meal or wheat flour. This is pressed out in circlets from a string mould onto little wicker mats, then steamed. Light and lacy, string hoppers make a mouth-watering meal with curry and sambol",
            ingredients: "onion, salt, wheat flour or rice flour, curry leaves, garlic cloves, lime juice",
            directions: "1. To make the string hoppers, wrap the flour in a clean cloth and place in a bamboo steamer for 1 hour. While hot, transfer to the jug of a blender to break it up. Sift the steamed flour into a bowl.",
            category: "Main",
            datePublished: "2023-04-10",
            url: "https://www.sbs.com.au/food/recipes/string-hoppers-kiri-hodi"
        ),
        Recipe(
            name: "Yellow rice",
            image: "https://mahatmarice.com/wp-content/uploads/2022/07/SRI-LANKAN-RICE-039-1x1-Low-Res-JPEG.jpg.webp",
            description: "Yellow rice is a traditional srilankan rice recipe.",
            ingredients: "onion, salt, rice, chili powder.....",
            directions: "1. In a large saucepan set over medium heat, melt butter. Cook cardamom, cloves, and peppercorns for 2 to 3 mins or until fragrant. Stir in onion, garlic, ginger. Cook, stirring often, for 5 to 6 mins or until tender and starting too lightly brown. 2. Stir in rice, salt and turmeric. Cook for 1 to 2 mins or until well coated and toasted. Stir in broth and coconut milk; bring to a boil.....",
            category: "Main",
            datePublished: "2023-04-10",
            url: "https://mahatmarice.com/wp-content/uploads/2022/07/SRI-LANKAN-RICE-039-1x1-Low-Res-JPEG.jpg.webp"
        ),
        Recipe(
            name: "Beetroot curry",
            image: "https://www.sbs.com.au/food/sites/sbs.com.au.food/files/styles/full/public/rx083_curry_4_of_6.jpg?itok=konXRqR_&mtime=1653028491",
            description: "This pretty dish is a bright addition to a curry spread in both colour and flavour, made with fresh sweet fresh beetroot, coconut cream and spices",
            ingredients: "onion, salt, rice, chili powder.....",
            directions: "1. Heat the oil in a heavy–based saucepan over medium heat. Add the mustard seeds and stir for about 30 seconds or just until they start to pop....",
            category: "Slide",
            datePublished: "2023-04-10",
            url: "https://www.sbs.com.au/food/recipes/easy-beetroot-curry"
        ),
        
    ]
}
