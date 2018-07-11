
<?php 
    function magic_customize_register($wp_customize){
        // Showcase Section
        $wp_customize->add_section('showcase', array(
            'title'         => __('Showcase', 'Magic Test'),
            'description'   => sprintf(__('Options for showcase', 'Magic Test')),
            'priority'      => 130
            ));

        $wp_customize->add_setting('showcase_image');

        $wp_customize->add_control( new WP_Customize_Cropped_Image_Control($wp_customize, 'showcase', array(
            'label' => 'Image',
            'section' => 'showcase',
            'settings' => 'showcase_image',
            'width' => 1080,
            'height' => 920,
            'priority' => 1
        )));

        $wp_customize->add_setting('showcase_heading', array(
            'default'   => _x('Custom Bootstrap WordPress Theme', 'Magic Test'),
            'type'      => 'theme_mod'
            ));

        $wp_customize->add_control('showcase_heading', array(
            'label'     => __('Heading', 'Magic Test'),
            'section'   => 'showcase',
            'priority'  => 2
            ));

        $wp_customize->add_setting('showcase_text', array(
            'default'   => _x('Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint ullam eum itaque porro facilis praesentium dicta fugit quo, possimus mollitia reprehenderit ipsam accusantium accusamus reiciendis odit! Aliquam inventore nam et.', 'Magic Test'),
            'type'      => 'theme_mod'
            ));

        $wp_customize->add_control('showcase_text', array(
            'label'     => __('Text', 'Magic Test'),
            'section'   => 'showcase',
            'priority'  => 3
            ));

        $wp_customize->add_setting('btn_url', array(
            'default'   => _x('http://test.com', 'Magic Test'),
            'type'      => 'theme_mod'
            ));

        $wp_customize->add_control('btn_url', array(
            'label'     => __('Button URL', 'Magic Test'),
            'section'   => 'showcase',
            'priority'  => 4
            ));

        $wp_customize->add_setting('btn_text', array(
            'default'   => _x('Read More', 'Magic Test'),
            'type'      => 'theme_mod'
            ));

    }

    add_action('customize_register', 'magic_customize_register');

?>