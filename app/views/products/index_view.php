<section class="h1">Продукция</section>
<ul class="products">
    <?php foreach($products as $product): ?>
        <li>
            <a href="/products/view/<?php echo $product['id']; ?>
            ">
                <div class="products_img">
                    <?php if(empty($product['img'])): ?>
                        <img src="/images/content/no-image.png" width="106" height="86" alt="">
                    <?php else: ?>
                    <img src="<?php echo $product['img']; ?>" alt="">
                    <?php endif; ?>
                </div>
                <div class="products_title">
                    <span><?php echo $product['title']; ?></span>
                </div>
            </a>
        </li>
    <?php endforeach; ?>
</ul>