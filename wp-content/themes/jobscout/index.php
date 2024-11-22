<?php
/**
 * The main template file
 *
 * @package JobScout
 */

get_header(); ?>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<style>
    body {
        background-color: ;
    }

    .blog-container {
        max-width: 1200px !important;
        margin: 0 auto !important;
    }

    .square-image img {
        width: 150px;
        height: 150px;
        object-fit: cover;
    }

    .custom-margin-right {
        max-width: 380px;
        margin-left: 1px !important;
    }

    .blog-content {
        display: flex;
        flex-direction: column;
        justify-content: center;
    }

    .ds-a {
        color: black;
        text-decoration: none;
        font-size: 17px;
        font-weight: bold;
    }

    .ds-a:hover {
        color: #2ace5e;
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
        <div class="container">
            <div class="row">
                <?php
                $args = array(
                    'posts_per_page' => 8,
                );
                $query = new WP_Query($args);
                if ($query->have_posts()):
                    while ($query->have_posts()):
                        $query->the_post(); ?>
                        <div class="col-lg-6 col-md-12 mx-auto custom-margin-right mt-5" style="background-color: white;">
                            <div class="row align-items-center p-3">
                                <div class="square-image col-sm-6 col-md-6 col-lg-6 p-0">
                                    <?php if (has_post_thumbnail()): ?>
                                        <?php the_post_thumbnail('thumbnail'); ?>
                                    <?php endif; ?>
                                </div>
                                <div class="blog-content col-sm-8 col-md-7 col-lg-6">
                                    <h5>
                                        <a class="ds-a" href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
                                    </h5>
                                    <p class="mb-1" style="font-size: 12px; overflow: hidden; max-height: 100px;">
                                        <?php echo wp_trim_words(get_the_excerpt(), 15); ?>
                                    </p>
                                    <a href="<?php the_permalink(); ?>" class="text-decoration-none text-warning fw-bold"
                                        style="font-size: 13px;">Read More</a>
                                </div>
                            </div>
                        </div>
                    <?php endwhile;
                    wp_reset_postdata();
                else:
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