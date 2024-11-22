<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<style>
    body {
        background-color: #f2f2f2;
    }

    .square-image img {
        width: 200px;
        height: 200px;
        object-fit: cover;
    }

    .custom-margin-right {
        margin-right: 15px !important;
    }

    .ds-a {
        text-decoration: none;
        color: black;
    }
</style>

<?php
/**
 * Blog Section
 *
 * @package JobScout
 */

$blog_heading = get_theme_mod('blog_section_title', __('Latest Articles', 'jobscout'));
$sub_title = get_theme_mod('blog_section_subtitle', __('We will help you find it. We are your first step to becoming everything you want to be.', 'jobscout'));
$blog = get_option('page_for_posts');
$label = get_theme_mod('blog_view_all', __('See More Posts', 'jobscout'));
$hide_author = get_theme_mod('ed_post_author', false);
$hide_date = get_theme_mod('ed_post_date', false);
$ed_blog = get_theme_mod('ed_blog', true);

// Truy vấn bài viết
$args = array(
    'post_type' => 'post',
    'posts_per_page' => 6,
);
$qry = new WP_Query($args);

if ($ed_blog && ($blog_heading || $sub_title || $qry->have_posts())): ?>
    <h2 class="text-center mt-5">NEWEST BLOG ENTRIES</h2>
    <div class="container">
        <div class="row">
            <?php
            if ($qry->have_posts()):
                while ($qry->have_posts()):
                    $qry->the_post(); ?>
                    <div class="col-lg-5 col-md-12 mx-auto custom-margin-right mt-5" style="background-color: white;">
                        <div class="row align-items-center p-3">
                            <div class="square-image col-sm-5 col-md-4 col-lg-5 p-0">
                                <?php if (has_post_thumbnail()): ?>
                                    <?php the_post_thumbnail('thumbnail'); ?>
                                <?php endif; ?>
                            </div>
                            <div class="col-sm-7 col-md-8 col-lg-7">
                                <h5>
                                    <a class="ds-a" href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
                                </h5>
                                <p class="mb-1" style="font-size: 14px; overflow: hidden; max-height: 100px;">
                                    <?php echo wp_trim_words(get_the_excerpt(), 15, '.'); ?>
                                </p>
                                <a href="<?php the_permalink(); ?>" class="text-decoration-none text-warning fw-bold"
                                    style="font-size: 13px;">Read More</a>
                            </div>
                        </div>
                    </div>
                <?php endwhile;
                wp_reset_postdata();
            endif;
            ?>
        </div>
    </div>
<?php endif; ?>