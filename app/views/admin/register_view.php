
<div class="authorize_popup" id="authorize_popup">
    <div class="authorize_top"></div>
    <div class="authorize_body">
        <div class="fancy_title">
            <p><?= $title ?></p>
        </div>
        <div class="authorize_body_inner">
            <?php if($result): ?>
                <p>Вы зарегистрированы</p>
                <a href="/main">На главную страницу</a>
            <?php else: ?>
            <?php if(isset($errors) && is_array($errors)): ?>
                <ul>
                    <?php foreach ($errors as $error): ?>
                        <li style="color: red;"> - <?php echo $error; ?></li>
                    <?php endforeach; ?>
                </ul>
            <?php endif; ?>
            <div class="authorize_inner_top"></div>

            <form action="" method="post">

            <label class="register_label">
                <span class="register_text">Имя</span>
                                <span class="text_input">
                                    <span class="text_input_wrap">
                                <input type="text" name="name" placeholder="Имя" />
                                </span>
                            </span>
            </label>

            <label class="register_label">
                <span class="register_text">E-mail</span>
                                <span class="text_input">
                                    <span class="text_input_wrap">
                                <input type="email" name="email" placeholder="E-mail" />
                                </span>
                            </span>
            </label>

            <label class="register_label">
                <span class="register_text">Пароль</span>
                                <span class="text_input">
                                    <span class="text_input_wrap">
                                <input type="password" name="password" placeholder="Пароль">
                                </span>
                            </span>
            </label>

            <div class="authorize_footer">

                <input name="submit" type="submit" value="Регистрация">
                <div class="authorize_submit_block">

                </div>

            </div>
            </form>
            <?php endif; ?>
            <div class="authorize_inner_bottom"></div>
        </div>
    </div>
    <div class="authorize_bottom"></div>
</div>