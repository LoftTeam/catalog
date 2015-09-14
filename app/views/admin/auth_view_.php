<?php //require '../templates/_chunks/header.php'; ?>

<div class="authorize_popup" id="authorize_popup">
    <div class="authorize_top"></div>
    <div class="authorize_body">
        <div class="fancy_title">
            <p>Авторизация</p>
        </div>
        <div class="authorize_body_inner">
            <div class="authorize_inner_top"></div>

            <form action="#" method="post"

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

<!--            <input type="submit" name="signup">-->

            <div class="authorize_footer">
<!--                <a class="authorize_remember" href="#">Напомнить пароль</a>-->
<!--                <a class="authorize_register" href="#">Регистрация</a>-->
                <div class="authorize_submit_block">
<!--                    <a href="#" class="authorize_submit_btn">Регистрация</a>-->
                    <input type="submit" name="signup">
<!--                    <a href="#" class="authorize_submit_btn">Напомнить пароль</a>-->
<!--                    <input type="submit">-->
                </div>
            </div>
            </form>

            <div class="authorize_inner_bottom"></div>
        </div>
    </div>
    <div class="authorize_bottom"></div>
</div>