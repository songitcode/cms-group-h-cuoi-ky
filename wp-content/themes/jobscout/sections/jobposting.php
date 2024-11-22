<style>
    body {
        background: #F2F2F2;
    }

    .box-job-category {
        display: flex;
        align-items: center;
        border: 1px solid #ddd;
        border-radius: 8px;
        width: fit-content;
        background: #F2F2F2;
        gap: 10px;
        justify-content: center;
    }

    .box-job-category span,
    .box-job-category p {
        font-size: 12px;
        font-weight: bold;
        padding: 3px 0;
        margin: 0;
        display: flex;
        align-items: center;
    }

    .box-job-category span::after,
    .box-job-category p::after {
        content: '|';
        margin-left: 10px;
        color: #aaa;
    }

    .box-job-category p:last-child::after,
    .box-job-category span:last-child::after {
        content: '';
    }

    .job-title {
        text-transform: uppercase;
    }

    .job-image img {
        height: 170px;
        width: 170px;
        border: 1px solid #000;
        object-fit: cover;
    }

    .job-meta {
        font-size: 14px;
    }

    .job-description {
        padding-top: 15px;
    }

    .job-description p::before {
        content: '• ';
        font-size: 17px;
        font-weight: bold;
    }

    .job-description p {
        margin: 0;
    }

    .btn-view-more button:hover {
        background: #EC904C;
        color: #fff;
    }

    .btn-view-more button {
        border: 1px solid #EC904C;
        background: none;
        color: #EC904C;
    }

    .btn-view-more {
        display: flex;
        justify-content: center;
        margin-top: 20px !important;
    }

    .top-job-section {
        box-sizing: border-box;
    }

    .job-content {
        padding: 20px 0;
    }

    .card-posting {
        min-height: 350px;
        margin-top: 20px;
        background: #fff;
    }

    .section-title {
        font-size: 34px;
        font-weight: 500;
    }
</style>
<?php
/**
 * Job Posting Section
 * 
 * @package JobScout
 */

$job_title = get_theme_mod('job_posting_section_title', __('TOP JOBS', 'jobscout'));
$ed_jobposting = get_theme_mod('ed_jobposting', true);

if ($ed_jobposting && jobscout_is_wp_job_manager_activated() && $job_title) {
    ?>
    <section id="job-posting-section" class="top-job-section">
        <div class="container">
            <?php
            $job_title = get_theme_mod('job_posting_section_title', __('TOP JOBS', 'jobscout'));
            $ed_jobposting = get_theme_mod('ed_jobposting', true);

            if ($ed_jobposting && jobscout_is_wp_job_manager_activated() && $job_title) {
                if ($job_title) {
                    echo '<h2 class="section-title">' . esc_html($job_title) . '</h2>';
                }

                $args = array(
                    'post_type' => 'job_listing',
                    'posts_per_page' => 6,
                    'post_status' => 'publish', // Lấy bài đăng đã xuất bản
                    'paged' => 1,
                );
                $all_jobs = new WP_Query($args);

                if ($all_jobs->have_posts()) { ?>
                    <div class="row" id="job-list-container">
                        <?php while ($all_jobs->have_posts()) {
                            $all_jobs->the_post();
                            ?>
                            <div class="col-md-6">
                                <div class="card-posting border p-4">
                                    <div class="row">
                                        <div class="col-md-4 job-image">
                                            <?php if (has_post_thumbnail()) { ?>
                                                <img src="<?php the_post_thumbnail_url(); ?>" alt="<?php the_title(); ?>">
                                            <?php } else { ?>
                                                <img src="https://via.placeholder.com/150" alt="<?php the_title(); ?>">
                                            <?php } ?>
                                        </div>
                                        <div class="col job-content">
                                            <h3 class="job-title"><?php the_title(); ?></h3>
                                            <p class="job-meta mb-1">Created: <?php the_time('F j, Y'); ?></p>
                                            <div class="job-category">
                                                <div class="box-job-category btn-group">
                                                    <span class="ms-2">
                                                        <?php if (get_option('job_manager_enable_types')) {
                                                            $types = wpjm_get_the_job_types();
                                                            if (!empty($types)):
                                                                foreach ($types as $jobtype): ?>
                                                                    <span class="job-type <?php echo esc_attr(sanitize_title($jobtype->slug)); ?>">
                                                                        <?php echo esc_html($jobtype->name); ?>
                                                                    </span>
                                                                <?php endforeach; endif;
                                                        } ?>
                                                    </span>
                                                    <p>
                                                        <?php
                                                        $terms = get_the_terms(get_the_ID(), 'job_listing_category');
                                                        if (!empty($terms) && !is_wp_error($terms)) {
                                                            echo esc_html($terms[0]->name);
                                                        } else {
                                                            echo 'N/A';
                                                        }
                                                        ?>
                                                    </p>
                                                    <p>
                                                        <?php echo esc_html(get_post_meta(get_the_ID(), '_job_location', true)); ?>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="job-description m-0">
                                        <p>
                                            <?php echo wp_trim_words(get_the_content(), 20, '...'); ?>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>
                    </div>

                    <!-- Nút Load More -->
                    <div class="btn-view-more">
                        <button id="load-more" data-page="1" data-url="<?php echo admin_url('admin-ajax.php'); ?>">Load
                            More</button>
                    </div>
                <?php } else { ?>
                    <p>No jobs found.</p>
                <?php }
                wp_reset_postdata();
            }
            ?>
        </div>
    </section>

    <?php
}
?>

<script>
    jQuery(document).ready(function ($) {
        var page = 1; // Khởi tạo trang đầu tiên
        var loading = false; // Biến để kiểm tra có đang tải không

        $('#load-more-jobs').on('click', function () {
            if (loading) return; // Nếu đang tải thì không thực hiện yêu cầu mới

            loading = true;
            page++; // Tăng số trang lên

            // Gửi yêu cầu Ajax
            $.ajax({
                url: '<?php echo admin_url('admin-ajax.php'); ?>',
                type: 'GET',
                data: {
                    action: 'load_more_jobs',
                    page: page,
                },
                success: function (response) {
                    if (response) {
                        // Thêm các bài đăng vào container
                        $('.job-listing-container').append(response);
                        loading = false; // Đặt lại trạng thái tải về false
                    } else {
                        // Nếu không có bài đăng nào, ẩn nút "Load More"
                        $('#load-more-jobs').hide();
                    }
                }
            });
        });
    });
</script>