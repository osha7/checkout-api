# by running this file YOU WILL LOSE any previously created Items, Carts

Item.destroy_all # !!!!!!!
Cart.destroy_all # !!!!!!!

# https://www.sunshinetienda.com/collections/jewelry/products/green-horn-bangle-set
horn_bangles = Item.create(name: "GREEN HORN BANGLES by SUNSHINE TIENDA", price: 68.00, description: "Sustainably sourced horn from Water Buffalo. Length: 4in x 1in. Handmade in Vietnam.", img_source: "https://cdn.shopify.com/s/files/1/0642/7243/products/GreenHornBangleSet_1512x.jpg?v=1595433625")
# https://shopanthom.com/collections/accessories/products/touch-feeling-earring-single
sabrina = Item.create(name: "TOUCH & FEELING EARRINGS by ANTHOM", price: 190.00, description: "Elongated hand-shaped brass earring. Length: 8.5cm. Handmade in New York.", img_source: "https://cdn.shopify.com/s/files/1/2297/0287/products/09-18-19_Product19828_1_1512x.jpg?v=1569338096")
# https://shopanthom.com/collections/accessories/products/red-acrylic-water-drop-earring-single
splat = Item.create(name: "SABRINA SL EARRINGS by ANTHOM", price: 190.00, description: "Red acrylic irregularly shaped earring with polished brass upper. Made in USA.", img_source: "https://cdn.shopify.com/s/files/1/2297/0287/products/03-27-19_Product5829_1512x.jpg?v=1572979082")
# https://www.assemblynewyork.com/collections/bracelet/products/acrylic-cuff-with-copper-setting
wrist_fire = Item.create(name: "VINTAGE LUCITE CUFF by ASSEMBLY", price: 148.00, description: "Lucite Cuff with an acrylic ruby red setting. Made in USA", img_source: "https://cdn.shopify.com/s/files/1/0188/4778/products/vintagebracelet_1366x.jpg?v=1595369960")
# https://thefrankieshop.com/collections/vacation-edit/products/rachel-comey-slalom-earrings-striped-bone
striped_bone = Item.create(name: "FAU BONE EARRINGS by RACHEL COMEY", price: 119.00, description: "Digital Marble Drop Earrings. Sculptural Form. 100% Acrylic. Length: 2.5in. Made in Italy", img_source: "https://cdn.shopify.com/s/files/1/1527/0993/products/rachel-comey-slalom-earrings-striped-bone-earrings-rachel-comey-114709_900x.jpg?v=1592432549")
# https://www.alexisbittar.com/collections/rings/products/block-ring-warm-grey
block_ring = Item.create(name: "BLOCK RING by ALEXIS BITTAR", price: 100.00, description: "Handcrafted Lucite ring in warm grey, carved into a luminous block shape.", img_source: "https://cdn.shopify.com/s/files/1/0255/3616/8018/products/sku_lc00r0010598_01_1600x.jpg?v=1580360049")
# https://www.youarefm.com/product-page/sunshine-tienda-blue-and-pink-horn-lock-earrings
lock_earrings = Item.create(name: "LOCK EARRINGS by SUNSHINE TIENDA", price: 49.00, description: "Sustainably sourced horn from Water Buffalo. Length: 4in x 1in. Handmade in Vietnam.", img_source: "https://static.wixstatic.com/media/3d9522_514f4ed20cba4741a1c117aa9a2b19b3~mv2.jpg/v1/fill/w_851,h_1135,al_c,q_85/3d9522_514f4ed20cba4741a1c117aa9a2b19b3~mv2.webp")
