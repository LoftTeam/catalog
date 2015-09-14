<section class="h1"><?php echo $product_item['title'] ?></section>
<section class="item">
    <div class="item_left">
        <div class="item_card_view">
            <div class="category_list_show">
                <a class="category_show_full">
                    <div class="category_full_wrap">
                        <!--<img src="/images/content/big_executor.png" alt=""/>-->
                        <?php if(empty($product['img'])): ?>
                            <img src="/images/content/no-image.png" width="106" height="86" alt="">
                        <?php else: ?>
                            <img src="<?php echo $product_item['img']; ?>" alt="">
                        <?php endif; ?>
                    </div>
                    <div class="category_full_mask"></div>
                </a>

            </div>
        </div>
        <div class="category_order_rating">
            <div class="category_rating_title">На складе:
                <?php
                    if($product_item['count'] == 0){
                        echo 'Нет на складе';
                    }else{
                        echo $product_item['count'];
                    }
                ?>
            </div>
            <ul class="category_rating_count">

            </ul>
        </div>
    </div>
    <div class="item_right">

            <ul class="item_counts">
                <li>
                    <div class="item_counts_price">
                        цена за 1 штуку: <span class="cart_counter"><?php echo $product_item['price'] ?></span> руб.
                    </div>
                </li>

            </ul>
            <div class="category_buy_counter">
                <form action="">
                    <div class="text_input">
                        <div class="text_input_wrap">
                            <input class="category_count_input" type="text"/>
                        </div>
                    </div>

                    <a href="#" class="category_count_button">В корзину</a>
                    <input class="category_count_submit" type="submit"/>
                </form>
            </div>
        </div>
        <div class="item_properties">
            <ul class="item_prop_list">

                <li>
                    <div class="item_prop_title">Описание</div>
                    <ul class="item_prop_options">
                        <?php echo $product_item['description'] ?>
                    </ul>
                </li>

            </ul>
        </div>
</section>