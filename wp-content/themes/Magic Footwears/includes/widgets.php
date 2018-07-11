<?php 

    function magic_init_widgets($id){

        register_sidebar(array(
            'name'          => 'Footer 1',
            'id'            => 'footer1',
            'before_widget' => '<section class="widget">',
            'after_widget' => '</section>',
            'before_title'  => '<h3>',
            'after_title'   => '</h3>'
        ));

        register_sidebar(array(
            'name'          => 'Footer 2',
            'id'            => 'footer2',
            'before_widget' => '<section class="widget">',
            'after_widget' => '</section>',
            'before_title'  => '<h3>',
            'after_title'   => '</h3>'
        ));

        register_sidebar(array(
            'name'          => 'Footer 3',
            'id'            => 'footer3',
            'before_widget' => '<section class="widget">',
            'after_widget' => '</section>',
            'before_title'  => '<h3>',
            'after_title'   => '</h3>'
        ));

        register_sidebar(array(
            'name'          => 'Footer 4',
            'id'            => 'footer4',
            'before_widget' => '<section class="widget">',
            'after_widget' => '</section>',
            'before_title'  => '<h3>',
            'after_title'   => '</h3>'
        ));
    }

 ?>