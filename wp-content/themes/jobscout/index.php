<?php

/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package JobScout
 */

get_header(); ?>

<style>
    .site-main {
        background-color: #f2f2f2;
    }

    .blog-container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 20px;
    }

    .row {
        display: flex;
        flex-wrap: wrap;
        margin: -10px;
    }

    .col {
        flex: 1 1 calc(50% - 20px);
        margin: 20px 10px;
        background-color: white;
        padding: 10px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        display: flex;
    }

    .square-image {
        flex: 0 0 190px;
        height: 190px;
        overflow: hidden;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .square-image img {
        width: 90%;
        height: 90%;
        object-fit: cover;
        display: block;
    }

    .blog-content {
        display: flex;
        flex-direction: column;
        justify-content: center;
    }

    .blog-content h5 {
        font-size: 18px;
        margin: 0 0 10px;
    }

    .blog-content h5 a {
        text-decoration: none;
        color: black;
        font-weight: bold;
    }

    .blog-content h5 a:hover {
        color: #2ace5e;
    }

    .blog-content p {
        font-size: 14px;
        color: #666;
        max-height: 50px;
        line-height: 1.4;
        margin-top: 5px;
    }

    .blog-content a {
        font-size: 14px;
        color: #ffc107;
        font-weight: bold;
        text-decoration: none;
        margin-top: 10px;
        display: inline-block;
    }

    .blog-content a:hover {
        color: #ff9800;
    }

    h2.text-center {
        text-align: center;
        font-size: 24px;
        margin-bottom: 20px;
        padding-top: 20px;
    }
</style>

<div id="primary" class="content-area">
    <?php
    /**
     * Before Posts hook
     */
    do_action('jobscout_before_posts_content');
    ?>

    <main id="main" class="site-main">
        <h2 class="text-center">NEWEST BLOG ENTRIES</h2>
        <div class="blog-container">
            <div class="row">
                <?php
                $args = array(
                    'posts_per_page' => 8,
                );
                $query = new WP_Query($args);
                if ($query->have_posts()) :
                    while ($query->have_posts()) : $query->the_post(); ?>
                        <div class="col">
                            <div class="square-image">
                                <?php if (has_post_thumbnail()) : ?>
                                    <?php the_post_thumbnail('thumbnail'); ?>
                                <?php endif; ?>
                            </div>
                            <div class="blog-content">
                                <h5>
                                    <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
                                </h5>
                                <p>
                                    <?php echo wp_trim_words(get_the_excerpt(), 15); ?>
                                </p>
                                <a href="<?php the_permalink(); ?>">Read More</a>
                            </div>
                        </div>
                <?php endwhile;
                    wp_reset_postdata();
                else :
                    get_template_part('template-parts/content', 'none');
                endif; ?>
            </div>
        </div>
    </main>

    <?php
    /**
     * After Posts hook
     * @hooked jobscout_navigation - 15
     */
    do_action('jobscout_after_posts_content');
    ?>

</div><!-- #primary -->

<?php
get_sidebar();
get_footer();
